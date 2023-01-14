class GroupUser < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validate :dry, on: :create

  def user_name
    user.try(:name)
  end

  def user_name=(name)
    self.user = User.find_by_firstname(name) if name.present?
  end

  def group_name
    group.try(:name)
  end

  def group_name=(name)
    self.group = Group.find_by_name(name) if name.present?
  end

  private


  def dry
    user = GroupUser.where(group_id: group_id).where(user_id: self.user.id)
    return errors.add(:base, 'This student already in this group') unless user.empty?
  end
end
