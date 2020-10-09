.class public final enum Lcom/android/server/am/OnePlusBGController$CleanType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CleanType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$CleanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum hla:Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum ila:Lcom/android/server/am/OnePlusBGController$CleanType;

.field public static final enum jla:Lcom/android/server/am/OnePlusBGController$CleanType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v1, 0x0

    const-string v2, "RESET_CLEAN"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->hla:Lcom/android/server/am/OnePlusBGController$CleanType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v2, 0x1

    const-string v3, "HANDLED_CLEAN"

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->ila:Lcom/android/server/am/OnePlusBGController$CleanType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v3, 0x2

    const-string v4, "NEGATIVE_CLEAN"

    invoke-direct {v0, v4, v3}, Lcom/android/server/am/OnePlusBGController$CleanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->jla:Lcom/android/server/am/OnePlusBGController$CleanType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$CleanType;

    sget-object v4, Lcom/android/server/am/OnePlusBGController$CleanType;->hla:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CleanType;->ila:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CleanType;->jla:Lcom/android/server/am/OnePlusBGController$CleanType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$CleanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$CleanType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$CleanType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$CleanType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$CleanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$CleanType;

    return-object v0
.end method
