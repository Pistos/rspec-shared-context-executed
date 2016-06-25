describe 'rspec', type: :feature do
  it 'does not execute the shared_context without feature' do
    expect($shared_context_without_feature_executed).to be_falsy
  end

  it 'does not execute the shared_context with feature' do
    expect($shared_context_with_feature_executed).to be_falsy
  end
end
