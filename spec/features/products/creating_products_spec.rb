require 'rails_helper'
feature 'Criando Produtos' do
  before do
    visit root_path
    click_link 'Produtos'
    click_link 'Novo Produto'
  end
  scenario "posso criar um produto" do
    fill_in 'Nome', with: 'Produto 1'
    fill_in 'Descrição', with: '123456789101112131415'
    click_button 'Salvar'
    expect(page).to have_content('Produto foi criado.')
  end
  scenario "com nome inválido não posso criar um produto" do
    fill_in 'Nome', with: ''
    fill_in 'Descrição', with: 'Produto com uma bela descrição de teste'
    click_button 'Salvar'
    expect(page).to have_content('Nome é muito curto (mínimo: 5 caracteres)')
  end
  scenario "com descrição inválida não posso criar um produto" do
    fill_in 'Nome', with: 'Meu produto'
    fill_in 'Descrição', with: ''
    click_button 'Salvar'
    expect(page).to have_content('Descrição é muito curto (mínimo: 15 caracteres)')
  end
end