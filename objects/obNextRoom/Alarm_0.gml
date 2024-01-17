flash_ = !flash_;
alarm_set(0, timers_[nextTimer_]);
nextTimer_ = (nextTimer_ + 1) % array_length(timers_);