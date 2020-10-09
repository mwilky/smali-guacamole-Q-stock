.class public final enum Lcom/android/server/am/OnePlusBGController$ProcType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$ProcType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$ProcType;

.field public static final enum B:Lcom/android/server/am/OnePlusBGController$ProcType;

.field public static final enum F:Lcom/android/server/am/OnePlusBGController$ProcType;

.field public static final enum nla:Lcom/android/server/am/OnePlusBGController$ProcType;

.field public static final enum ola:Lcom/android/server/am/OnePlusBGController$ProcType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$ProcType;

    const/4 v1, 0x0

    const-string v2, "B"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/OnePlusBGController$ProcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$ProcType;

    const/4 v2, 0x1

    const-string v3, "F"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/server/am/OnePlusBGController$ProcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$ProcType;

    const/4 v3, 0x2

    const-string v4, "B_RECONFIRM"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/server/am/OnePlusBGController$ProcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->nla:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$ProcType;

    const/4 v4, 0x3

    const-string v5, "F_RECONFIRM"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/server/am/OnePlusBGController$ProcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->ola:Lcom/android/server/am/OnePlusBGController$ProcType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$ProcType;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->nla:Lcom/android/server/am/OnePlusBGController$ProcType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->ola:Lcom/android/server/am/OnePlusBGController$ProcType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$ProcType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/OnePlusBGController$ProcType;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/android/server/am/OnePlusBGController$ProcType;
    .locals 5

    invoke-static {}, Lcom/android/server/am/OnePlusBGController$ProcType;->values()[Lcom/android/server/am/OnePlusBGController$ProcType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/am/OnePlusBGController$ProcType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$ProcType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$ProcType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$ProcType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$ProcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$ProcType;

    return-object v0
.end method
