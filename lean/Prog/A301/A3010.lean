import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A301000: Coordination sequence T1 for Zeolite Code BEC.

The programs for A301000, there is no canonical definition to state claims against.
-/

/-! ## A301000.P7091741483251201761

`A047959(n)-A052403(A316552(n+1))`
-/

namespace A301000.P7091741483251201761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047959 n - A052403 (A316552 (n + 1)).toNat

end

end A301000.P7091741483251201761

/-! ## A301000.P11282348098615307005

`A047959(n)-A087051(A185203(2*n+3))`
-/

namespace A301000.P11282348098615307005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047959 n - A087051 (A185203 (2 * n + 3)).toNat

end

end A301000.P11282348098615307005

/-!
# A301001: Coordination sequence T2 for Zeolite Code BEC.

The programs for A301001, there is no canonical definition to state claims against.
-/

/-! ## A301001.P10079403278768162715

`A047958(n)-A037833(A100552(n+1))`
-/

namespace A301001.P10079403278768162715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047958 n - A037833 (A100552 (n + 1)).toNat

end

end A301001.P10079403278768162715

/-!
# A301002: Coordination sequence T3 for Zeolite Code BEC.

The programs for A301002, there is no canonical definition to state claims against.
-/

/-! ## A301002.P6720915326569074763

`A047962(n)-A178926(A258625(n+1))`
-/

namespace A301002.P6720915326569074763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047962 n - A178926 (A258625 (n + 1)).toNat

end

end A301002.P6720915326569074763

/-! ## A301002.P12524497413274216068

`A047962(n)-A303709(A168424(n+1))`
-/

namespace A301002.P12524497413274216068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047962 n - A303709 (A168424 (n + 1)).toNat

end

end A301002.P12524497413274216068

/-!
# A301003: Coordination sequence T1 for Zeolite Code CDO.

The programs for A301003, there is no canonical definition to state claims against.
-/

/-! ## A301003.P11446836964816595358

`A186708(∑[A050376(n+1)]-A049113(n+1))`
-/

namespace A301003.P11446836964816595358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186708 (∑ j ∈ Finset.range (n + 1), f1 j - A049113 (n + 1)).toNat

end

end A301003.P11446836964816595358

/-!
# A301004: Coordination sequence T2 for Zeolite Code CDO.

The programs for A301004, there is no canonical definition to state claims against.
-/

/-! ## A301004.P15685177185871314028

`A008108(n)-A178780(A008041(n))`
-/

namespace A301004.P15685177185871314028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008108 n - A178780 (A008041 n).toNat

end

end A301004.P15685177185871314028

/-!
# A301006: Coordination sequence T4 for Zeolite Code CDO.

The programs for A301006, there is no canonical definition to state claims against.
-/

/-! ## A301006.P4768079613952326854

`A175246(A008645(n)+n²)`
-/

namespace A301006.P4768079613952326854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175246 (A008645 n + (n ^ 2 : ℤ)).toNat

end

end A301006.P4768079613952326854

/-! ## A301006.P4241469591917073439

`A175246(A068522(n)+A008645(n))`
-/

namespace A301006.P4241469591917073439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175246 (A068522 n + A008645 n).toNat

end

end A301006.P4241469591917073439

/-!
# A301007: Coordination sequence T1 for Zeolite Code EON.

The programs for A301007, there is no canonical definition to state claims against.
-/

/-! ## A301007.P1761365379199696133

`∑[∑[A262611(A112860(n+1))]]`
-/

namespace A301007.P1761365379199696133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A112860 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301007.P1761365379199696133

/-! ## A301007.P9938946060161522525

`∑[∑[A340862(A014346(n))]]`
-/

