# Regarding turnaround time... in a perfect world without a need for secondary review
def web_edit(web_requested_assigned, web_requested_completed)   # Takes two numbers, adds them, and confirms if the edit was completed within SLA or not.
  turnaround_time = (web_requested_assigned + web_requested_received)
  if turnaround_time >= 48
    puts "SLA failure"
  else
    puts "SLA success"
  end
end



#
# # Regarding web edits done with a review, after the initial email is sent to the client
#
# def web_edit_with_review(numB, numC, numD, numE, numF)
#
#   web_requested_received = 0 # What time we received the initial request
#   web_requested_assigned = numB # What time it was when the initial email is assigned to someone to edit
#   web_requested_completed = numC # What time (military time) it was when the edit was done
#   turnaround_time = (web_requested_completed - web_requested_received) # How long it took for us to respond from the initial email from the client.
#   if turnaround_time >= 48 # If the time to complete + email the client is greater than SLA
#     p "failure"
#   else # If the time to complete the edit + email the client is within SLA
#     p "success"
#   end
#   web_edit_review = numD # How long it took before someone reviewed the edit + email and followed up with the editor
#   web_edit_update = numE # How long it took before someone made the corrections to the web edit
#   client_confirm = numF # How long it took before the client saw + responded to our update email
#   if (web_edit_review - turnaround_time) + (web_edit_update - turnaround_time) >= (client_confirm - turnaround_time)
#     p "failure"
#   end
# end
#
# # --------------------
#
# # If we process review as a piece of turnaround time
#
# def web_edit_with_planned_review(numB, numD, numE)
#   web_requested_received = 0 # What time we received the initial request
#   web_requested_assigned = numB # What time it was when the initial email is assigned to someone to edit
#   web_requested_reviewed_and_edited = (numD - web_requested_assigned) + (numE - numD) # num D represents the review, num E represents the edits.
#   turnaround_time = (web_requested_reviewed_and_edited - web_requested_received) # How long it took for us to respond from the initial email from the client.
#
#   if turnaround_time >= 48 # If the time to complete + email the client is greater than SLA
#     p "failure"
#   else # If the time to complete the edit + email the client is within SLA
#     p "success"
#   end
# end
