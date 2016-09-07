require 'coursegen'

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2016) R. Pito Salas, pitosalas@brandeis.edu"

# Bucket Deployment of the course
AWS_BUCKET = "cosi165a-f2016"

# Course short name
COURSE_SHORT_NAME = "Cosi 165a Fall 2016"
COURSE_LONG_NAME = "Software Entrepreneurship"
COURSE_ABBREV = "cs165"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "aug-25-2016",
  weekdays: [:tuesday, :thursday],
  number: 27,
  skips: ["sep-8-2016"],
  start_time: "15:30",
  end_time: "16:50")

# Sections in the right hand margin of the page
SECTION_CONFIG = [
  SectionDef.new("Welcome", "welcome", type: :section, collapsed: false, bullet: :star),
  SectionDef.new("Lectures", "lectures",
                 type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Background", "background", type: :section, collapsed: false),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: %("font-size: 60%; width: 10px; color: grey")}
