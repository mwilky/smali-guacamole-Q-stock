.class public final Lsis/you/you/zta/zta/zta;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public LJa:[I

.field public MJa:[I

.field public NJa:[I

.field public OJa:[I

.field public blue:[I

.field public green:[I

.field public red:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lsis/you/you/zta/zta/zta;->red:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lsis/you/you/zta/zta/zta;->green:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lsis/you/you/zta/zta/zta;->LJa:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lsis/you/you/zta/zta/zta;->MJa:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lsis/you/you/zta/zta/zta;->NJa:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lsis/you/you/zta/zta/zta;->OJa:[I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsis/you/you/zta/zta/zta;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x54

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lsis/you/you/zta/zta/zta;

    invoke-direct {v4}, Lsis/you/you/zta/zta/zta;-><init>()V

    mul-int/lit8 v5, v3, 0x54

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lsis/you/you/zta/zta/zta;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lsis/you/you/zta/zta/zta;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x54

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsis/you/you/zta/zta/zta;

    mul-int/lit8 v5, v2, 0x54

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lsis/you/you/zta/zta/zta;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lsis/you/you/zta/zta/zta;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsis/you/you/zta/zta/zta;

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->red:[I

    iget-object v3, p1, Lsis/you/you/zta/zta/zta;->red:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->green:[I

    iget-object v3, p1, Lsis/you/you/zta/zta/zta;->green:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    iget-object v3, p1, Lsis/you/you/zta/zta/zta;->blue:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->LJa:[I

    iget-object v3, p1, Lsis/you/you/zta/zta/zta;->LJa:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->MJa:[I

    iget-object v3, p1, Lsis/you/you/zta/zta/zta;->MJa:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->NJa:[I

    iget-object v3, p1, Lsis/you/you/zta/zta/zta;->NJa:[I

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->OJa:[I

    iget-object p1, p1, Lsis/you/you/zta/zta/zta;->OJa:[I

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->red:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->green:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->LJa:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->MJa:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->NJa:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->OJa:[I

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->red:[I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->green:[I

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->LJa:[I

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->MJa:[I

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0x3c

    add-long/2addr v0, p3

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->NJa:[I

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    const-wide/16 v0, 0x48

    add-long/2addr p3, v0

    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->OJa:[I

    invoke-virtual {p2, p3, p4, p0, v2}, Landroid/os/HwBlob;->copyToInt32Array(J[II)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x54

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lsis/you/you/zta/zta/zta;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".red = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->red:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .green = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->green:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .blue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .cyan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->LJa:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .magenta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->MJa:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .yellow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/you/zta/zta/zta;->NJa:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .whitePoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->OJa:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->red:[I

    const-string v3, "Array element is not of the expected length"

    if-eqz v2, :cond_6

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->green:[I

    if-eqz v2, :cond_5

    array-length v4, v2

    if-ne v4, v5, :cond_5

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    if-eqz v2, :cond_4

    array-length v4, v2

    if-ne v4, v5, :cond_4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->LJa:[I

    if-eqz v2, :cond_3

    array-length v4, v2

    if-ne v4, v5, :cond_3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->MJa:[I

    if-eqz v2, :cond_2

    array-length v4, v2

    if-ne v4, v5, :cond_2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/you/zta/zta/zta;->NJa:[I

    if-eqz v2, :cond_1

    array-length v4, v2

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    const-wide/16 v0, 0x48

    add-long/2addr p2, v0

    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->OJa:[I

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ne v0, v5, :cond_0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32Array(J[I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x54

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsis/you/you/zta/zta/zta;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
