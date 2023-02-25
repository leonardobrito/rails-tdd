# frozen_string_literal: true

describe 'stdout' do
  it { expect { puts('Leonardo') }.to output.to_stdout }
  it { expect { puts('Leonardo') }.to output(/Leonardo/).to_stdout }
  it { expect { puts('Leonardo') }.to output("Leonardo\n").to_stdout }
  it { expect { print('Leonardo') }.to output('Leonardo').to_stdout }

  it { expect { warn('Leonardo') }.to output.to_stderr }
  it { expect { warn('Leonardo') }.to output(/Leonardo/).to_stderr }
  it { expect { warn('Leonardo') }.to output("Leonardo\n").to_stderr }
end