namespace A301007.P9938946060161522525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 (A014346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301007.P9938946060161522525

/-! ## A301007.P306155508045360217

`∑[record[A084684(n)-A000045(n)]]`
-/

namespace A301007.P306155508045360217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n - A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301007.P306155508045360217

/-!
# A301008: Coordination sequence T2 for Zeolite Code EON.

The programs for A301008, there is no canonical definition to state claims against.
-/

/-! ## A301008.P2168681213085170791

`∑[∑[A001222(A297202(n))+1]]`
-/

namespace A301008.P2168681213085170791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297202 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301008.P2168681213085170791

/-! ## A301008.P15525190877090269417

`∑[∑[A339491(A233968(n+1))]]`
-/

namespace A301008.P15525190877090269417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339491 (A233968 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301008.P15525190877090269417

/-! ## A301008.P15449854304207193867

`∑[∑[A334299(A255061(n+1))]]`
-/

namespace A301008.P15449854304207193867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (A255061 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301008.P15449854304207193867

/-! ## A301008.P2541554449126903474

`∑[∑[A035092(A173048(2*n))]]`
-/

namespace A301008.P2541554449126903474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 (A173048 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301008.P2541554449126903474

/-!
# A301009: Coordination sequence T3 for Zeolite Code EON.

The programs for A301009, there is no canonical definition to state claims against.
-/

/-! ## A301009.P140995378233171761

`A336111(A325551(n+1))+A008000(n)`
-/

namespace A301009.P140995378233171761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336111 (A325551 (n + 1)).toNat + A008000 n

end

end A301009.P140995378233171761

/-! ## A301009.P3251645414577486170

`∑[∑[A328029(A225751(n+2))]]`
-/

namespace A301009.P3251645414577486170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328029 (A225751 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301009.P3251645414577486170

/-! ## A301009.P2732580275216859565

`A329313(A165653(n))+A008000(n)`
-/

namespace A301009.P2732580275216859565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A165653 n).toNat + A008000 n

end

end A301009.P2732580275216859565

/-! ## A301009.P10769417293105221503

`A008255(n)-A001221(A000272(n))`
-/

namespace A301009.P10769417293105221503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008255 n - A001221 (A000272 n).toNat

end

end A301009.P10769417293105221503

/-!
# A301012: Coordination sequence T6 for Zeolite Code EON.

The programs for A301012, there is no canonical definition to state claims against.
-/

/-! ## A301012.P15592783860653087902

`A351319(A351318(n+1))+A038407(n)`
-/

namespace A301012.P15592783860653087902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351319 (A351318 (n + 1)).toNat + A038407 n

end

end A301012.P15592783860653087902

/-! ## A301012.P7705219061443141123

`∑[∑[A038698(A280203(n+1))]]`
-/

namespace A301012.P7705219061443141123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A280203 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301012.P7705219061443141123

/-! ## A301012.P17605048944127240326

`A038407(n)+A031346(A053625(n))`
-/

namespace A301012.P17605048944127240326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038407 n + A031346 (A053625 n).toNat

end

end A301012.P17605048944127240326

/-! ## A301012.P8118970847985224740

`A060136(A038384(n))+A038407(n)`
-/

namespace A301012.P8118970847985224740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060136 (A038384 n).toNat + A038407 n

end

end A301012.P8118970847985224740

/-!
# A301013: Coordination sequence T7 for Zeolite Code EON.

The programs for A301013, there is no canonical definition to state claims against.
-/

/-! ## A301013.P8415744406224001346

`A038407(n)+A010051(A084813(n+1))`
-/

namespace A301013.P8415744406224001346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038407 n + A010051 (A084813 (n + 1)).toNat

end

end A301013.P8415744406224001346

/-! ## A301013.P10111985209745011369

`A137292(∑[∑[A332886(n)]])`
-/

namespace A301013.P10111985209745011369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301013.P10111985209745011369

/-! ## A301013.P4608668401546103431

`A137292(∑[A049445(n+1)])`
-/

namespace A301013.P4608668401546103431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301013.P4608668401546103431

/-!
# A301014: Coordination sequence T8 for Zeolite Code EON.

The programs for A301014, there is no canonical definition to state claims against.
-/

/-! ## A301014.P12980646673458574124

`A007895(A014334(n+2))+2*n²`
-/

namespace A301014.P12980646673458574124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A014334 (n + 2)).toNat + (2 * n ^ 2 : ℤ)

end

end A301014.P12980646673458574124

/-! ## A301014.P11248243334379568767

`A151962(A047520(n))+A058331(n)`
-/

namespace A301014.P11248243334379568767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A047520 n).toNat + A058331 n

end

end A301014.P11248243334379568767

/-! ## A301014.P4446124354446612250

`xor(A064834(A300994(n)), A301013(n))`
-/

namespace A301014.P4446124354446612250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064834 (A300994 n).toNat) (A301013 n)

end

end A301014.P4446124354446612250

/-! ## A301014.P12267252678697990917

`A084849(n)-A037800(A001405(2*n+1))`
-/

namespace A301014.P12267252678697990917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - A037800 (A001405 (2 * n + 1)).toNat

end

end A301014.P12267252678697990917

/-!
# A301019: Coordination sequence T3 for Zeolite Code ETR.

The programs for A301019, there is no canonical definition to state claims against.
-/

/-! ## A301019.P18270961047205188347

`∑[∑[A297770(A113195(2*n+1))]]`
-/

namespace A301019.P18270961047205188347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A113195 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301019.P18270961047205188347

/-! ## A301019.P3056945827766604640

`∑[∑[A104659(A125024(n))]]`
-/

namespace A301019.P3056945827766604640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104659 (A125024 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301019.P3056945827766604640

/-! ## A301019.P8984136485913138497

`∑[∑[A085033(A120389(n+1))]]`
-/

namespace A301019.P8984136485913138497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (A120389 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301019.P8984136485913138497

/-! ## A301019.P16129775201795043652

`∑[∑[A001221(A130337(n+3))]]`
-/

namespace A301019.P16129775201795043652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130337 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301019.P16129775201795043652

/-! ## A301019.P10417517291675891949

`∑[∑[A079066(A018005(n+5))]]`
-/

namespace A301019.P10417517291675891949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (A018005 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301019.P10417517291675891949

/-!
# A301020: Coordination sequence T4 for Zeolite Code ETR.

The programs for A301020, there is no canonical definition to state claims against.
-/

/-! ## A301020.P3790746842371588383

`∑[∑[A071188(A248775(n+1))]]`
-/

namespace A301020.P3790746842371588383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071188 (A248775 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301020.P3790746842371588383

/-! ## A301020.P10776511623902427140

`∑[∑[A087039(A319719(n+2))]]`
-/

namespace A301020.P10776511623902427140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A319719 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301020.P10776511623902427140

/-! ## A301020.P1713132042153445446

`∑[A187187(∑[A252801(n+3)])]`
-/

namespace A301020.P1713132042153445446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252801 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301020.P1713132042153445446

/-! ## A301020.P11318280603173445849

`∑[∑[A165074(A353392(2*n+3))]]`
-/

namespace A301020.P11318280603173445849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 (A353392 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301020.P11318280603173445849

/-! ## A301020.P13962421046519055900

`∑[∑[A035154(A357820(2*n+3)+1)]+n]`
-/

namespace A301020.P13962421046519055900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (A357820 (2 * n + 3) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301020.P13962421046519055900

/-!
# A301026: Coordination sequence T1 for Zeolite Code FAR.

The programs for A301026, there is no canonical definition to state claims against.
-/

/-! ## A301026.P8550293349245805266

`∑[∑[A077982(3^n)]]`
-/

namespace A301026.P8550293349245805266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (3 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301026.P8550293349245805266

/-! ## A301026.P686836764548385618

`∑[∑[A007895(A104747(n+1))]]`
-/

namespace A301026.P686836764548385618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A104747 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301026.P686836764548385618

/-! ## A301026.P9320795583045288914

`∑[∑[A115623(A063968(n+1))]]`
-/

namespace A301026.P9320795583045288914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A063968 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301026.P9320795583045288914

/-! ## A301026.P17475942781735841010

`A301032(n)+A165766(n²+7)`
-/

namespace A301026.P17475942781735841010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301032 n + A165766 (n ^ 2 + 7)

end

end A301026.P17475942781735841010

/-! ## A301026.P732781143715116366

`∑[∑[A000174(3*n+4)%A103774(3*(n+1))+1]]`
-/

namespace A301026.P732781143715116366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000174 (3 * n + 4)) (A103774 (3 * (n + 1))) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301026.P732781143715116366

/-!
# A301027: Coordination sequence T2 for Zeolite Code FAR.

The programs for A301027, there is no canonical definition to state claims against.
-/

/-! ## A301027.P9160861879646988545

`A301037(n)+A185284(A322799(n))`
-/

namespace A301027.P9160861879646988545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301037 n + A185284 (A322799 n).toNat

end

end A301027.P9160861879646988545

/-! ## A301027.P13527583644085863563

`A301037(log2(A000027(2^n)))`
-/

namespace A301027.P13527583644085863563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301037 (SequenceMachineLib.roundAway (Real.logb 2 (A000027 (2 ^ n) : ℝ))).toNat

end

end A301027.P13527583644085863563

/-! ## A301027.P62579587577252976

`A301037(n)^A257493(A257493(n))`
-/

namespace A301027.P62579587577252976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301037 n : ℚ) ^ (A257493 (A257493 n).toNat : ℤ)

end

end A301027.P62579587577252976

/-! ## A301027.P1580200658740352175

`A301037(n)%A255411(A294532(n))`
-/

namespace A301027.P1580200658740352175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301037 n) (A255411 (A294532 n).toNat)

end

end A301027.P1580200658740352175

/-! ## A301027.P10284477349792991295

`A000027(A301037(n)²)/A301037(n)`
-/

namespace A301027.P10284477349792991295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A301037 n ^ 2).toNat : ℚ) / (A301037 n : ℚ)

end

end A301027.P10284477349792991295

/-!
# A301029: Coordination sequence T4 for Zeolite Code FAR.

The programs for A301029, there is no canonical definition to state claims against.
-/

/-! ## A301029.P5558632473911224988

`A113520(A301039(n)+1)`
-/

namespace A301029.P5558632473911224988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A301039 n + 1).toNat

end

end A301029.P5558632473911224988

/-! ## A301029.P4798896031880548048

`A301039(n)+A185284(A026374(n))`
-/

namespace A301029.P4798896031880548048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A185284 (A026374 n).toNat

end

end A301029.P4798896031880548048

/-! ## A301029.P10092164263058217067

`A301039(n)+A000122(A096547(n+1))`
-/

namespace A301029.P10092164263058217067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A000122 (A096547 (n + 1)).toNat

end

end A301029.P10092164263058217067

/-! ## A301029.P4460081544756668979

`A301039(n)+A186685(A282035(n+1))`
-/

namespace A301029.P4460081544756668979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A186685 (A282035 (n + 1)).toNat

end

end A301029.P4460081544756668979

/-! ## A301029.P8220380616432363554

`A301039(n)+A174897(A127664(n+4))`
-/

namespace A301029.P8220380616432363554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A174897 (A127664 (n + 4)).toNat

end

end A301029.P8220380616432363554

/-!
# A301030: Coordination sequence T1 for Zeolite Code FRA.

The programs for A301030, there is no canonical definition to state claims against.
-/

/-! ## A301030.P13232932425558079636

`A107846(n^4)+ceil(2/acot(n)²)`
-/

namespace A301030.P13232932425558079636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (n ^ 4) + ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A301030.P13232932425558079636

/-! ## A301030.P4922066894399937155

`∑[∑[A167439(A063590(n+1))]]`
-/

namespace A301030.P4922066894399937155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A063590 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301030.P4922066894399937155

/-! ## A301030.P15817875736652970710

`∑[∑[A322418(A194069(n+1))]]`
-/

namespace A301030.P15817875736652970710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322418 (A194069 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301030.P15817875736652970710

/-! ## A301030.P6339310242945732146

`∑[∑[A352825(A003972(3*(n+1)))]]`
-/

namespace A301030.P6339310242945732146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (A003972 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301030.P6339310242945732146

/-! ## A301030.P4885306050838644832

`A307598(A171816(n))+ceil(2/acot(n)²)`
-/

namespace A301030.P4885306050838644832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A171816 n).toNat + ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A301030.P4885306050838644832

/-!
# A301031: Coordination sequence T2 for Zeolite Code FRA.

The programs for A301031, there is no canonical definition to state claims against.
-/

/-! ## A301031.P12345668594907621569

`A336355(A024948(n+1))+A301032(n)`
-/

namespace A301031.P12345668594907621569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A024948 (n + 1)).toNat + A301032 n

end

end A301031.P12345668594907621569

/-! ## A301031.P4135497920060679613

`A301032(n)+A055641(A214196(2*(n+1)))`
-/

namespace A301031.P4135497920060679613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301032 n + A055641 (A214196 (2 * (n + 1))).toNat

end

end A301031.P4135497920060679613

/-! ## A301031.P9594911156379643217

`A301032(n^A269626(n))`
-/

namespace A301031.P9594911156379643217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301032 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A269626 n : ℤ))).toNat

