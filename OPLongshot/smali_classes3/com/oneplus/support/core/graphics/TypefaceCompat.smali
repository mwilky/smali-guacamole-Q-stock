.class public Lcom/oneplus/support/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompat"

.field private static final sTypefaceCache:Lcom/oneplus/support/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi28Impl;

    invoke-direct {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi28Impl;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi26Impl;

    invoke-direct {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;

    invoke-direct {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi24Impl;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;

    invoke-direct {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatApi21Impl;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v0}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    :goto_0
    new-instance v0, Lcom/oneplus/support/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/oneplus/support/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCache:Lcom/oneplus/support/collection/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    move-object v0, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    instance-of v1, v0, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v1, :cond_4

    move-object v10, v0

    check-cast v10, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p7, :cond_1

    nop

    invoke-virtual {v10}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v3

    if-nez v3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    nop

    if-eqz p7, :cond_3

    invoke-virtual {v10}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    move v6, v1

    :goto_1
    nop

    invoke-virtual {v10}, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Lcom/oneplus/support/core/provider/FontRequest;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/oneplus/support/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Lcom/oneplus/support/core/provider/FontRequest;Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v3, p0

    move-object v4, p2

    move v5, p4

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    move-object v2, v0

    check-cast v2, Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object v3, p0

    move-object v4, p2

    move v5, p4

    invoke-virtual {v1, p0, v2, p2, p4}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v8, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v8, v1, v9}, Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_5
    const/4 v2, -0x3

    invoke-virtual {v8, v2, v9}, Lcom/oneplus/support/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    sget-object v2, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCache:Lcom/oneplus/support/collection/LruCache;

    invoke-static {p2, p3, p4}, Lcom/oneplus/support/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Lcom/oneplus/support/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v1
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/graphics/TypefaceCompatBaseImpl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p4}, Lcom/oneplus/support/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCache:Lcom/oneplus/support/collection/LruCache;

    invoke-virtual {v2, v1, v0}, Lcom/oneplus/support/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/oneplus/support/core/graphics/TypefaceCompat;->sTypefaceCache:Lcom/oneplus/support/collection/LruCache;

    invoke-static {p0, p1, p2}, Lcom/oneplus/support/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method
