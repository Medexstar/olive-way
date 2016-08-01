ActiveAdmin::register OrderObject do
  index do
    selectable_column
    id_column
    column :user
    column :order
    column :jacket_lapels
    column :jacket_vents
    column :jacket_buttons
    column :status
    column 'Neck' do |oo|
      oo.measurement.neck unless oo.measurement.nil?
    end
    column 'Shoulder' do |oo|
      oo.measurement.shoulder unless oo.measurement.nil?
    end
    column 'Chest' do |oo|
      oo.measurement.chest unless oo.measurement.nil?
    end
    column 'Sleeve Length' do |oo|
      oo.measurement.sleeve_length unless oo.measurement.nil?
    end
    column 'Bicep' do |oo|
      oo.measurement.bicep unless oo.measurement.nil?
    end
    column 'Wrist' do |oo|
      oo.measurement.wrist unless oo.measurement.nil?
    end
    column 'Bust' do |oo|
      oo.measurement.bust unless oo.measurement.nil?
    end
    column 'Underbust' do |oo|
      oo.measurement.underbust unless oo.measurement.nil?
    end
    column 'Back Length' do |oo|
      oo.measurement.back_length unless oo.measurement.nil?
    end
    column 'Waist' do |oo|
      oo.measurement.waist unless oo.measurement.nil?
    end
    column 'Hips' do |oo|
      oo.measurement.hips unless oo.measurement.nil?
    end
    column 'Thigh' do |oo|
      oo.measurement.thigh unless oo.measurement.nil?
    end
    column 'Rise' do |oo|
      oo.measurement.rise unless oo.measurement.nil?
    end
    column 'Out Leg' do |oo|
      oo.measurement.outleg unless oo.measurement.nil?
    end
    column 'In Leg' do |oo|
      oo.measurement.inleg unless oo.measurement.nil?
    end
    column 'Ankle' do |oo|
      oo.measurement.ankle unless oo.measurement.nil?
    end
  end
end