end

end A301031.P9594911156379643217

/-! ## A301031.P7221015880719710061

`record[A301032(A302642(n+1))]`
-/

namespace A301031.P7221015880719710061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301032 (A302642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301031.P7221015880719710061

/-! ## A301031.P15834378025762045796

`A301032(n)^A241500(A182703(3*n+1))`
-/

namespace A301031.P15834378025762045796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301032 n : ℚ) ^ (A241500 (A182703 (3 * n + 1)).toNat : ℤ)

end

end A301031.P15834378025762045796

/-!
# A301032: Coordination sequence T3 for Zeolite Code FRA.

The programs for A301032, there is no canonical definition to state claims against.
-/

/-! ## A301032.P4895593603981497865

`A301031(n)-A336355(A024948(n+1))`
-/

namespace A301032.P4895593603981497865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301031 n - A336355 (A024948 (n + 1)).toNat

end

end A301032.P4895593603981497865

/-!
# A301033: Coordination sequence T4 for Zeolite Code FRA.

The programs for A301033, there is no canonical definition to state claims against.
-/

/-! ## A301033.P10625671467022549474

`A301039(n)-A101606(A098011(n+1))`
-/

namespace A301033.P10625671467022549474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n - A101606 (A098011 (n + 1)).toNat

end

end A301033.P10625671467022549474

