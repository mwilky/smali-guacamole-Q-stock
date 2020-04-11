.class public Lcom/oneplus/lib/util/OPFeaturesUtils;
.super Ljava/lang/Object;
.source "OPFeaturesUtils.java"


# static fields
.field private static sIsSupport:Ljava/lang/reflect/Method;

.field private static sOPFeatures:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->loadFeatures()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportXVibrate()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->loadFeatures()V

    :cond_1
    sget-object v1, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v2, "OP_FEATURE_X_LINEAR_VIBRATION_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v3, v7

    aput-object v3, v4, v7

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static isSupportZVibrate()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->loadFeatures()V

    :cond_1
    sget-object v1, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v2, "OP_FEATURE_Z_VIBRATION_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v3, v7

    aput-object v3, v4, v7

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method private static loadFeatures()V
    .locals 5

    :try_start_0
    const-string v0, "android.util.OpFeatures"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    sget-object v0, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v1, "isSupport"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [I

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
