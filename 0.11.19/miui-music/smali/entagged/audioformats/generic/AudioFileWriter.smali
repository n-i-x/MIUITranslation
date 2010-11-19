.class public abstract Lentagged/audioformats/generic/AudioFileWriter;
.super Ljava/lang/Object;


# instance fields
.field private modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Lentagged/audioformats/AudioFile;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-string v0, "\" :"

    const-string v0, "\""

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t write to file \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Less than 150 byte \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "entagged"

    const-string v2, ".tmp"

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    const-wide/16 v4, 0x0

    :try_start_5
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v4, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V

    :cond_2
    invoke-virtual {p0, v3, v2}, Lentagged/audioformats/generic/AudioFileWriter;->deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    iget-object v4, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v4, p1, v1}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_b

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->delete()Z

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v0, v1

    :goto_0
    :try_start_8
    iget-object v1, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v1, v0}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    :try_start_9
    new-instance v5, Lentagged/audioformats/exceptions/CannotWriteException;

    invoke-direct {v5, v4}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_a
    new-instance v4, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v9

    :goto_2
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_a

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->delete()Z

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-object v1, v2

    :goto_3
    :try_start_c
    iget-object v2, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v2, v1}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    :cond_9
    throw v0

    :catch_2
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "AudioFileWriter:113:\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" or \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\" :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_4
    move-object v1, p1

    goto :goto_3

    :cond_a
    :try_start_d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_e
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "AudioFileWriter:113:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" or \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\" :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_5
    move-object v0, p1

    goto/16 :goto_0

    :cond_b
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    move-object v3, v5

    move-object v4, v5

    move-object v10, v1

    move v1, v0

    move-object v0, v2

    move-object v2, v10

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    move-object v4, v5

    move v10, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v10

    goto/16 :goto_2

    :catchall_5
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v2, v5

    move-object v3, v5

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v3, v5

    goto/16 :goto_1
.end method

.method public declared-synchronized delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p1, p2}, Lentagged/audioformats/generic/AudioFileWriter;->deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized setAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Lentagged/audioformats/AudioFile;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const-string v0, "\" :"

    const-string v0, "\""

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v0

    invoke-interface {v0}, Lentagged/audioformats/Tag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AudioFileWriter;->delete(Lentagged/audioformats/AudioFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t write to file \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    new-instance v0, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Less than 150 byte \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    const-string v0, "entagged"

    const-string v1, ".tmp"

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const-wide/16 v3, 0x0

    :try_start_6
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iget-object v3, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V

    :cond_4
    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lentagged/audioformats/generic/AudioFileWriter;->writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    iget-object v3, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v3, p1, v0}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    if-nez v5, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-lez v1, :cond_c

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->delete()Z

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_1
    :try_start_9
    iget-object v1, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v1, v0}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_a
    new-instance v4, Lentagged/audioformats/exceptions/CannotWriteException;

    invoke-direct {v4, v3}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    const/4 v4, 0x1

    :try_start_b
    new-instance v5, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    move v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v10

    :goto_3
    if-eqz v4, :cond_8

    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    if-nez v1, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v3, v8

    if-lez v1, :cond_b

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->delete()Z

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object v1, v2

    :goto_4
    :try_start_d
    iget-object v2, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v2, v1}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    :cond_a
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_b
    :try_start_e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :goto_5
    move-object v1, p1

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_f
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "AudioFileWriter:165:\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" or \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\" :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    :cond_c
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :goto_6
    move-object v0, p1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_11
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "AudioFileWriter:165:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" or \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\" :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    move v1, v5

    move-object v2, v4

    move-object v3, v4

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v3, v4

    move-object v0, v1

    move v1, v5

    goto/16 :goto_3

    :catchall_4
    move-exception v2

    move-object v3, v1

    move v1, v5

    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    goto/16 :goto_3

    :catchall_5
    move-exception v3

    move-object v4, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move v1, v5

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2

    :catch_6
    move-exception v2

    move-object v3, v4

    move-object v10, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_2
.end method

.method protected abstract writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
