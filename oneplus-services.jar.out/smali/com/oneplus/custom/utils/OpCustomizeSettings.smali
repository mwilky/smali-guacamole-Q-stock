.class public Lcom/oneplus/custom/utils/OpCustomizeSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;,
        Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;,
        Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "OpCustomizeSettings"

.field private static final oga:Ljava/lang/String;

.field private static pga:Lcom/oneplus/custom/utils/OpCustomizeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Lcom/oneplus/custom/utils/ssp;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->oga:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Af()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    .locals 1

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->zf()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;
    .locals 2

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->pga:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROJECT_NAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings;->oga:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCustomizeSettings"

    invoke-static {v1, v0}, Lcom/oneplus/custom/utils/zta;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->oga:Ljava/lang/String;

    const-string v1, "16859"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->oga:Ljava/lang/String;

    const-string v1, "17801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->oga:Ljava/lang/String;

    const-string v1, "15801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->oga:Ljava/lang/String;

    const-string v1, "15811"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oneplus/custom/utils/sis;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/sis;-><init>()V

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Lcom/oneplus/custom/utils/you;

    invoke-direct {v0}, Lcom/oneplus/custom/utils/you;-><init>()V

    :goto_2
    sput-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->pga:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    :cond_4
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings;->pga:Lcom/oneplus/custom/utils/OpCustomizeSettings;

    return-object v0
.end method

.method public static rtg(Landroid/content/Context;)[B
    .locals 1

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->tsu(Landroid/content/Context;)[B

    move-result-object p0

    return-object p0
.end method

.method public static uf()J
    .locals 2

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->wf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static vf()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 1

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->xf()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public static yf()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 1

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getInstance()Lcom/oneplus/custom/utils/OpCustomizeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 0

    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    return-object p0
.end method

.method protected tsu(Landroid/content/Context;)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected wf()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected xf()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 0

    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_BACK_COVER_TYPE;

    return-object p0
.end method

.method protected zf()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;
    .locals 0

    sget-object p0, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->DEFAULT:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    return-object p0
.end method
