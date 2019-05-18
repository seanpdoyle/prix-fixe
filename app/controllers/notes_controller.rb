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
      render(:new, status: :unprocessable_entity, locals: { note: note })
    end
  end

  def new
    note = Note.new

    render(locals: {
      note: note,
    })
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
