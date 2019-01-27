# Regarding turnaround time... in a perfect world without a need for secondary review
def web_edit(web_requested_assigned, web_requested_completed)   # Takes two numbers, adds them, and confirms if the edit was completed within SLA or not.
  turnaround_time = (web_requested_assigned + web_requested_completed)
  if turnaround_time >= 48
    p "SLA failure"
  else
    p "SLA success"
  end
end

# web_edit(5, 2)


# Regarding web edits done with a review, after the initial email is sent to the client
def web_edit_with_review(web_requested_assigned, web_requested_completed, web_edit_review, web_edit_update, client_review)
  turnaround_time = (web_requested_assigned + web_requested_completed)
  if turnaround_time >= 48 ||  turnaround_time + (web_edit_review + web_edit_update)  >= (turnaround_time + client_review)
    p "SLA failure" # This is a failure because either we don't finish the edit on time, or we finish with an error the client sees.
  else
    p "SLA success"
  end
end

# web_edit_with_review(2, 3, 5, 7, 2)

# If we process review as a piece of turnaround time

def web_edit_with_planned_review(web_requested_assigned, web_requested_completed, web_edit_review, web_edit_update)
  turnaround_time = (web_requested_assigned + web_requested_completed + web_edit_review + web_edit_update)
  if turnaround_time >= 48 # No longer need to worry about the condition of clients seeing incorrect edits
    p "failure"
  else
    p "success"
  end
end
