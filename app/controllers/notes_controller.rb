class NotesController < ApplicationController
  def index
    notes = Note.all

    render(locals: {
      notes: notes,
    })
  end

  def create
    note = Note.new(note_params)

    if note.save
      redirect_to notes_url
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  private

  def note_params
    params.to_unsafe_h.slice(:content)
  end
end
