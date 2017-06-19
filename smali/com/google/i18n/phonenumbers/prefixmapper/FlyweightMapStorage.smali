.class final Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;
.super Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "FlyweightMapStorage.java"


# instance fields
.field private descIndexSizeInBytes:I

.field private descriptionIndexes:Ljava/nio/ByteBuffer;

.field private descriptionPool:[Ljava/lang/String;

.field private phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private prefixSizeInBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method

.method private readEntries(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    .line 142
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_1

    .line 143
    :cond_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_3

    .line 146
    :cond_2
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    .line 148
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_4

    .line 149
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 150
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_4
    return-void
.end method

.method private static readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "objectInput"    # Ljava/io/ObjectInput;
    .param p1, "wordSize"    # I
    .param p2, "outputBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    mul-int v0, p3, p1

    .line 202
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 203
    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 200
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I

    .prologue
    .line 240
    mul-int v0, p2, p1

    .line 241
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private static writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "objectOutput"    # Ljava/io/ObjectOutput;
    .param p1, "wordSize"    # I
    .param p2, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    mul-int v0, p3, p1

    .line 222
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 223
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 220
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v1, v2, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 66
    .local v0, "indexInDescriptionPool":I
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getPrefix(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 118
    .local v3, "sizeOfLengths":I
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 120
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 126
    .local v1, "descriptionPoolSize":I
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v1, :cond_2

    .line 127
    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    .line 129
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 130
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aput-object v0, v4, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "description":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readEntries(Ljava/io/ObjectInput;)V

    .line 111
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 158
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 161
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v4

    .line 162
    .local v4, "sizeOfLengths":I
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 163
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "length$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 164
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 168
    .end local v2    # "length":Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 170
    iget-object v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .line 171
    .local v0, "description":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "description":Ljava/lang/String;
    :cond_1
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v5, :cond_2

    .line 177
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v5, v6, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 178
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v5, v6, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 155
    :cond_2
    return-void
.end method
