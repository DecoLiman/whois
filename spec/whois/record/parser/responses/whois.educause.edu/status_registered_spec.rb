# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.educause.edu/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.educause.edu.rb'

describe Whois::Record::Parser::WhoisEducauseEdu, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.educause.edu/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "\nThis Registry database contains ONLY .EDU domains. \nThe data in the EDUCAUSE Whois database is provided \nby EDUCAUSE for information purposes in order to \nassist in the process of obtaining information about \nor related to .edu domain registration records. \n\nThe EDUCAUSE Whois database is authoritative for the \n.EDU domain.         \n\nA Web interface for the .EDU EDUCAUSE Whois Server is \navailable at: http://whois.educause.net \n\nBy submitting a Whois query, you agree that this information \nwill not be used to allow, enable, or otherwise support \nthe transmission of unsolicited commercial advertising or \nsolicitations via e-mail.  The use of electronic processes to \nharvest information from this server is generally prohibited \nexcept as reasonably necessary to register or modify .edu \ndomain names.\n\nYou may use \"%\" as a wildcard in your search. For further \ninformation regarding the use of this WHOIS server, please \ntype: help \n"
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "educause.edu"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("1998-03-11")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2009-10-02")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2010-07-31")
    end
  end
  describe "#registrar" do
    it do
      lambda { @parser.registrar }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == nil
      @parser.registrant_contacts[0].name.should          == nil
      @parser.registrant_contacts[0].organization.should  == "EDUCAUSE"
      @parser.registrant_contacts[0].address.should       == "4772 Walnut Street\nSuite 206"
      @parser.registrant_contacts[0].city.should          == "Boulder"
      @parser.registrant_contacts[0].zip.should           == "80301"
      @parser.registrant_contacts[0].state.should         == "CO"
      @parser.registrant_contacts[0].country.should       == "UNITED STATES"
      @parser.registrant_contacts[0].country_code.should  == nil
      @parser.registrant_contacts[0].phone.should         == nil
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == nil
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == nil
      @parser.admin_contacts[0].name.should          == "Information Technology\nEDUCAUSE"
      @parser.admin_contacts[0].organization.should  == nil
      @parser.admin_contacts[0].address.should       == "4772 Walnut Street\nSte 206"
      @parser.admin_contacts[0].city.should          == "Boulder"
      @parser.admin_contacts[0].zip.should           == "80301"
      @parser.admin_contacts[0].state.should         == "CO"
      @parser.admin_contacts[0].country.should       == "UNITED STATES"
      @parser.admin_contacts[0].country_code.should  == nil
      @parser.admin_contacts[0].phone.should         == "(303) 449-4430"
      @parser.admin_contacts[0].fax.should           == nil
      @parser.admin_contacts[0].email.should         == "netadmin@educause.edu"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == nil
      @parser.technical_contacts[0].name.should          == "Information Technology\nEDUCAUSE"
      @parser.technical_contacts[0].organization.should  == nil
      @parser.technical_contacts[0].address.should       == "4772 Walnut Street\nSte 206"
      @parser.technical_contacts[0].city.should          == "Boulder"
      @parser.technical_contacts[0].zip.should           == "80301"
      @parser.technical_contacts[0].state.should         == "CO"
      @parser.technical_contacts[0].country.should       == "UNITED STATES"
      @parser.technical_contacts[0].country_code.should  == nil
      @parser.technical_contacts[0].phone.should         == "(303) 449-4430"
      @parser.technical_contacts[0].fax.should           == nil
      @parser.technical_contacts[0].email.should         == "netadmin@educause.edu"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns3.educause.edu"
      @parser.nameservers[0].ipv4.should == "198.59.61.50"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns4.educause.edu"
      @parser.nameservers[1].ipv4.should == "192.52.179.69"
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "ns5.educause.edu"
      @parser.nameservers[2].ipv4.should == "198.59.61.50"
    end
  end
end
