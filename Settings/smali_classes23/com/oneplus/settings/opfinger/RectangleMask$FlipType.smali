.class public final enum Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;
.super Ljava/lang/Enum;
.source "RectangleMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/RectangleMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

.field public static final enum FlipNone:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

.field public static final enum FlipX:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

.field public static final enum FlipXY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

.field public static final enum FlipY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    const/4 v1, 0x0

    const-string v2, "FlipNone"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipNone:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    const/4 v2, 0x1

    const-string v3, "FlipX"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipX:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    const/4 v3, 0x2

    const-string v4, "FlipY"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    new-instance v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    const/4 v4, 0x3

    const-string v5, "FlipXY"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipXY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    sget-object v5, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipNone:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipX:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipXY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->$VALUES:[Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;
    .locals 1

    const-class v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->$VALUES:[Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v0}, [Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    return-object v0
.end method
