.class public Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source ""


# static fields
.field private static final ACCEPTABLE_EC_CURVES:I = 0x10

.field private static final ADDITIONAL_EC_PARAMETERS:I = 0x20

.field private static final ALL:I = 0x3f

.field private static final Apa:Ljava/lang/String; = "additionalecparameters"

.field private static final Bpa:Ljava/lang/String; = "all"

.field private static final DH_DEFAULT_PARAMS:I = 0x8

.field private static final EC_IMPLICITLY_CA:I = 0x2

.field private static final THREAD_LOCAL_DH_DEFAULT_PARAMS:I = 0x4

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final vpa:Ljava/lang/String; = "threadlocalecimplicitlyca"

.field private static final wpa:Ljava/lang/String; = "ecimplicitlyca"

.field private static final xpa:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final ypa:Ljava/lang/String; = "dhdefaultparams"

.field private static final zpa:Ljava/lang/String; = "acceptableeccurves"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    const-string p1, "all"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    const/16 p1, 0x3f

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->Wc(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method private Wc(Ljava/lang/String;)I
    .locals 2

    new-instance p0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " ,"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "threadlocalecimplicitlyca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "ecimplicitlyca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "threadlocaldhdefaultparams"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_3
    const-string v1, "dhdefaultparams"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_4
    const-string v1, "acceptableeccurves"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_5
    const-string v1, "additionalecparameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_6
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x3f

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    return p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown permissions passed to mask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, p1, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getActions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, p0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget p1, p1, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
