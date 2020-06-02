.class public final enum Lcom/android/server/am/OnePlusBGController$NetType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$NetType;

.field public static final enum PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

.field public static final enum _ka:Lcom/android/server/am/OnePlusBGController$NetType;

.field public static final enum ala:Lcom/android/server/am/OnePlusBGController$NetType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/OnePlusBGController$NetType;

    const/4 v1, 0x0

    const-string v2, "NOT_SUPPORT"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/OnePlusBGController$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$NetType;->_ka:Lcom/android/server/am/OnePlusBGController$NetType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$NetType;

    const/4 v2, 0x1

    const-string v3, "DOMESTIC"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/server/am/OnePlusBGController$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$NetType;->ala:Lcom/android/server/am/OnePlusBGController$NetType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$NetType;

    const/4 v3, 0x2

    const-string v4, "PUBLIC"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/server/am/OnePlusBGController$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$NetType;->PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$NetType;

    sget-object v4, Lcom/android/server/am/OnePlusBGController$NetType;->_ka:Lcom/android/server/am/OnePlusBGController$NetType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$NetType;->ala:Lcom/android/server/am/OnePlusBGController$NetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$NetType;->PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/OnePlusBGController$NetType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$NetType;

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

    iput p3, p0, Lcom/android/server/am/OnePlusBGController$NetType;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/android/server/am/OnePlusBGController$NetType;
    .locals 5

    invoke-static {}, Lcom/android/server/am/OnePlusBGController$NetType;->values()[Lcom/android/server/am/OnePlusBGController$NetType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/am/OnePlusBGController$NetType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$NetType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$NetType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$NetType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$NetType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$NetType;

    return-object v0
.end method
