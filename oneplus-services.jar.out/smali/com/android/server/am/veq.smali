.class synthetic Lcom/android/server/am/veq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic rm:[I

.field static final synthetic sm:[I

.field static final synthetic tm:[I

.field static final synthetic um:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/android/server/am/OnePlusBGController$SnapshotType;->values()[Lcom/android/server/am/OnePlusBGController$SnapshotType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/am/veq;->um:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/am/veq;->um:[I

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->pla:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/server/am/veq;->um:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$SnapshotType;->qla:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/server/am/veq;->um:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SnapshotType;->sla:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$CleanType;->values()[Lcom/android/server/am/OnePlusBGController$CleanType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/veq;->tm:[I

    :try_start_3
    sget-object v3, Lcom/android/server/am/veq;->tm:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$CleanType;->hla:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/android/server/am/veq;->tm:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$CleanType;->ila:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/android/server/am/veq;->tm:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$CleanType;->jla:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$ProcType;->values()[Lcom/android/server/am/OnePlusBGController$ProcType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/am/veq;->sm:[I

    :try_start_6
    sget-object v2, Lcom/android/server/am/veq;->sm:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$ProcType;->nla:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$NetType;->values()[Lcom/android/server/am/OnePlusBGController$NetType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/am/veq;->rm:[I

    :try_start_7
    sget-object v2, Lcom/android/server/am/veq;->rm:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$NetType;->PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/server/am/veq;->rm:[I

    sget-object v2, Lcom/android/server/am/OnePlusBGController$NetType;->mla:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
