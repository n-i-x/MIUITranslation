.class public Lentagged/audioformats/AudioFileIO;
.super Ljava/lang/Object;


# static fields
.field private static defaultInstance:Lentagged/audioformats/AudioFileIO;


# instance fields
.field private final modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

.field private readers:Ljava/util/Hashtable;

.field private writers:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    new-instance v0, Lentagged/audioformats/generic/ModificationHandler;

    invoke-direct {v0}, Lentagged/audioformats/generic/ModificationHandler;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFileIO;->modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

    invoke-direct {p0}, Lentagged/audioformats/AudioFileIO;->prepareReadersAndWriters()V

    return-void
.end method

.method public static delete(Lentagged/audioformats/AudioFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {}, Lentagged/audioformats/AudioFileIO;->getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lentagged/audioformats/AudioFileIO;->deleteTag(Lentagged/audioformats/AudioFile;)V

    return-void
.end method

.method public static getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;
    .locals 1

    sget-object v0, Lentagged/audioformats/AudioFileIO;->defaultInstance:Lentagged/audioformats/AudioFileIO;

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/AudioFileIO;

    invoke-direct {v0}, Lentagged/audioformats/AudioFileIO;-><init>()V

    sput-object v0, Lentagged/audioformats/AudioFileIO;->defaultInstance:Lentagged/audioformats/AudioFileIO;

    :cond_0
    sget-object v0, Lentagged/audioformats/AudioFileIO;->defaultInstance:Lentagged/audioformats/AudioFileIO;

    return-object v0
.end method

.method private prepareReadersAndWriters()V
    .locals 8

    const-string v7, "mp3"

    const-string v6, "mp+"

    const-string v5, "flac"

    const-string v4, "ape"

    const-string v3, "mpc"

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "mp3"

    new-instance v1, Lentagged/audioformats/mp3/Mp3FileReader;

    invoke-direct {v1}, Lentagged/audioformats/mp3/Mp3FileReader;-><init>()V

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "ogg"

    new-instance v2, Lentagged/audioformats/ogg/OggFileReader;

    invoke-direct {v2}, Lentagged/audioformats/ogg/OggFileReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "flac"

    new-instance v1, Lentagged/audioformats/flac/FlacFileReader;

    invoke-direct {v1}, Lentagged/audioformats/flac/FlacFileReader;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "wav"

    new-instance v2, Lentagged/audioformats/wav/WavFileReader;

    invoke-direct {v2}, Lentagged/audioformats/wav/WavFileReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "mpc"

    new-instance v1, Lentagged/audioformats/mpc/MpcFileReader;

    invoke-direct {v1}, Lentagged/audioformats/mpc/MpcFileReader;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "mp+"

    iget-object v1, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v2, "mpc"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "ape"

    new-instance v1, Lentagged/audioformats/ape/MonkeyFileReader;

    invoke-direct {v1}, Lentagged/audioformats/ape/MonkeyFileReader;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v1, "wma"

    new-instance v2, Lentagged/audioformats/asf/AsfFileReader;

    invoke-direct {v2}, Lentagged/audioformats/asf/AsfFileReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "mp3"

    new-instance v1, Lentagged/audioformats/mp3/Mp3FileWriter;

    invoke-direct {v1}, Lentagged/audioformats/mp3/Mp3FileWriter;-><init>()V

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "ogg"

    new-instance v2, Lentagged/audioformats/ogg/OggFileWriter;

    invoke-direct {v2}, Lentagged/audioformats/ogg/OggFileWriter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "flac"

    new-instance v1, Lentagged/audioformats/flac/FlacFileWriter;

    invoke-direct {v1}, Lentagged/audioformats/flac/FlacFileWriter;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "wav"

    new-instance v2, Lentagged/audioformats/wav/WavFileWriter;

    invoke-direct {v2}, Lentagged/audioformats/wav/WavFileWriter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "mpc"

    new-instance v1, Lentagged/audioformats/mpc/MpcFileWriter;

    invoke-direct {v1}, Lentagged/audioformats/mpc/MpcFileWriter;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "mp+"

    iget-object v1, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v2, "mpc"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "ape"

    new-instance v1, Lentagged/audioformats/ape/MonkeyFileWriter;

    invoke-direct {v1}, Lentagged/audioformats/ape/MonkeyFileWriter;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v1, "wma"

    new-instance v2, Lentagged/audioformats/asf/AsfFileWriter;

    invoke-direct {v2}, Lentagged/audioformats/asf/AsfFileWriter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileWriter;

    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

    invoke-virtual {v0, v2}, Lentagged/audioformats/generic/AudioFileWriter;->setAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static read(Ljava/io/File;)Lentagged/audioformats/AudioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    invoke-static {}, Lentagged/audioformats/AudioFileIO;->getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lentagged/audioformats/AudioFileIO;->readFile(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lentagged/audioformats/AudioFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {}, Lentagged/audioformats/AudioFileIO;->getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lentagged/audioformats/AudioFileIO;->writeFile(Lentagged/audioformats/AudioFile;)V

    return-void
.end method


# virtual methods
.method public addAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

    invoke-virtual {v0, p1}, Lentagged/audioformats/generic/ModificationHandler;->addAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V

    return-void
.end method

.method public deleteTag(Lentagged/audioformats/AudioFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v1, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No Deleter associated to this extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p0, Lentagged/audioformats/generic/AudioFileWriter;

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AudioFileWriter;->delete(Lentagged/audioformats/AudioFile;)V

    return-void
.end method

.method public readFile(Ljava/io/File;)Lentagged/audioformats/AudioFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v1, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No Reader associated to this extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p0, Lentagged/audioformats/generic/AudioFileReader;

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AudioFileReader;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public removeAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/AudioFileIO;->modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

    invoke-virtual {v0, p1}, Lentagged/audioformats/generic/ModificationHandler;->removeAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V

    return-void
.end method

.method public writeFile(Lentagged/audioformats/AudioFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-static {p1}, Lentagged/audioformats/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v1, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No Writer associated to this extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p0, Lentagged/audioformats/generic/AudioFileWriter;

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AudioFileWriter;->write(Lentagged/audioformats/AudioFile;)V

    return-void
.end method