/-! ## A301033.P13433374156678434336

`A277735(A160555(n))+A008140(n)`
-/

namespace A301033.P13433374156678434336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A160555 n).toNat + A008140 n

end

end A301033.P13433374156678434336

/-! ## A301033.P17257600792052365315

`A301121(n)+A185284(3*n+4)`
-/

namespace A301033.P17257600792052365315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301121 n + A185284 (3 * n + 4)

end

end A301033.P17257600792052365315

/-! ## A301033.P11697290381076482349

`A340988(p?[A267755(n)])+A301121(n)`
-/

namespace A301033.P11697290381076482349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 91) + A301121 n

end

end A301033.P11697290381076482349

/-! ## A301033.P16207006992890398780

`A301037(n)-A340988(A024723(n+1))`
-/

namespace A301033.P16207006992890398780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301037 n - A340988 ((A024723 (n + 1)).toNat + 91)

end

end A301033.P16207006992890398780

/-!
# A301034: Coordination sequence T5 for Zeolite Code FRA.

The programs for A301034, there is no canonical definition to state claims against.
-/

/-! ## A301034.P10755871331504911567

`∑[∑[A005811(A051109(n))]]`
-/

namespace A301034.P10755871331504911567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A051109 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301034.P10755871331504911567

/-! ## A301034.P8060157520894184847

`A083895(A060696(n))+ceil(2/acot(n)²)`
-/

namespace A301034.P8060157520894184847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A060696 n).toNat + ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A301034.P8060157520894184847

/-! ## A301034.P17281996130577853569

`A151795(A141214(n))+ceil(2/acot(n)²)`
-/

namespace A301034.P17281996130577853569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A141214 n).toNat + ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A301034.P17281996130577853569

/-! ## A301034.P2643166927672932696

`A224447(A157221(n))+ceil(2/acot(n)²)`
-/

namespace A301034.P2643166927672932696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224447 (A157221 n).toNat + ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A301034.P2643166927672932696

/-! ## A301034.P15973841601637851111

`A025458(A022178(n))+A005893(n)`
-/

namespace A301034.P15973841601637851111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A022178 n).toNat + A005893 n

end

end A301034.P15973841601637851111

/-!
# A301035: Coordination sequence T6 for Zeolite Code FRA.

The programs for A301035, there is no canonical definition to state claims against.
-/

/-! ## A301035.P9486356848938995652

`A004275(A077342(n+1)²-A047486(n+1))`
-/

namespace A301035.P9486356848938995652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A077342 (n + 1) ^ 2 - A047486 (n + 1)).toNat

end

end A301035.P9486356848938995652

/-! ## A301035.P255316882950110633

`A315187(n)+(n-2)*A001414(2^n)`
-/

