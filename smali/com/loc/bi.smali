.class public Lcom/loc/bi;
.super Ljava/lang/Object;
.source "BinaryRandomAccessFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bi$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/ByteArrayInputStream;

.field private b:J

.field private c:Z

.field private d:Ljava/io/RandomAccessFile;

.field private e:Z

.field private final f:[B

.field private g:Lcom/loc/bi$a;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/loc/bi$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/loc/bi;->c:Z

    .line 28
    iput-object v1, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    .line 30
    iput-boolean v2, p0, Lcom/loc/bi;->e:Z

    const/16 v0, 0x8

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/bi;->f:[B

    .line 35
    iput-object v1, p0, Lcom/loc/bi;->h:Ljava/lang/String;

    .line 47
    if-nez p2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-boolean v0, p2, Lcom/loc/bi$a;->a:Z

    if-eq v0, v3, :cond_1

    .line 56
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    .line 57
    iput-boolean v3, p0, Lcom/loc/bi;->c:Z

    .line 60
    :goto_1
    iput-object p2, p0, Lcom/loc/bi;->g:Lcom/loc/bi$a;

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p1}, Lcom/loc/bw;->a(Ljava/io/File;)[B

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    .line 52
    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/loc/bi;->b:J

    .line 53
    iput-boolean v2, p0, Lcom/loc/bi;->c:Z

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bi;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method private h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/loc/bi;->e:Z

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "file closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 100
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/loc/bi;->h()V

    .line 106
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 110
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/loc/bi;->g:Lcom/loc/bi$a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/loc/bi;->g:Lcom/loc/bi$a;

    iget-boolean v0, v0, Lcom/loc/bi$a;->a:Z

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    .line 87
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bi;->e:Z

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/loc/bi;->h()V

    .line 118
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/bi;->f:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 122
    iget-object v0, p0, Lcom/loc/bi;->f:[B

    invoke-static {v0}, Lcom/loc/bw;->b([B)J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-direct {p0}, Lcom/loc/bi;->h()V

    .line 129
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/bi;->f:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 133
    iget-object v0, p0, Lcom/loc/bi;->f:[B

    invoke-static {v0}, Lcom/loc/bw;->c([B)I

    move-result v0

    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Lcom/loc/bi;->h()V

    .line 140
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/loc/bi;->f:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 144
    iget-object v0, p0, Lcom/loc/bi;->f:[B

    invoke-static {v0}, Lcom/loc/bw;->d([B)I

    move-result v0

    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/loc/bi;->h()V

    .line 151
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/loc/bi;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/loc/bi;->b()V

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    return-void
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/loc/bi;->e:Z

    if-nez v0, :cond_0

    .line 163
    iget-boolean v0, p0, Lcom/loc/bi;->c:Z

    if-nez v0, :cond_1

    .line 166
    iget-wide v0, p0, Lcom/loc/bi;->b:J

    return-wide v0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "file closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/loc/bi;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method
