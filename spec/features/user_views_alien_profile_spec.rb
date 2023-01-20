require 'rails_helper'

RSpec.feature 'USER views alien profile', type: :feature do
  let(:user) { create(:user, name: 'Василий', balance: 1000000) }
  let(:alien_user) { create(:user, name: 'Вадик') }

  let!(:games) do
    [create(
      :game,
      user: alien_user,
      created_at: Time.parse('2023.02.03, 12:00'),
      current_level: 55,
      prize: 15000),
    create(
      :game,
      user: alien_user,
      created_at: Time.parse('2022.01.01, 13:00'),
      finished_at: Time.parse('2022.01.01, 13:13'),
      is_failed: true,
      current_level: 0,
      prize: 0)]
  end

  before do
    visit '/'
    login_as user
    click_link 'Вадик'
  end

  scenario 'success' do
    expect(page).to have_current_path "/users/#{alien_user.id}"

    expect(page).to have_content 'Выйти'
    expect(page).not_to have_content 'Сменить имя и пароль'

    expect(page).to have_content 'Вадик'
    expect(page).to have_content 'Василий - 1 000 000 ₽'

    expect(page).to have_content '55'

    expect(page).to have_content 'в процессе'
    expect(page).to have_content 'проигрыш'

    expect(page).to have_content '01 янв., 13:00'
    expect(page).to have_content '03 февр., 12:00'

    expect(page).to have_content '15 000 ₽'

    # save_and_open_page
  end
end
