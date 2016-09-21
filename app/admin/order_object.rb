ActiveAdmin::register OrderObject do
  index do
    selectable_column
    id_column
    column :user
    column :order
    column 'Promotion Code' do |oo|
      oo.ambassador.promotion_code unless oo.ambassador.nil?
    end
    column :price
    column :suit
    column :accessory
    column :jacket_lapels
    column :jacket_vents
    column :jacket_buttons
    column :status
    column 'Neck' do |oo|
      oo.measurement.neck*100 unless oo.measurement.nil?
    end
    column 'Shoulder' do |oo|
      oo.measurement.shoulder*100 unless oo.measurement.nil?
    end
    column 'Chest' do |oo|
      oo.measurement.chest*100 unless oo.measurement.nil?
    end
    column 'Sleeve Length' do |oo|
      oo.measurement.sleeve_length*100 unless oo.measurement.nil?
    end
    column 'Bicep' do |oo|
      oo.measurement.bicep*100 unless oo.measurement.nil?
    end
    column 'Wrist' do |oo|
      oo.measurement.wrist*100 unless oo.measurement.nil?
    end
    column 'Bust' do |oo|
      oo.measurement.bust*100 unless oo.measurement.nil?
    end
    column 'Underbust' do |oo|
      oo.measurement.underbust*100 unless oo.measurement.nil?
    end
    column 'Back Length' do |oo|
      oo.measurement.back_length*100 unless oo.measurement.nil?
    end
    column 'Waist' do |oo|
      oo.measurement.waist*100 unless oo.measurement.nil?
    end
    column 'Hips' do |oo|
      oo.measurement.hips*100 unless oo.measurement.nil?
    end
    column 'Thigh' do |oo|
      oo.measurement.thigh*100 unless oo.measurement.nil?
    end
    column 'Rise' do |oo|
      oo.measurement.rise*100 unless oo.measurement.nil?
    end
    column 'Out Leg' do |oo|
      oo.measurement.outleg*100 unless oo.measurement.nil?
    end
    column 'In Leg' do |oo|
      oo.measurement.inleg*100 unless oo.measurement.nil?
    end
    column 'Ankle' do |oo|
      oo.measurement.ankle*100 unless oo.measurement.nil?
    end
  end
end
