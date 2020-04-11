.class public final Lsis/zta/zta/zta/veq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BAD_VALUE:I = -0x16

.field public static final INVALID_OPERATION:I = -0x26

.field public static final NO_MEMORY:I = -0xc

.field public static final OK:I = 0x0

.field public static final PERMISSION_DENIED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "PERMISSION_DENIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, -0xc

    const/16 v3, -0xc

    if-ne v1, v3, :cond_1

    const-string v1, "NO_MEMORY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, -0xc

    :cond_1
    and-int/lit8 v1, p0, -0x16

    const/16 v3, -0x16

    if-ne v1, v3, :cond_2

    const-string v1, "BAD_VALUE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, -0x16

    :cond_2
    and-int/lit8 v1, p0, -0x26

    const/16 v3, -0x26

    if-ne v1, v3, :cond_3

    const-string v1, "INVALID_OPERATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, -0x26

    :cond_3
    if-eq p0, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "OK"

    return-object p0

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const-string p0, "PERMISSION_DENIED"

    return-object p0

    :cond_1
    const/16 v0, -0xc

    if-ne p0, v0, :cond_2

    const-string p0, "NO_MEMORY"

    return-object p0

    :cond_2
    const/16 v0, -0x16

    if-ne p0, v0, :cond_3

    const-string p0, "BAD_VALUE"

    return-object p0

    :cond_3
    const/16 v0, -0x26

    if-ne p0, v0, :cond_4

    const-string p0, "INVALID_OPERATION"

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
