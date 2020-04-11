.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;
.super Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategyModified"
.end annotation


# instance fields
.field private final mHBMLuxToBacklightSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF[F[F)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    invoke-static {p5, p6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    return-void
.end method


# virtual methods
.method public getHBMBrightness(FLjava/lang/String;I)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method
