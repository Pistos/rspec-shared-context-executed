shared_context 'context with type: :feature', type: :feature do
  puts 'executing with feature'
  $shared_context_with_feature_executed = true
end