namespace A301035.P255316882950110633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + ((n : ℤ) - 2) * A001414 (2 ^ n)

end

end A301035.P255316882950110633

/-! ## A301035.P8897527316263782505

`A001844(n)-(A001221(A000079(n))+(6*n)%A072154(n))`
-/

namespace A301035.P8897527316263782505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A001221 (A000079 n).toNat + Int.tmod (6 * n : ℤ) (A072154 n))

end

end A301035.P8897527316263782505

/-!
# A301036: Coordination sequence T1 for Zeolite Code GIU.

The programs for A301036, there is no canonical definition to state claims against.
-/

/-! ## A301036.P13520391023073249873

`A301120(n)+A185284(A106195(n))`
-/

namespace A301036.P13520391023073249873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301120 n + A185284 (A106195 n).toNat

end

end A301036.P13520391023073249873

/-! ## A301036.P5515358667699778532

`A301120(n)+A120043(A186759(n))`
-/

namespace A301036.P5515358667699778532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301120 n + A120043 (A186759 n).toNat

end

end A301036.P5515358667699778532

/-! ## A301036.P1950352386471123263

`A301120(n)+A276791(A185231(n))`
-/

namespace A301036.P1950352386471123263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301120 n + A276791 (A185231 n).toNat

end

end A301036.P1950352386471123263

/-! ## A301036.P14718926663179010343

`A301120(n)+A185274(A326597(n))`
-/

namespace A301036.P14718926663179010343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301120 n + A185274 (A326597 n).toNat

end

end A301036.P14718926663179010343

/-! ## A301036.P7124872332116669765

`or(A185284(A047215(n)), A301120(n))`
-/

namespace A301036.P7124872332116669765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A047215 n).toNat) (A301120 n)

end

end A301036.P7124872332116669765

/-!
# A301038: Coordination sequence T3 for Zeolite Code GIU.

The programs for A301038, there is no canonical definition to state claims against.
-/

/-! ## A301038.P1316159196388189000

`A301039(n)+A277735(A160555(n))`
-/

namespace A301038.P1316159196388189000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A277735 (A160555 n).toNat

end

end A301038.P1316159196388189000

/-! ## A301038.P9780559159414806025

`A008013(n)-A277735(A160555(n))`
-/

namespace A301038.P9780559159414806025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008013 n - A277735 (A160555 n).toNat

end

end A301038.P9780559159414806025

/-! ## A301038.P5102327470345138206

`A008013(n)-A159684(5*2^n-1)`
-/

namespace A301038.P5102327470345138206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008013 n - A159684 (5 * 2 ^ n - 1)

end

end A301038.P5102327470345138206

/-! ## A301038.P15969395652506619615

`A301039(n)+A056170(A047860(n))`
-/

namespace A301038.P15969395652506619615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A056170 (A047860 n).toNat

end

end A301038.P15969395652506619615

/-! ## A301038.P171544616286173599

`A178798(A276086(n))+A008013(n)`
-/

namespace A301038.P171544616286173599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A276086 n).toNat + A008013 n

end

end A301038.P171544616286173599

/-!
# A301043: Coordination sequence T3 for Zeolite Code GON.

The programs for A301043, there is no canonical definition to state claims against.
-/

/-! ## A301043.P8644927209462232573

`A064834(A000467(n+1))+A008015(n)`
-/

namespace A301043.P8644927209462232573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A000467 (n + 1)).toNat + A008015 n

end

end A301043.P8644927209462232573

/-! ## A301043.P1982065206579773821

`∑[∑[A196058(A006497(n))]]`
-/

namespace A301043.P1982065206579773821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A006497 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301043.P1982065206579773821

/-! ## A301043.P5126228146032372072

`∑[∑[A140132(A150468(n))]]`
-/

namespace A301043.P5126228146032372072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140132 (A150468 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301043.P5126228146032372072

/-! ## A301043.P3935466599060844394

`∑[∑[A106486(A106474(3*n))]]`
-/

namespace A301043.P3935466599060844394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A106474 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301043.P3935466599060844394

/-!
# A301044: Coordination sequence T4 for Zeolite Code GON.

The programs for A301044, there is no canonical definition to state claims against.
-/

/-! ## A301044.P14816362019705052878

`A008234(n)+A000523(A000142(n))`
-/

namespace A301044.P14816362019705052878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008234 n + A000523 (A000142 n).toNat

end

end A301044.P14816362019705052878

/-! ## A301044.P11354720366275485595

`xor(A008231(n), A350849(A000598(n)))`
-/

namespace A301044.P11354720366275485595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008231 n) (A350849 (A000598 n).toNat)

end

end A301044.P11354720366275485595

/-!
# A301046: Coordination sequence T2 for Zeolite Code IHW.

The programs for A301046, there is no canonical definition to state claims against.
-/

/-! ## A301046.P11730266255099210076

`xor(A008109(n), A016389(A057321(n)))`
-/

namespace A301046.P11730266255099210076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008109 n) (A016389 (A057321 n).toNat)

end

end A301046.P11730266255099210076

/-! ## A301046.P9012650811995376695

`xor(A008109(n), A120060(A076843(n+1)))`
-/

namespace A301046.P9012650811995376695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008109 n) (A120060 (A076843 (n + 1)).toNat)

