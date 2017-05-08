defmodule Notify.Notification do
  @moduledoc false

  def send(name, urgency, time, icon, message) do
    System.cmd(notify(), ["--app-name=Notify_ex",
                          "--icon=#{get_icon(icon)}",
                          name,
                          "--expire-time=#{time}",
                          "--urgency=#{urgency}",
                          message])
  end

  defp notify do
    System.find_executable("notify-send")
  end

  defp get_icon(status) do
    case status do
      "" ->
        Application.app_dir(:notify, "priv/bell.png")
      _ ->
        Application.app_dir(:notify, status)
    end
  end
end