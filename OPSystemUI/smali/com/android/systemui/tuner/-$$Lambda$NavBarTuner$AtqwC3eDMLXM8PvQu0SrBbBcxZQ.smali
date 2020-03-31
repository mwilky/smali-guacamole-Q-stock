.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroidx/preference/ListPreference;

.field private final synthetic f$3:Landroidx/preference/ListPreference;

.field private final synthetic f$4:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$2:Landroidx/preference/ListPreference;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$3:Landroidx/preference/ListPreference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$4:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$2:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$3:Landroidx/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;->f$4:Landroidx/preference/Preference;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$5$NavBarTuner(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