end

end A301046.P9012650811995376695

/-! ## A301046.P10243099266363956378

`A079978(ceil(2/acot(n)²)+floor(n/3)*ceil(n/3))+A008109(n)-A079978(A026558(n))`
-/

namespace A301046.P10243099266363956378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ + ⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉).toNat + (A008109 n - A079978 (A026558 n).toNat)

end

end A301046.P10243099266363956378

/-! ## A301046.P13508106945793248252

`A010051(A065033(n))+A008109(n)-A079978(A026558(n))`
-/

namespace A301046.P13508106945793248252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A065033 n).toNat + (A008109 n - A079978 (A026558 n).toNat)

end

end A301046.P13508106945793248252

/-!
# A301048: Coordination sequence T4 for Zeolite Code IHW.

The programs for A301048, there is no canonical definition to state claims against.
-/

/-! ## A301048.P6961528970619286167

`∑[∑[A182535(A029941(n))]]`
-/

namespace A301048.P6961528970619286167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (A029941 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301048.P6961528970619286167

/-! ## A301048.P18384499519361553466

`A003056(A272103(n)-2*n)`
-/

namespace A301048.P18384499519361553466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A272103 n - (2 * n : ℤ)).toNat

end

end A301048.P18384499519361553466

/-! ## A301048.P2415444449422375561

`A003056(A272103(n)-n-n)`
-/

namespace A301048.P2415444449422375561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A272103 n - (n : ℤ) - (n : ℤ)).toNat

end

end A301048.P2415444449422375561

/-! ## A301048.P10343355243675631562

`A350237(2*(n+1))+A046951(A017053(n))`
-/

namespace A301048.P10343355243675631562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350237 (2 * (n + 1)) + A046951 (A017053 n).toNat

end

end A301048.P10343355243675631562

/-!
# A301057: Coordination sequence T4 for Zeolite Code IMF.

The programs for A301057, there is no canonical definition to state claims against.
-/

/-! ## A301057.P6159612025430773342

`A069283(A092266(n))+A008199(n)`
-/

namespace A301057.P6159612025430773342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A092266 n).toNat + A008199 n

end

end A301057.P6159612025430773342

/-! ## A301057.P5944210557885287288

`A107393(A035481(n))+A008199(n)`
-/

namespace A301057.P5944210557885287288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A035481 n).toNat + A008199 n

end

end A301057.P5944210557885287288

/-! ## A301057.P12499912099932619245

`A324796(A008042(n))+A008005(n)`
-/

namespace A301057.P12499912099932619245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324796 (A008042 n).toNat + A008005 n

end

end A301057.P12499912099932619245

/-! ## A301057.P7982312867257121415

`A324796(A008042(n))+A008015(n)`
-/

namespace A301057.P7982312867257121415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324796 (A008042 n).toNat + A008015 n

end

end A301057.P7982312867257121415

/-!
# A301058: Coordination sequence T5 for Zeolite Code IMF.

The programs for A301058, there is no canonical definition to state claims against.
-/

/-! ## A301058.P16185633610889365707

`A301232(n)+A243148(A318121(n))`
-/

namespace A301058.P16185633610889365707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301232 n + A243148 (A318121 n).toNat

end

end A301058.P16185633610889365707

/-! ## A301058.P3950333694959515436

`xor(A008168(n), A243148(A318121(n)))`
-/

namespace A301058.P3950333694959515436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008168 n) (A243148 (A318121 n).toNat)

end

end A301058.P3950333694959515436

/-!
# A301059: Coordination sequence T6 for Zeolite Code IMF.

The programs for A301059, there is no canonical definition to state claims against.
-/

/-! ## A301059.P1181374961311529958

`A089806(A173048(2*n))+A008102(n)`
-/

namespace A301059.P1181374961311529958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (A173048 (2 * n)).toNat + A008102 n

end

end A301059.P1181374961311529958

/-! ## A301059.P11432522167608620037

`A004709(n+1)*A029837(A006252(n+3))`
-/

namespace A301059.P11432522167608620037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) * A029837 (A006252 (n + 3)).toNat

end

end A301059.P11432522167608620037

/-! ## A301059.P7033298403714365825

`A024326(n+1)+A301061(n)+A125005(A210285(n))`
-/

namespace A301059.P7033298403714365825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024326 (n + 1) + (A301061 n + A125005 (A210285 n).toNat)

end

end A301059.P7033298403714365825

/-!
# A301061: Coordination sequence T8 for Zeolite Code IMF.

The programs for A301061, there is no canonical definition to state claims against.
-/

/-! ## A301061.P13662193708790246522

`A187950(A346022(3*(n+1)))+A008164(n)`
-/

namespace A301061.P13662193708790246522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A346022 (3 * (n + 1))).toNat + A008164 n

end

end A301061.P13662193708790246522

/-! ## A301061.P14478039347334730326

`A101606(A053496(n))+A008199(n)`
-/

namespace A301061.P14478039347334730326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (A053496 n).toNat + A008199 n

end

end A301061.P14478039347334730326

/-! ## A301061.P5214150267380173452

`A124761(A041075(n))+A008164(n)`
-/

namespace A301061.P5214150267380173452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A041075 n).toNat + A008164 n

end

end A301061.P5214150267380173452

