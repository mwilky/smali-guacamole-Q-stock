.class final Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;
.super Ljava/lang/Object;
.source "ContextualCardLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TapTarget"
.end annotation


# static fields
.field static TARGET_DEFAULT:I

.field static TARGET_SLIDER:I

.field static TARGET_TITLE:I

.field static TARGET_TOGGLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_DEFAULT:I

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_TITLE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_TOGGLE:I

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$TapTarget;->TARGET_SLIDER:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
