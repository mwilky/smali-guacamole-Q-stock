.class public Landroidx/slice/core/SliceHints;
.super Ljava/lang/Object;
.source "SliceHints.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/core/SliceHints$ImageMode;
    }
.end annotation


# static fields
.field public static final HINT_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final HINT_CACHED:Ljava/lang/String; = "cached"

.field public static final HINT_SELECTION_OPTION:Ljava/lang/String; = "selection_option"

.field public static final ICON_IMAGE:I = 0x0

.field public static final INFINITY:J = -0x1L

.field public static final LARGE_IMAGE:I = 0x2

.field public static final SLICE_METADATA_KEY:Ljava/lang/String; = "android.metadata.SLICE_URI"

.field public static final SMALL_IMAGE:I = 0x1

.field public static final SUBTYPE_MILLIS:Ljava/lang/String; = "millis"

.field public static final SUBTYPE_MIN:Ljava/lang/String; = "min"

.field public static final SUBTYPE_SELECTION:Ljava/lang/String; = "selection"

.field public static final SUBTYPE_SELECTION_OPTION_KEY:Ljava/lang/String; = "selection_option_key"

.field public static final SUBTYPE_SELECTION_OPTION_VALUE:Ljava/lang/String; = "selection_option_value"

.field public static final UNKNOWN_IMAGE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