/-! ## A301061.P11322953535129446419

`A008102(n)-A125005(A210285(n))`
-/

namespace A301061.P11322953535129446419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008102 n - A125005 (A210285 n).toNat

end

end A301061.P11322953535129446419

/-!
# A301062: Coordination sequence T9 for Zeolite Code IMF.

The programs for A301062, there is no canonical definition to state claims against.
-/

/-! ## A301062.P10077072931715772912

`xor(A008170(n), A055639(A071756(n)))`
-/

namespace A301062.P10077072931715772912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008170 n) (A055639 (A071756 n).toNat)

end

end A301062.P10077072931715772912

/-!
# A301064: Coordination sequence T11 for Zeolite Code IMF.

The programs for A301064, there is no canonical definition to state claims against.
-/

/-! ## A301064.P11320304640295939050

`A096603(∑[∑[A008949(n)]])`
-/

namespace A301064.P11320304640295939050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301064.P11320304640295939050

/-! ## A301064.P1551374016826728248

`A131396(∑[∑[A008949(n)]])`
-/

namespace A301064.P1551374016826728248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301064.P1551374016826728248

/-! ## A301064.P18226760005921362239

`A096603(∑[∑[A208341(n)]])`
-/

namespace A301064.P18226760005921362239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301064.P18226760005921362239

/-! ## A301064.P17680913546724084928

`A131396(∑[∑[A240783(n+1)]])`
-/

namespace A301064.P17680913546724084928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240783 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301064.P17680913546724084928

/-!
# A301065: Coordination sequence T12 for Zeolite Code IMF.

The programs for A301065, there is no canonical definition to state claims against.
-/

/-! ## A301065.P14169408500129894305

`∑[∑[A088748(A053154(n))]]`
-/

namespace A301065.P14169408500129894305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A053154 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301065.P14169408500129894305

/-! ## A301065.P8954271829631489250

`A003056(A107963(n)+2^n-1)`
-/

namespace A301065.P8954271829631489250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A107963 n + ((2 ^ n : ℤ) - 1)).toNat

end

end A301065.P8954271829631489250

/-! ## A301065.P15048132457089798366

`∑[∑[A000120(A214703(2*n+1))]]`
-/

namespace A301065.P15048132457089798366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A214703 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301065.P15048132457089798366

/-! ## A301065.P17233681287765734345

`∑[∑[A177062(A177064(2*(n+2)))]]`
-/

namespace A301065.P17233681287765734345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177062 (A177064 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301065.P17233681287765734345

/-!
# A301072: Coordination sequence T19 for Zeolite Code IMF.

The programs for A301072, there is no canonical definition to state claims against.
-/

/-! ## A301072.P14096132028520485713

`xor(A008075(n), A241541(A008066(n)²))`
-/

namespace A301072.P14096132028520485713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008075 n) (A241541 (A008066 n ^ 2).toNat)

end

end A301072.P14096132028520485713

/-!
# A301079: Coordination sequence T2 for Zeolite Code ITH.

The programs for A301079, there is no canonical definition to state claims against.
-/

/-! ## A301079.P4179895215442380739

`∑[∑[A090387(A000111(n+3))]]`
-/

namespace A301079.P4179895215442380739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (A000111 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301079.P4179895215442380739

/-!
# A301080: Coordination sequence T3 for Zeolite Code ITH.

The programs for A301080, there is no canonical definition to state claims against.
-/

/-! ## A301080.P1224696610007274234

`∑[A107631(∑[A006577(3*n+2)])]`
-/

namespace A301080.P1224696610007274234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301080.P1224696610007274234

/-! ## A301080.P18437590138273441461

`∑[eq[A027750(n+1), A147599(2*n+1)]]`
-/

namespace A301080.P18437590138273441461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301080.P18437590138273441461

/-!
# A301081: Coordination sequence T4 for Zeolite Code ITH.

The programs for A301081, there is no canonical definition to state claims against.
-/

/-! ## A301081.P9223990552111155841

`A275964(A026770(n))+A008000(n)`
-/

namespace A301081.P9223990552111155841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A026770 n).toNat + A008000 n

end

end A301081.P9223990552111155841

/-! ## A301081.P16597419259120678825

`A275964(A026770(n))+A008130(n)+A005893(n)`
-/

namespace A301081.P16597419259120678825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A026770 n).toNat + (A008130 n + A005893 n)

end

end A301081.P16597419259120678825

/-! ## A301081.P9209905009665889037

`A275964(A026770(n))+A008259(n)-A000212(n)`
-/

namespace A301081.P9209905009665889037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A026770 n).toNat + (A008259 n - A000212 n)

end

end A301081.P9209905009665889037

/-! ## A301081.P16233264747122109191

`A275964(A026770(n))+A008255(n)-A008130(n)`
-/

namespace A301081.P16233264747122109191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A026770 n).toNat + (A008255 n - A008130 n)

end

end A301081.P16233264747122109191

/-!
# A301082: Coordination sequence T5 for Zeolite Code ITH.

The programs for A301082, there is no canonical definition to state claims against.
-/

/-! ## A301082.P441678935626999262

`A133880(A005394(n))+A000217(2*n)`
-/

namespace A301082.P441678935626999262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A005394 n).toNat + A000217 (2 * n)

end

end A301082.P441678935626999262

