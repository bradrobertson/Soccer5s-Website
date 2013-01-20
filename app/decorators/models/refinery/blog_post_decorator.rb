Refinery::Blog::Post.instance_eval do

  def latest
    recent(1).first
  end
end