class NotesController < ApplicationController
  def index
    notes = Note.all

    render(locals: {
      notes: notes,
    })
  end

  def create
    note = Note.create!(params.to_unsafe_h.slice(:content))

    redirect_to notes_url
  end
end
