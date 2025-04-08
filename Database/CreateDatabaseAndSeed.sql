CREATE database podcasts
GO
    USE podcasts
GO
    CREATE TABLE Podcasts (
        Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
        Title NVARCHAR(MAX) NOT NULL,
    )
GO
Insert into
    Podcasts (Title)
VALUES
    ('The Daily Show with Trevor Noah: Ears Edition'),
    ('The Joe Rogan Experience'),
    ('The Dave Ramsey Show'),
    ('The Daily Stoic'),
    ('The Happiness Lab with Dr. Laurie Santos'),
    ('The Tony Robbins Podcast'),
    ('The Mindset Mentor'),
    ('The Tim Ferriss Show'),
    ('Unlocking Us with Brené Brown'),
    ('The Art of Charm'),
    ('The School of Greatness with Lewis Howes'),
    ('The Rich Roll Podcast'),
    ('The Minimalists Podcast'),
    ('The GaryVee Audio Experience'),
    (
        'The Life Coach School Podcast with Brooke Castillo'
    ),
    (
        'Optimal Living Daily: Personal Development & Minimalism'
    ),
    ('Craig Groeschel Leadership Podcast'),
    ('Craig Groeschel Leadership Podcast'),
    ('The Ed Mylett Show'),
    (
        'The Chalene Show | Diet, Fitness & Life Balance'
    ),
    ('The Daily'),
    ('Stuff You Should Know'),
    ('The Ben Shapiro Show'),
    ('The Michelle Obama Podcast'),
    ('The Bill Simmons Podcast'),
    ('Armchair Expert with Dax Shepard'),
    ('The Moth')
GO