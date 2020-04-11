.class public Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;
.super Ljava/lang/Object;
.source "ContextualCardLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;,
        Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;,
        Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextualCardLogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionTypeToTapTarget(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextualCardLogUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_DEFAULT:I

    return v0

    :cond_0
    sget v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_TITLE:I

    return v0

    :cond_1
    sget v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_SLIDER:I

    return v0

    :cond_2
    sget v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_TOGGLE:I

    return v0
.end method

.method public static buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->actionTypeToTapTarget(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildCardDismissLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildCardListLog(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseCardClickLog(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;

    invoke-direct {v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->setSliceRow(I)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->setSliceTapTarget(I)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->setUiPosition(I)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "ContextualCardLogUtils"

    const-string v4, "error parsing log"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static parseCardDismissLog(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    invoke-direct {v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "ContextualCardLogUtils"

    const-string v4, "error parsing log"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static parseCardListLog(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v0

    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    new-instance v4, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    invoke-direct {v4}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v4, v3}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->setSliceUri(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    goto :goto_0

    :cond_1
    nop

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ContextualCardLogUtils"

    const-string v3, "error parsing log"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
