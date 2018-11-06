PgSearch.multisearch_options = {
  :using => {:tsearch => {
      :dictionary => 'simple',
      :prefix => true,
      :any_word => true
    }
  }
}
