@all_contacts = ['frank', 'andrew'] 

def menu
	puts "--- Contact List Menu ---"
	puts "1) All Contacts"
	puts "2) Create Contact"
	puts "3) Delete Contact"
	puts "4) Edit Contact"
	puts "5) Find Contact"
end

def get_name
	puts "What is the contact name?"
	gets.chomp
end

def create
	new_contact = get_name
	@all_contacts << new_contact
	puts "Contact with Name: #{new_contact} Added."
end

def contacts
	puts @all_contacts
end

def delete
	contact_name = get_name
	@all_contacts.delete(contact_name)
	puts "Contact has been deleted"

end

def edit
	contact_name = get_name
	puts "What is the new contact name?"
	@all_contacts[@all_contacts.index(contact_name)] = gets.chomp
end

def find
	puts "Input the index number:"
	contact_number= gets.to_i
	puts @all_contacts[contact_number]
end

user_input = ''
while user_input != 0
	menu
	user_input = gets.to_i
case user_input
	when 1
	contacts
		
	when 2
	create

	when 3
	delete
	

	when 4
	edit

	when 5
	find 

	else
		puts "Quit"
	end
end
