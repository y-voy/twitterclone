module FeelingsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name = 'create'
      confirm_feelings_path
    elsif action_name == 'edit'
      feeling_path
    end
  end
end
