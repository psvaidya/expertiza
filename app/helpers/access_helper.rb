module AccessHelper
  def authorize
    unless action_allowed?
      flash_msg
      redirect_back
    end
  end

  def flash_msg
    flash[:error] = 'Permission Denied'
  end

  def action_allowed?
    false #default action allowed is false. So to allow any action, we need to override this in the controller.
  end
end
