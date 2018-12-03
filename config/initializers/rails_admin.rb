RailsAdmin.config do |config|

  config.parent_controller = 'ApplicationController'
  config.current_user_method { current_user }
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  config.show_gravatar = false
  
  config.included_models = [ User, Review, Comment, Product, Maker]
  config.model 'ProductReview' do
    visible false
  end
  
  config.model User do
    list do
      field :name do
        column_width 50
      end
      field :email do
        column_width 100
      end
      field :avatar do
        column_width 100
      end
      field :reviews do
        column_width 100
      end
      field :comments do
        column_width 100
      end
    end
  end
  
  config.model Review do
    list do
      field :title do
        column_width 100
      end
      field :user do
        column_width 100
      end
      field :cmt_count do
        column_width 20
      end
      field :products do
        column_width 100
      end
      field :banner do
        column_width 100
      end
    end
  end
  
  config.model Product do
    list do
      field :name do
        column_width 50
      end
      field :price do
        column_width 50
      end
      field :category do
        column_width 50
      end
      field :maker do
        column_width 50
      end
      field :state do
        column_width 20
      end
      field :image do
        column_width 100
      end
      field :reviews do
        column_width 100
      end
    end
  end
  
  config.model Maker do
    list do
      field :name do
        column_width 100
      end
      field :products do
        column_width 100
      end
    end
  end
    
  config.model Comment do
    list do
      field :user do
        column_width 100
      end
      field :content do
        column_width 100
      end
      field :star do
        column_width 20
      end
      field :review do
        column_width 100
      end
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit do
      except ['Review', 'Comment']
    end
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
