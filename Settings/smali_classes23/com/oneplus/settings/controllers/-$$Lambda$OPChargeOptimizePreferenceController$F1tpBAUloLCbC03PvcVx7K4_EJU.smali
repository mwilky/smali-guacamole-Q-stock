.class public final synthetic Lcom/oneplus/settings/controllers/-$$Lambda$OPChargeOptimizePreferenceController$F1tpBAUloLCbC03PvcVx7K4_EJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/controllers/-$$Lambda$OPChargeOptimizePreferenceController$F1tpBAUloLCbC03PvcVx7K4_EJU;->f$0:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/-$$Lambda$OPChargeOptimizePreferenceController$F1tpBAUloLCbC03PvcVx7K4_EJU;->f$0:Landroidx/preference/PreferenceScreen;

    invoke-static {v0, p1, p2}, Lcom/oneplus/settings/controllers/OPChargeOptimizePreferenceController;->lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
