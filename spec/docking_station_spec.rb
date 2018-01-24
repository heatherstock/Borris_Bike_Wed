require "docking_station"

describe DockingStation do
    #it { is_expected.to respond_to :release_bike } --> checks method exists
    it { expect(subject.release_bike.working?).to eq true }

    # it { is_expected.to respond_to(:dock_bike).with(1).argument }
    it "docks bike" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end

    #it { is_expected.to respond_to :check_for_bike }
    it "returns docked bikes" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
end


#