/-!
# A301084: Coordination sequence T7 for Zeolite Code ITH.

The programs for A301084, there is no canonical definition to state claims against.
-/

/-! ## A301084.P7618392330772978723

`xor(A001222(A183450(2^n-n)), A016438(n))`
-/

namespace A301084.P7618392330772978723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A183450 (2 ^ n - n)).toNat) (A016438 n)

end

end A301084.P7618392330772978723

/-!
# A301086: Coordination sequence T9 for Zeolite Code ITH.

The programs for A301086, there is no canonical definition to state claims against.
-/

/-! ## A301086.P15752464298465413038

`A236541(∑[(n+2)²]*(3*n+5))`
-/

namespace A301086.P15752464298465413038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236541 ((∑ j ∈ Finset.range (n + 1), f1 j) * (3 * n + 5))

end

end A301086.P15752464298465413038

/-! ## A301086.P5638733799606014961

`A215183(n+1)-A320058(A218938(n))`
-/

namespace A301086.P5638733799606014961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215183 (n + 1) - A320058 (A218938 n).toNat

end

end A301086.P5638733799606014961

/-!
# A301090: Coordination sequence T1 for Zeolite Code IWR.

The programs for A301090, there is no canonical definition to state claims against.
-/

/-! ## A301090.P16160648853184065861

`record[A308483(n+1)]+∑[2*n]`
-/

namespace A301090.P16160648853184065861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308483 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A301090.P16160648853184065861

/-! ## A301090.P14438258495894816281

`C(A000005(n!+1), n)+2*n²`
-/

namespace A301090.P14438258495894816281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (Nat.factorial n + 1)).toNat n + 2 * n ^ 2

end

end A301090.P14438258495894816281

/-! ## A301090.P15498734183924054417

`A028310(A064461(n²))`
-/

namespace A301090.P15498734183924054417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064461 (n ^ 2)).toNat

end

end A301090.P15498734183924054417

/-! ## A301090.P10700453827295828193

`∑[∑[A035191(A149906(n))]]`
-/

namespace A301090.P10700453827295828193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (A149906 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301090.P10700453827295828193

/-! ## A301090.P10126903803437294328

`∑[∑[A053735(A279212(3*n))]]`
-/

namespace A301090.P10126903803437294328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A279212 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301090.P10126903803437294328

/-!
# A301092: Coordination sequence T3 for Zeolite Code IWR.

The programs for A301092, there is no canonical definition to state claims against.
-/

/-! ## A301092.P8875946134305230508

`A071520(A071520(n+1)*A089046(3*n+1))`
-/

namespace A301092.P8875946134305230508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071520 (A071520 (n + 1) * A089046 (3 * n + 1)).toNat

end

end A301092.P8875946134305230508

/-!
# A301094: Coordination sequence T1 for Zeolite Code IWV.

The programs for A301094, there is no canonical definition to state claims against.
-/

/-! ## A301094.P5015141934611010854

`A329242(A187151(n))+(n+1)²`
-/

namespace A301094.P5015141934611010854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (A187151 n).toNat + ((n + 1) ^ 2 : ℤ)

end

end A301094.P5015141934611010854

/-! ## A301094.P753029131906350313

`∑[A112923(3*n+4)-A236843(n)]`
-/

namespace A301094.P753029131906350313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112923 (3 * n + 4) - A236843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301094.P753029131906350313

/-!
# A301095: Coordination sequence T2 for Zeolite Code IWV.

The programs for A301095, there is no canonical definition to state claims against.
-/

/-! ## A301095.P1160505479912774012

`A066272(A000142(n))+A008127(n)`
-/

namespace A301095.P1160505479912774012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000142 n).toNat + A008127 n

end

end A301095.P1160505479912774012

/-! ## A301095.P17799023406507733607

`A009867(n)-A101637(A296770(n))`
-/

namespace A301095.P17799023406507733607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009867 n - A101637 (A296770 n).toNat

end

end A301095.P17799023406507733607

/-! ## A301095.P14915237243885400886

`A301259(n)-A055641(A094433(n))`
-/

namespace A301095.P14915237243885400886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301259 n - A055641 (A094433 n).toNat

end

end A301095.P14915237243885400886

/-! ## A301095.P5202378067642219532

`A301259(n)-A055641(A304771(n+1))`
-/

namespace A301095.P5202378067642219532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301259 n - A055641 (A304771 (n + 1)).toNat

end

end A301095.P5202378067642219532

/-!
# A301096: Coordination sequence T3 for Zeolite Code IWV.

The programs for A301096, there is no canonical definition to state claims against.
-/

/-! ## A301096.P3879690349866428922

`A124763(A008039(n))+A008042(n)`
-/

namespace A301096.P3879690349866428922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A008039 n).toNat + A008042 n

end

end A301096.P3879690349866428922

/-! ## A301096.P14174124225628397130

`A241568(A298671(n))+A212959(n)`
-/

namespace A301096.P14174124225628397130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241568 (A298671 n).toNat + A212959 n

end

end A301096.P14174124225628397130

/-! ## A301096.P107872533290836418

`xor(A008052(n), A053603(A029609(n)))`
-/

namespace A301096.P107872533290836418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008052 n) (A053603 (A029609 n).toNat)

end

end A301096.P107872533290836418

