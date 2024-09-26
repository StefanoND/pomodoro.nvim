local pomodoro
describe("useless tests", function()
    before_each(function()
        pomodoro = require("pomodoro")
    end)
    it("setup", function()
        local opts = {}
        local MIN_IN_MS = 60000
        opts.work_duration = 10
        opts.break_duration = 10
        opts.delay_duration = 10
        opts.long_break_duration = 15
        opts.breaks_before_long = 4
        opts.start_at_launch = false
        pomodoro.setup(opts)
        -- TODO: use the opts value directly
        assert(pomodoro.work_duration == 10 * MIN_IN_MS, "Opt work_duration")
        assert(pomodoro.break_duration == 10 * MIN_IN_MS, "Opt break_duration")
        assert(pomodoro.breaks_before_long == 4, "Opt breaks_before_long")
        assert(
            pomodoro.long_break_duration == 15 * MIN_IN_MS,
            "Opt long_break_duration"
        )
        assert(pomodoro.delay_duration == 10 * MIN_IN_MS, "Opt delay_duration")
        assert(pomodoro.start_at_launch == false, "Opt start_at_launch")
    end)
    --TODO: tests
end)
