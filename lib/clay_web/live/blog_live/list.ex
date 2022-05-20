defmodule ClayWeb.BlogLive.List do
  use ClayWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(page_title: "Ab heute bin ich alo")
    |> assign(:posts, get_posts())
    |> reply(:ok)
  end

  defp get_posts() do
    "claudia.csv"
    |> File.stream!()
    |> CSV.decode!(separator: ?;, headers: true)
    |> Enum.to_list()
    |> Enum.filter(&(&1["post_status"] === "publish"))
  end

  # defp get_comments() do
  #   INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
  #   (4, 52, 'anima', 'mustermann@web.de', 'http://matschimkopf', '87.188.95.106', '2010-05-19 20:47:32', '2010-05-19 20:47:32', 'deine artikel sind gut,warte mit spannung auf den nächsten,meiner meinung nach ist auch einer fällig.lass uns nicht so lange warten.wünsche dir viel glück.', 0, '1', '', '', 0, 0);
  # end
end
