class NotesController < ApplicationController
  def index
    notes = Note.all

    render(locals: {
      notes: notes,
    })
  end
end
