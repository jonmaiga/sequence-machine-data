import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C002
import Seq.B004.C003
import Seq.B006.C000
import Seq.B007.C000
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
# A008102: Coordination sequence T7 for Zeolite Code EUO.

The programs for A008102, there is no canonical definition to state claims against.
-/

/-! ## A008102.P9529031179256679958

`A301061(n)+A125005(A210285(n))`
-/

namespace A008102.P9529031179256679958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301061 n + A125005 (A210285 n).toNat

end

end A008102.P9529031179256679958

/-! ## A008102.P7113132530644063102

`A301061(n)+A125005(A299274(n))`
-/

namespace A008102.P7113132530644063102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301061 n + A125005 (A299274 n).toNat

end

end A008102.P7113132530644063102

/-! ## A008102.P10097101491534007994

`A301059(n)-A024326(A134169(n))`
-/

namespace A008102.P10097101491534007994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301059 n - A024326 (A134169 n).toNat

end

end A008102.P10097101491534007994

/-! ## A008102.P11503083495891500568

`A301059(n)-A010054(A004017(n+1))`
-/

namespace A008102.P11503083495891500568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301059 n - A010054 (A004017 (n + 1)).toNat

end

end A008102.P11503083495891500568

/-!
# A008105: Coordination sequence T1 for Zeolite Code FAU.

The programs for A008105, there is no canonical definition to state claims against.
-/

/-! ## A008105.P1370030796427046555

`A008089(n)-A055641(A093306(n+1))`
-/

namespace A008105.P1370030796427046555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008089 n - A055641 (A093306 (n + 1)).toNat

end

end A008105.P1370030796427046555

/-! ## A008105.P15925014515112482140

`A008089(n)-A133010(A317011(n+1))`
-/

namespace A008105.P15925014515112482140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008089 n - A133010 (A317011 (n + 1)).toNat

end

end A008105.P15925014515112482140

/-! ## A008105.P12992991684978840085

`A008089(n)-A133010(A066779(n+3))`
-/

namespace A008105.P12992991684978840085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008089 n - A133010 (A066779 (n + 3)).toNat

end

end A008105.P12992991684978840085

/-! ## A008105.P13527996645412840585

`A008089(n)-A044939(p?[A063954(n+1)])`
-/

namespace A008105.P13527996645412840585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008089 n - A044939 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A008105.P13527996645412840585

/-!
# A008108: Coordination sequence T3 for Zeolite Code FER.

The programs for A008108, there is no canonical definition to state claims against.
-/

/-! ## A008108.P5493675271240992842

`A301004(n)+A178780(A008041(n))`
-/

namespace A008108.P5493675271240992842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301004 n + A178780 (A008041 n).toNat

end

end A008108.P5493675271240992842

/-! ## A008108.P9333073450412088682

`A334967(A353387(n+2)+A228351(2*n+1))`
-/

namespace A008108.P9333073450412088682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334967 (A353387 (n + 2) + A228351 (2 * n + 1)).toNat

end

end A008108.P9333073450412088682

/-!
# A008109: Coordination sequence T4 for Zeolite Code FER.

The programs for A008109, there is no canonical definition to state claims against.
-/

/-! ## A008109.P15561691758270593407

`A079978(A026558(n))+A008244(n)`
-/

namespace A008109.P15561691758270593407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A026558 n).toNat + A008244 n

end

end A008109.P15561691758270593407

/-! ## A008109.P17754339768477289309

`A079978(A071077(n))+A008244(n)`
-/

namespace A008109.P17754339768477289309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A071077 n).toNat + A008244 n

end

end A008109.P17754339768477289309

/-! ## A008109.P11513214508099676925

`A060838(A345194(n))+A008244(n)`
-/

namespace A008109.P11513214508099676925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A345194 n).toNat + A008244 n

end

end A008109.P11513214508099676925

/-! ## A008109.P7644176758918741943

`xor(A016389(A057321(n)), A301046(n))`
-/

namespace A008109.P7644176758918741943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016389 (A057321 n).toNat) (A301046 n)

end

end A008109.P7644176758918741943

/-!
# A008110: Coordination sequence T1 for Zeolite Code GME and AFX.

The programs for A008110, there is no canonical definition to state claims against.
-/

/-! ## A008110.P6972315237290834021

`∑[∑[A043536(A063397(n))]]`
-/

namespace A008110.P6972315237290834021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A063397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008110.P6972315237290834021

/-! ## A008110.P8338836563014030450

`∑[∑[A333870(A020734(n))]]`
-/

namespace A008110.P8338836563014030450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A020734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008110.P8338836563014030450

/-! ## A008110.P7186343453474219544

`∑[A295298(record[A272188(n)])]`
-/

namespace A008110.P7186343453474219544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295298 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008110.P7186343453474219544

/-! ## A008110.P13329370550138358888

`∑[∑[A335474(A333218(n+2))]]`
-/

namespace A008110.P13329370550138358888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A333218 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008110.P13329370550138358888

/-!
# A008112: Coordination sequence T2 for Zeolite Code GOO.

The programs for A008112, there is no canonical definition to state claims against.
-/

/-! ## A008112.P13512959629592550121

`∑[A194253(p?[A103877(n)])]`
-/

namespace A008112.P13512959629592550121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194253 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008112.P13512959629592550121

/-! ## A008112.P6238142992892624148

`∑[∑[A309287(A200270(n+1))]]`
-/

namespace A008112.P6238142992892624148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309287 (A200270 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008112.P6238142992892624148

/-! ## A008112.P5751930166511209386

`A073772(A073708(n))+A008000(n)`
-/

namespace A008112.P5751930166511209386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073772 (A073708 n).toNat + A008000 n

end

end A008112.P5751930166511209386

/-! ## A008112.P565083115791916721

`A286470(A076716(n+1))+A005893(n)`
-/

namespace A008112.P565083115791916721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (A076716 (n + 1)).toNat + A005893 n

end

end A008112.P565083115791916721

/-!
# A008114: Coordination sequence T4 for Zeolite Code GOO.

The programs for A008114, there is no canonical definition to state claims against.
-/

/-! ## A008114.P4535715881928402877

`xor(A008234(n), A257994(A177249(n)))`
-/

namespace A008114.P4535715881928402877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008234 n) (A257994 (A177249 n).toNat)

end

end A008114.P4535715881928402877

/-!
# A008115: Coordination sequence T5 for Zeolite Code GOO.

The programs for A008115, there is no canonical definition to state claims against.
-/

/-! ## A008115.P13028193329649178651

`A301112(n)%p?[n²²+1]`
-/

namespace A008115.P13028193329649178651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301112 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A008115.P13028193329649178651

/-! ## A008115.P8970950292306603064

`2*(A275890(a(n-1))+n)` with `a(0)=1`
-/

namespace A008115.P8970950292306603064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A275890 (a (n - 1)).toNat + (n : ℤ))

end

end A008115.P8970950292306603064

/-! ## A008115.P12439976748664631829

`A301112(A032551(n+1))`
-/

namespace A008115.P12439976748664631829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301112 (A032551 (n + 1)).toNat

end

end A008115.P12439976748664631829

/-! ## A008115.P550963909924380468

`A351626(A320850(n+5))`
-/

namespace A008115.P550963909924380468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351626 (A320850 (n + 5)).toNat

end

end A008115.P550963909924380468

/-!
# A008116: Coordination sequence T1 for Zeolite Code HEU.

The programs for A008116, there is no canonical definition to state claims against.
-/

/-! ## A008116.P4386210161422553821

`A160700(A074089(n))+A005893(n)`
-/

namespace A008116.P4386210161422553821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (A074089 n).toNat + A005893 n

end

end A008116.P4386210161422553821

/-!
# A008118: Coordination sequence T3 for Zeolite Code HEU.

The programs for A008118, there is no canonical definition to state claims against.
-/

/-! ## A008118.P3689635343791972596

`A301258(n)+A000120(A301278(n))`
-/

namespace A008118.P3689635343791972596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301258 n + A000120 (A301278 n).toNat

end

end A008118.P3689635343791972596

/-!
# A008119: Coordination sequence T4 for Zeolite Code HEU.

The programs for A008119, there is no canonical definition to state claims against.
-/

/-! ## A008119.P4553393063912940979

`A301161(n)-A324731(A138292(n))`
-/

namespace A008119.P4553393063912940979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301161 n - A324731 (A138292 n).toNat

end

end A008119.P4553393063912940979

/-! ## A008119.P146445567264674745

`A301161(n)-A324731(A138738(n))`
-/

namespace A008119.P146445567264674745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301161 n - A324731 (A138738 n).toNat

end

end A008119.P146445567264674745

/-! ## A008119.P18318467157060381000

`A301161(n)-A175253(A056277(n+1))`
-/

namespace A008119.P18318467157060381000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301161 n - A175253 (A056277 (n + 1)).toNat

end

end A008119.P18318467157060381000

/-! ## A008119.P5436329945382509184

`or(A009892(n), A108611(A180322(n+1)))`
-/

namespace A008119.P5436329945382509184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009892 n) (A108611 (A180322 (n + 1)).toNat)

end

end A008119.P5436329945382509184

/-!
# A008120: Coordination sequence T5 for Zeolite Code HEU.

The programs for A008120, there is no canonical definition to state claims against.
-/

/-! ## A008120.P9997918854521917523

`A301163(n)-A340998(A008246(n))`
-/

namespace A008120.P9997918854521917523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301163 n - A340998 ((A008246 n).toNat + 140)

end

end A008120.P9997918854521917523

/-!
# A008123: Coordination sequence T1 for Zeolite Code KFI.

The programs for A008123, the canonical program `A008123.P1715340732610126611` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008123 has offset 0).

The definition of A008123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008123.P1715340732610126611

`A005893(n)-∑[A289139(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008123

/-- `A005893(n)-∑[A289139(n)]` -/
def P1715340732610126611.Spec : Prop :=
  ∀ n, P1715340732610126611.a n = A008123 n

theorem P1715340732610126611.correct : P1715340732610126611.Spec := by
  intro n
  simp only [A008123]

end A008123

/-! ## A008123.P2596226814372911583

`∑[A113127(n)-A289139(n)]`
-/

namespace A008123.P2596226814372911583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n - A289139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008123.P2596226814372911583

namespace A008123

/-- `∑[A113127(n)-A289139(n)]` -/
def P2596226814372911583.Spec : Prop :=
  ∀ n, P2596226814372911583.a n = A008123 n

end A008123

/-! ## A008123.P17582496217241333144

`∑[A033627(n+1)+A002264(A060464(n+1)+2)]`
-/

namespace A008123.P17582496217241333144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1) + A002264 (A060464 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008123.P17582496217241333144

namespace A008123

/-- `∑[A033627(n+1)+A002264(A060464(n+1)+2)]` -/
def P17582496217241333144.Spec : Prop :=
  ∀ n, P17582496217241333144.a n = A008123 n

end A008123

/-! ## A008123.P6843979098982210419

`A105343(2*n)-∑[A289139(n)]`
-/

namespace A008123.P6843979098982210419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008123.P6843979098982210419

namespace A008123

/-- `A105343(2*n)-∑[A289139(n)]` -/
def P6843979098982210419.Spec : Prop :=
  ∀ n, P6843979098982210419.a n = A008123 n

end A008123

/-! ## A008123.P5352509436498296594

`A333574(2*n+1)-∑[A289139(n)]`
-/

namespace A008123.P5352509436498296594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008123.P5352509436498296594

namespace A008123

/-- `A333574(2*n+1)-∑[A289139(n)]` -/
def P5352509436498296594.Spec : Prop :=
  ∀ n, P5352509436498296594.a n = A008123 n

end A008123

/-! ## A008123.P619726168218898903

`A005893(n)-A057356(n²+2)`
-/

namespace A008123.P619726168218898903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A057356 (n ^ 2 + 2)

end

end A008123.P619726168218898903

namespace A008123

/-- `A005893(n)-A057356(n²+2)` -/
def P619726168218898903.Spec : Prop :=
  ∀ n, P619726168218898903.a n = A008123 n

end A008123

/-! ## A008123.P15036196233641930489

`A057359(A010000(n))+A002522(n)`
-/

namespace A008123.P15036196233641930489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A010000 n).toNat + A002522 n

end

end A008123.P15036196233641930489

namespace A008123

/-- `A057359(A010000(n))+A002522(n)` -/
def P15036196233641930489.Spec : Prop :=
  ∀ n, P15036196233641930489.a n = A008123 n

end A008123

/-! ## A008123.P10703689856143677341

`∑[A113127(n)]-A057356(A059100(n))`
-/

namespace A008123.P10703689856143677341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057356 (A059100 n).toNat

end

end A008123.P10703689856143677341

namespace A008123

/-- `∑[A113127(n)]-A057356(A059100(n))` -/
def P10703689856143677341.Spec : Prop :=
  ∀ n, P10703689856143677341.a n = A008123 n

end A008123

/-! ## A008123.P14495933795225144124

`A105343(2*n)-A057356(A059100(n))`
-/

namespace A008123.P14495933795225144124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (2 * n) - A057356 (A059100 n).toNat

end

end A008123.P14495933795225144124

namespace A008123

/-- `A105343(2*n)-A057356(A059100(n))` -/
def P14495933795225144124.Spec : Prop :=
  ∀ n, P14495933795225144124.a n = A008123 n

end A008123

/-! ## A008123.P17496187954057093182

`A083120(abs(n²*A008836(a(n-1)))+2)` with `a(0)=1`
-/

namespace A008123.P17496187954057093182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083120 (|(n ^ 2 : ℤ) * A008836 (a (n - 1)).toNat| + 2).toNat

end

end A008123.P17496187954057093182

namespace A008123

/-- `A083120(abs(n²*A008836(a(n-1)))+2)` -/
def P17496187954057093182.Spec : Prop :=
  ∀ n, P17496187954057093182.a n = A008123 n

end A008123

/-!
# A008124: Coordination sequence T1 for Zeolite Code LAU.

The programs for A008124, there is no canonical definition to state claims against.
-/

/-! ## A008124.P12242617795716971175

`∑[∑[A044945(A001159(n+1))]]`
-/

namespace A008124.P12242617795716971175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (A001159 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008124.P12242617795716971175

/-! ## A008124.P746770593664389760

`∑[∑[A302242(A069673(n+1))]]`
-/

namespace A008124.P746770593664389760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A069673 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008124.P746770593664389760

/-! ## A008124.P3937727137576050483

`∑[∑[A254315(A120452(3*(n+1)))]]`
-/

namespace A008124.P3937727137576050483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254315 (A120452 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008124.P3937727137576050483

/-! ## A008124.P7716044519965395265

`ceil(2/acot(n)²)-A107846(A176027(n))`
-/

namespace A008124.P7716044519965395265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ - A107846 (A176027 n).toNat

end

end A008124.P7716044519965395265

/-! ## A008124.P3388905866164306559

`∑[lt[A359061(n+2), A236112(3*n+4)]]`
-/

namespace A008124.P3388905866164306559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359061 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236112 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008124.P3388905866164306559

/-!
# A008125: Coordination sequence T2 for Zeolite Code LAU.

The programs for A008125, there is no canonical definition to state claims against.
-/

/-! ## A008125.P887876076786815521

`∑[A305611(∏[A035306(2*n+5)])]`
-/

namespace A008125.P887876076786815521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008125.P887876076786815521

/-!
# A008127: Coordination sequence T1 for Zeolite Code LEV.

The programs for A008127, there is no canonical definition to state claims against.
-/

/-! ## A008127.P7474517254505784084

`A008082(n)-A079978(A249936(n))`
-/

namespace A008127.P7474517254505784084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008082 n - A079978 (A249936 n).toNat

end

end A008127.P7474517254505784084

/-!
# A008128: Coordination sequence T2 for Zeolite Code LEV.

The programs for A008128, there is no canonical definition to state claims against.
-/

/-! ## A008128.P3575095689775600712

`∑[∑[A000005(A009212(n+1))]]`
-/

namespace A008128.P3575095689775600712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009212 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008128.P3575095689775600712

/-!
# A008129: Coordination sequence T1 for Zeolite Code LIO.

The programs for A008129, there is no canonical definition to state claims against.
-/

/-! ## A008129.P4405003654337292943

`(A008131(n)+A008013(n))/2`
-/

namespace A008129.P4405003654337292943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008131 n + A008013 n : ℚ) / 2

end

end A008129.P4405003654337292943

/-! ## A008129.P15586962793960400039

`(A008131(n)+A008013(n))*2^A349340(A051698(n))`
-/

namespace A008129.P15586962793960400039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008131 n + A008013 n : ℚ) * (2 : ℚ) ^ (A349340 (A051698 n).toNat : ℤ)

end

end A008129.P15586962793960400039

/-! ## A008129.P11511397935343368701

`(A008131(n)+A008013(n))*2^A008683(A092627(n+1))`
-/

namespace A008129.P11511397935343368701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008131 n + A008013 n : ℚ) * (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ)

end

end A008129.P11511397935343368701

/-! ## A008129.P3847960753412153575

`(A008131(n)+A008013(n))*2^A008683(A142644(n+1))`
-/

namespace A008129.P3847960753412153575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008131 n + A008013 n : ℚ) * (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ)

end

end A008129.P3847960753412153575

/-! ## A008129.P13150130130721423245

`A273943(A008131(n)+A008013(n))`
-/

namespace A008129.P13150130130721423245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A008131 n + A008013 n).toNat

end

end A008129.P13150130130721423245

/-! ## A008129.P14401709342907898475

`A014682(A008131(n)+A008013(n))`
-/

namespace A008129.P14401709342907898475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008131 n + A008013 n).toNat

end

end A008129.P14401709342907898475

/-! ## A008129.P9930351645377626908

`A001281(A008131(n)+A008013(n))`
-/

namespace A008129.P9930351645377626908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A008131 n + A008013 n).toNat

end

end A008129.P9930351645377626908

/-! ## A008129.P16167796563544753560

`A004525(A008131(n)+A008013(n))`
-/

namespace A008129.P16167796563544753560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008131 n + A008013 n).toNat

end

end A008129.P16167796563544753560

/-! ## A008129.P10665134766344039032

`A004526(A008131(n)+A008013(n))`
-/

namespace A008129.P10665134766344039032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008131 n + A008013 n).toNat

end

end A008129.P10665134766344039032

/-! ## A008129.P10990285347538955530

`A025480(A008131(n)+A008013(n))`
-/

namespace A008129.P10990285347538955530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A008131 n + A008013 n).toNat

end

end A008129.P10990285347538955530

/-!
# A008130: a(n) = floor(n/3)*ceiling(n/3).

The programs for A008130, the canonical program `A008130.P6850248859462288160` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008130 has offset 0).

The definition of A008130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/3)*ceil(n/3)` (program `A008130.P6850248859462288160`, by `A008130.P6850248859462288160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008130.P6850248859462288160

`floor(n/3)*ceil(n/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008130

/-- `floor(n/3)*ceil(n/3)` -/
def P6850248859462288160.Spec : Prop :=
  ∀ n, P6850248859462288160.a n = A008130 n

theorem P6850248859462288160.correct : P6850248859462288160.Spec := by
  intro n
  simp only [A008130]

end A008130

/-! ## A008130.P17106034486819398492

`∑[(n*(n+1)%3)%(n+1)/3]`
-/

namespace A008130.P17106034486819398492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * ((n + 1) % 3) % (n + 1) : ℕ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008130.P17106034486819398492

namespace A008130

/-- `∑[(n*(n+1)%3)%(n+1)/3]` -/
def P17106034486819398492.Spec : Prop :=
  ∀ n, P17106034486819398492.a n = (A008130 n : ℚ)

end A008130

/-! ## A008130.P3639097138100731473

`∑[a(n-3)+(n+1)²%3]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A008130.P3639097138100731473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) + (n + 1) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008130.P3639097138100731473

namespace A008130

/-- `∑[a(n-3)+(n+1)²%3]` -/
def P3639097138100731473.Spec : Prop :=
  ∀ n, (P3639097138100731473.a n : ℤ) = A008130 n

end A008130

/-! ## A008130.P15013416530668148358

`∑[a(n-3)^a(n-2)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A008130.P15013416530668148358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A008130.P15013416530668148358

namespace A008130

/-- `∑[a(n-3)^a(n-2)]+a(n-3)` -/
def P15013416530668148358.Spec : Prop :=
  ∀ n, (P15013416530668148358.a n : ℤ) = A008130 n

end A008130

/-! ## A008130.P18366669625724709800

`∑[abs(∑[A160706(n)])]`
-/

namespace A008130.P18366669625724709800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008130.P18366669625724709800

namespace A008130

/-- `∑[abs(∑[A160706(n)])]` -/
def P18366669625724709800.Spec : Prop :=
  ∀ n, P18366669625724709800.a n = A008130 n

end A008130

/-! ## A008130.P12722037934156495889

`floor((A004396(n)/2)²)`
-/

namespace A008130.P12722037934156495889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A004396 n : ℚ) / 2) ^ 2⌋

end

end A008130.P12722037934156495889

namespace A008130

/-- `floor((A004396(n)/2)²)` -/
def P12722037934156495889.Spec : Prop :=
  ∀ n, P12722037934156495889.a n = A008130 n

end A008130

/-! ## A008130.P11886540278180995023

`A002620(round(2*n/3))`
-/

namespace A008130.P11886540278180995023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A008130.P11886540278180995023

namespace A008130

/-- `A002620(round(2*n/3))` -/
def P11886540278180995023.Spec : Prop :=
  ∀ n, P11886540278180995023.a n = A008130 n

end A008130

/-! ## A008130.P8748041552699345023

`A008000(n)-(n²+1)*ceil(atan(n+1))`
-/

namespace A008130.P8748041552699345023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A008130.P8748041552699345023

namespace A008130

/-- `A008000(n)-(n²+1)*ceil(atan(n+1))` -/
def P8748041552699345023.Spec : Prop :=
  ∀ n, P8748041552699345023.a n = A008130 n

end A008130

/-! ## A008130.P10401808564350755989

`∑[A004526(A092942(n))]`
-/

namespace A008130.P10401808564350755989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A092942 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008130.P10401808564350755989

namespace A008130

/-- `∑[A004526(A092942(n))]` -/
def P10401808564350755989.Spec : Prop :=
  ∀ n, P10401808564350755989.a n = A008130 n

end A008130

/-! ## A008130.P6478074793038278856

`A008000(n)-A005893(n)`
-/

namespace A008130.P6478074793038278856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A005893 n

end

end A008130.P6478074793038278856

namespace A008130

/-- `A008000(n)-A005893(n)` -/
def P6478074793038278856.Spec : Prop :=
  ∀ n, P6478074793038278856.a n = A008130 n

end A008130

/-! ## A008130.P701514931614799994

`A008255(n)-A008000(n)`
-/

namespace A008130.P701514931614799994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008255 n - A008000 n

end

end A008130.P701514931614799994

namespace A008130

/-- `A008255(n)-A008000(n)` -/
def P701514931614799994.Spec : Prop :=
  ∀ n, P701514931614799994.a n = A008130 n

end A008130

/-! ## A008130.P7996750772106364775

`A008000(n)%A002522(n)`
-/

namespace A008130.P7996750772106364775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008000 n) (A002522 n)

end

end A008130.P7996750772106364775

namespace A008130

/-- `A008000(n)%A002522(n)` -/
def P7996750772106364775.Spec : Prop :=
  ∀ n, P7996750772106364775.a n = A008130 n

end A008130

/-! ## A008130.P1423896790403024125

`∑[A002264(n)%A347633(n+1)]`
-/

namespace A008130.P1423896790403024125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 n) (A347633 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008130.P1423896790403024125

namespace A008130

/-- `∑[A002264(n)%A347633(n+1)]` -/
def P1423896790403024125.Spec : Prop :=
  ∀ n, P1423896790403024125.a n = A008130 n

end A008130

/-! ## A008130.P10589130784552293411

`A000212(n)-(A008133(n+1)+A008133(n))`
-/

namespace A008130.P10589130784552293411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n - (A008133 (n + 1) + A008133 n)

end

end A008130.P10589130784552293411

namespace A008130

/-- `A000212(n)-(A008133(n+1)+A008133(n))` -/
def P10589130784552293411.Spec : Prop :=
  ∀ n, P10589130784552293411.a n = A008130 n

end A008130

/-! ## A008130.P14751111712568073723

`A006446(n+2)-(n+2)`
-/

namespace A008130.P14751111712568073723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 2) - (n + 2 : ℤ)

end

end A008130.P14751111712568073723

namespace A008130

/-- `A006446(n+2)-(n+2)` -/
def P14751111712568073723.Spec : Prop :=
  ∀ n, P14751111712568073723.a n = A008130 n

end A008130

/-! ## A008130.P16266985665409803910

`floor((A131737(n+1)/2)²)`
-/

namespace A008130.P16266985665409803910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A131737 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A008130.P16266985665409803910

namespace A008130

/-- `floor((A131737(n+1)/2)²)` -/
def P16266985665409803910.Spec : Prop :=
  ∀ n, P16266985665409803910.a n = A008130 n

end A008130

/-! ## A008130.P2179416778282579816

`∑[A004526(A102899(n+1))]`
-/

namespace A008130.P2179416778282579816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008130.P2179416778282579816

namespace A008130

/-- `∑[A004526(A102899(n+1))]` -/
def P2179416778282579816.Spec : Prop :=
  ∀ n, P2179416778282579816.a n = A008130 n

end A008130

/-! ## A008130.P5458719570566168498

`A008133(A011655(n+1)+n)`
-/

namespace A008130.P5458719570566168498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A011655 (n + 1) + (n : ℤ)).toNat

end

end A008130.P5458719570566168498

namespace A008130

/-- `A008133(A011655(n+1)+n)` -/
def P5458719570566168498.Spec : Prop :=
  ∀ n, P5458719570566168498.a n = A008130 n

end A008130

/-! ## A008130.P8288283960607611789

`A002620(n)-A393093(n+1)`
-/

namespace A008130.P8288283960607611789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A393093 (n + 1)

end

end A008130.P8288283960607611789

namespace A008130

/-- `A002620(n)-A393093(n+1)` -/
def P8288283960607611789.Spec : Prop :=
  ∀ n, P8288283960607611789.a n = A008130 n

end A008130

/-!
# A008131: Coordination sequence T3 for Zeolite Code LIO.

The programs for A008131, there is no canonical definition to state claims against.
-/

/-! ## A008131.P8500639281939598090

`2*A008129(n)-A008013(n)`
-/

namespace A008131.P8500639281939598090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008129 n - A008013 n

end

end A008131.P8500639281939598090

/-! ## A008131.P12965262459435904383

`A004277(A008129(n)-A008363(n))-A005893(n)`
-/

namespace A008131.P12965262459435904383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008129 n - A008363 n).toNat - A005893 n

end

end A008131.P12965262459435904383

/-! ## A008131.P12411038058539255677

`A004277(A008129(n))-A008013(n)`
-/

namespace A008131.P12411038058539255677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008129 n).toNat - A008013 n

end

end A008131.P12411038058539255677

/-! ## A008131.P10325765794316562080

`A004277(A008129(n))+A008738(n)-A008265(n)`
-/

namespace A008131.P10325765794316562080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008129 n).toNat + (A008738 n - A008265 n)

end

end A008131.P10325765794316562080

/-! ## A008131.P10260804307429476072

`or(A055641(A115205(n)), A301040(n))`
-/

namespace A008131.P10260804307429476072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A115205 n).toNat) (A301040 n)

end

end A008131.P10260804307429476072

/-!
# A008132: Coordination sequence T1 for Zeolite Code LOS.

The programs for A008132, there is no canonical definition to state claims against.
-/

/-! ## A008132.P12370325226500294460

`A301217(n)+A301219(n)-A301218(n)`
-/

namespace A008132.P12370325226500294460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301217 n + (A301219 n - A301218 n)

end

end A008132.P12370325226500294460

/-! ## A008132.P17135973197182835620

`A005843(A301219(n))-A301040(A187829(n+1)-1)`
-/

namespace A008132.P17135973197182835620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301219 n).toNat - A301040 (A187829 (n + 1) - 1).toNat

end

end A008132.P17135973197182835620

/-! ## A008132.P10143265308605514510

`A301219(A062399(n))+A062329(n)`
-/

namespace A008132.P10143265308605514510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301219 (A062399 n).toNat + A062329 n

end

end A008132.P10143265308605514510

/-! ## A008132.P7140005073088004905

`A301219(n)+A185284(A212804(n))`
-/

namespace A008132.P7140005073088004905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301219 n + A185284 (A212804 n).toNat

end

end A008132.P7140005073088004905

/-! ## A008132.P16206865109130078355

`A301219(n)+A185284(A349801(n))`
-/

namespace A008132.P16206865109130078355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301219 n + A185284 (A349801 n).toNat

end

end A008132.P16206865109130078355

/-!
# A008133: a(n) = floor(n/3)*floor((n+1)/3).

The programs for A008133, the canonical program `A008133.P12500075711576031672` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008133 has offset 0).

The definition of A008133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/3)*floor((n+1)/3)` (program `A008133.P12500075711576031672`, by `A008133.P12500075711576031672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008133.P12500075711576031672

`floor(n/3)*floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008133

/-- `floor(n/3)*floor((n+1)/3)` -/
def P12500075711576031672.Spec : Prop :=
  ∀ n, P12500075711576031672.a n = A008133 n

theorem P12500075711576031672.correct : P12500075711576031672.Spec := by
  intro n
  simp only [A008133]

end A008133

/-! ## A008133.P7263731118273887966

`∑[(n+2)%ceil((n+2)/3)]`
-/

namespace A008133.P7263731118273887966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) ⌈(n + 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008133.P7263731118273887966

namespace A008133

/-- `∑[(n+2)%ceil((n+2)/3)]` -/
def P7263731118273887966.Spec : Prop :=
  ∀ n, P7263731118273887966.a n = A008133 n

end A008133

/-! ## A008133.P9827416376399071480

`∑[lcm(1-n%3, floor(n/3))]`
-/

namespace A008133.P9827416376399071480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((n % 3 : ℕ) : ℤ)) ⌊(n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008133.P9827416376399071480

namespace A008133

/-- `∑[lcm(1-n%3, floor(n/3))]` -/
def P9827416376399071480.Spec : Prop :=
  ∀ n, (P9827416376399071480.a n : ℤ) = A008133 n

end A008133

/-! ## A008133.P15039254921443000072

`Δ[C(floor(n/3), 2)]+floor(n/3)²`
-/

namespace A008133.P15039254921443000072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 3⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊(n : ℚ) / 3⌋ ^ 2

end

end A008133.P15039254921443000072

namespace A008133

/-- `Δ[C(floor(n/3), 2)]+floor(n/3)²` -/
def P15039254921443000072.Spec : Prop :=
  ∀ n, P15039254921443000072.a n = A008133 n

end A008133

/-! ## A008133.P12047829915636239855

`∑[round(2*n/3)-lcm(2, ceil(2*n/3))/2]`
-/

namespace A008133.P12047829915636239855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℚ) - (Int.lcm 2 ⌈2 * ((n : ℚ) / 3)⌉ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008133.P12047829915636239855

namespace A008133

/-- `∑[round(2*n/3)-lcm(2, ceil(2*n/3))/2]` -/
def P12047829915636239855.Spec : Prop :=
  ∀ n, P12047829915636239855.a n = (A008133 n : ℚ)

end A008133

/-! ## A008133.P13122004687628392771

`∑[a(n-3)^a(n-1)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A008133.P13122004687628392771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A008133.P13122004687628392771

namespace A008133

/-- `∑[a(n-3)^a(n-1)]+a(n-3)` -/
def P13122004687628392771.Spec : Prop :=
  ∀ n, (P13122004687628392771.a n : ℤ) = A008133 n

end A008133

/-! ## A008133.P10089543691603676459

`∑[C(a(n-3), a(n-1))]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A008133.P10089543691603676459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  Nat.choose (f1 (n - 3)) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A008133.P10089543691603676459

namespace A008133

/-- `∑[C(a(n-3), a(n-1))]+a(n-3)` -/
def P10089543691603676459.Spec : Prop :=
  ∀ n, (P10089543691603676459.a n : ℤ) = A008133 n

end A008133

/-! ## A008133.P1907635259087545607

`∑[abs(A160706(n))]`
-/

namespace A008133.P1907635259087545607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160706 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008133.P1907635259087545607

namespace A008133

/-- `∑[abs(A160706(n))]` -/
def P1907635259087545607.Spec : Prop :=
  ∀ n, P1907635259087545607.a n = A008133 n

end A008133

/-! ## A008133.P5634430217845542031

`round((A004523(n)/2)²)`
-/

namespace A008133.P5634430217845542031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A004523 n : ℚ) / 2) ^ 2)

end

end A008133.P5634430217845542031

namespace A008133

/-- `round((A004523(n)/2)²)` -/
def P5634430217845542031.Spec : Prop :=
  ∀ n, P5634430217845542031.a n = A008133 n

end A008133

/-! ## A008133.P11474953837888268286

`∑[A087509(abs(1-n))]`
-/

namespace A008133.P11474953837888268286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008133.P11474953837888268286

namespace A008133

/-- `∑[A087509(abs(1-n))]` -/
def P11474953837888268286.Spec : Prop :=
  ∀ n, P11474953837888268286.a n = A008133 n

end A008133

/-! ## A008133.P10888224174428326781

`A002620(floor(2*n/3))`
-/

namespace A008133.P10888224174428326781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A008133.P10888224174428326781

namespace A008133

/-- `A002620(floor(2*n/3))` -/
def P10888224174428326781.Spec : Prop :=
  ∀ n, P10888224174428326781.a n = A008133 n

end A008133

/-! ## A008133.P15376250209996841945

`A087509(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A008133.P15376250209996841945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087509 (n - 1) + a (n - 1)

end

end A008133.P15376250209996841945

namespace A008133

/-- `A087509(n-1)+a(n-1)` -/
def P15376250209996841945.Spec : Prop :=
  ∀ n, P15376250209996841945.a n = A008133 n

end A008133

/-! ## A008133.P7874366173347144487

`A033638(A004523(n))-1`
-/

namespace A008133.P7874366173347144487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A004523 n).toNat - 1

end

end A008133.P7874366173347144487

namespace A008133

/-- `A033638(A004523(n))-1` -/
def P7874366173347144487.Spec : Prop :=
  ∀ n, P7874366173347144487.a n = A008133 n

end A008133

/-! ## A008133.P2002202830355067687

`A008130(n-A011655(n))`
-/

namespace A008133.P2002202830355067687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 ((n : ℤ) - A011655 n).toNat

end

end A008133.P2002202830355067687

namespace A008133

/-- `A008130(n-A011655(n))` -/
def P2002202830355067687.Spec : Prop :=
  ∀ n, P2002202830355067687.a n = A008133 n

end A008133

/-! ## A008133.P13561850585446723848

`A008611(n)²-A089598(n)`
-/

namespace A008133.P13561850585446723848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n ^ 2 - A089598 n

end

end A008133.P13561850585446723848

namespace A008133

/-- `A008611(n)²-A089598(n)` -/
def P13561850585446723848.Spec : Prop :=
  ∀ n, P13561850585446723848.a n = A008133 n

end A008133

/-! ## A008133.P9574917075646125762

`∑[A087509(n)]-A087509(n)`
-/

namespace A008133.P9574917075646125762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087509 n

end

end A008133.P9574917075646125762

namespace A008133

/-- `∑[A087509(n)]-A087509(n)` -/
def P9574917075646125762.Spec : Prop :=
  ∀ n, P9574917075646125762.a n = A008133 n

end A008133

/-! ## A008133.P3963862073435636239

`A008130(n+1)-A002264(n+1)`
-/

namespace A008133.P3963862073435636239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (n + 1) - A002264 (n + 1)

end

end A008133.P3963862073435636239

namespace A008133

/-- `A008130(n+1)-A002264(n+1)` -/
def P3963862073435636239.Spec : Prop :=
  ∀ n, P3963862073435636239.a n = A008133 n

end A008133

/-! ## A008133.P2412396836342380438

`A008217(A004772(n+1))`
-/

namespace A008133.P2412396836342380438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A004772 (n + 1)).toNat

end

end A008133.P2412396836342380438

namespace A008133

/-- `A008217(A004772(n+1))` -/
def P2412396836342380438.Spec : Prop :=
  ∀ n, P2412396836342380438.a n = A008133 n

end A008133

/-! ## A008133.P7977304575658254741

`A008217(A042965(n+1))`
-/

namespace A008133.P7977304575658254741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A042965 (n + 1)).toNat

end

end A008133.P7977304575658254741

namespace A008133

/-- `A008217(A042965(n+1))` -/
def P7977304575658254741.Spec : Prop :=
  ∀ n, P7977304575658254741.a n = A008133 n

end A008133

/-! ## A008133.P17636579905826783224

`A008217(A047503(n+1))`
-/

namespace A008133.P17636579905826783224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A047503 (n + 1)).toNat

end

end A008133.P17636579905826783224

namespace A008133

/-- `A008217(A047503(n+1))` -/
def P17636579905826783224.Spec : Prop :=
  ∀ n, P17636579905826783224.a n = A008133 n

end A008133

/-!
# A008134: Coordination sequence T1 for Zeolite Code LOV.

The programs for A008134, there is no canonical definition to state claims against.
-/

/-! ## A008134.P17681402164225576996

`A032741(A039751(n))+A008000(n)`
-/

namespace A008134.P17681402164225576996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A039751 n).toNat + A008000 n

end

end A008134.P17681402164225576996

/-! ## A008134.P16553163642319739872

`A051127(A052961(n))+A008000(n)`
-/

namespace A008134.P16553163642319739872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A052961 n).toNat + A008000 n

end

end A008134.P16553163642319739872

/-! ## A008134.P13998258775469859736

`A301008(n)+A126309(A301019(n))`
-/

namespace A008134.P13998258775469859736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301008 n + A126309 (A301019 n).toNat

end

end A008134.P13998258775469859736

/-!
# A008137: Coordination sequence T1 for Zeolite Code LTA and RHO.

The programs for A008137, the canonical program `A008137.P7823502241240527515` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008137 has offset 0).

The definition of A008137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008137.P7823502241240527515

`A005893(n)-floor(2/5*n²)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008137

/-- `A005893(n)-floor(2/5*n²)` -/
def P7823502241240527515.Spec : Prop :=
  ∀ n, P7823502241240527515.a n = A008137 n

theorem P7823502241240527515.correct : P7823502241240527515.Spec := by
  intro n
  simp only [A008137]

end A008137

/-! ## A008137.P13435195241872977321

`∑[A113127(n)-A090223(n)]`
-/

namespace A008137.P13435195241872977321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n - A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008137.P13435195241872977321

namespace A008137

/-- `∑[A113127(n)-A090223(n)]` -/
def P13435195241872977321.Spec : Prop :=
  ∀ n, P13435195241872977321.a n = A008137 n

end A008137

/-! ## A008137.P504219618291656608

`A398055(n)+A089071(n+1)`
-/

namespace A008137.P504219618291656608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n + A089071 (n + 1)

end

end A008137.P504219618291656608

namespace A008137

/-- `A398055(n)+A089071(n+1)` -/
def P504219618291656608.Spec : Prop :=
  ∀ n, P504219618291656608.a n = A008137 n

end A008137

/-! ## A008137.P7658797038007829639

`abs(A005893(n)-∑[A090223(n)])`
-/

namespace A008137.P7658797038007829639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005893 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008137.P7658797038007829639

namespace A008137

/-- `abs(A005893(n)-∑[A090223(n)])` -/
def P7658797038007829639.Spec : Prop :=
  ∀ n, P7658797038007829639.a n = A008137 n

end A008137

/-! ## A008137.P12067032490558391808

`(A005893(n)-A033437(n))%A056909(n+1)`
-/

namespace A008137.P12067032490558391808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005893 n - A033437 n) (A056909 (n + 1))

end

end A008137.P12067032490558391808

namespace A008137

/-- `(A005893(n)-A033437(n))%A056909(n+1)` -/
def P12067032490558391808.Spec : Prop :=
  ∀ n, P12067032490558391808.a n = A008137 n

end A008137

/-! ## A008137.P703602355878145209

`(A005893(n)-∑[A090223(n)])%A122430(n+1)`
-/

namespace A008137.P703602355878145209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005893 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A122430 (n + 1))

end

end A008137.P703602355878145209

namespace A008137

/-- `(A005893(n)-∑[A090223(n)])%A122430(n+1)` -/
def P703602355878145209.Spec : Prop :=
  ∀ n, P703602355878145209.a n = A008137 n

end A008137

/-! ## A008137.P738868368593846548

`∑[A047497(record[A141310(n)])]+n`
-/

namespace A008137.P738868368593846548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A008137.P738868368593846548

namespace A008137

/-- `∑[A047497(record[A141310(n)])]+n` -/
def P738868368593846548.Spec : Prop :=
  ∀ n, P738868368593846548.a n = A008137 n

end A008137

/-! ## A008137.P9415752992824675754

`(A005893(n)-∑[A090223(n)])*A000034(2*(n+1))`
-/

namespace A008137.P9415752992824675754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005893 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * (n + 1))

end

end A008137.P9415752992824675754

namespace A008137

/-- `(A005893(n)-∑[A090223(n)])*A000034(2*(n+1))` -/
def P9415752992824675754.Spec : Prop :=
  ∀ n, P9415752992824675754.a n = A008137 n

end A008137

/-! ## A008137.P9879620991369069576

`∑[A065033(A072154(n))+A004275(n)]`
-/

namespace A008137.P9879620991369069576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A072154 n).toNat + A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008137.P9879620991369069576

namespace A008137

/-- `∑[A065033(A072154(n))+A004275(n)]` -/
def P9879620991369069576.Spec : Prop :=
  ∀ n, P9879620991369069576.a n = A008137 n

end A008137

/-! ## A008137.P18080208646357589086

`A047435(A010000(n))`
-/

namespace A008137.P18080208646357589086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047435 (A010000 n).toNat

end

end A008137.P18080208646357589086

namespace A008137

/-- `A047435(A010000(n))` -/
def P18080208646357589086.Spec : Prop :=
  ∀ n, P18080208646357589086.a n = A008137 n

end A008137

/-! ## A008137.P3284889700326624922

`A047497(∑[record[A141310(n)]])`
-/

namespace A008137.P3284889700326624922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008137.P3284889700326624922

namespace A008137

/-- `A047497(∑[record[A141310(n)]])` -/
def P3284889700326624922.Spec : Prop :=
  ∀ n, P3284889700326624922.a n = A008137 n

end A008137

/-!
# A008138: Coordination sequence T1 for Zeolite Code LTL.

The programs for A008138, there is no canonical definition to state claims against.
-/

/-! ## A008138.P4983131991716651783

`∑[∑[A106494(A003000(n))]]`
-/

namespace A008138.P4983131991716651783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (A003000 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008138.P4983131991716651783

/-! ## A008138.P7119376078565174700

`∑[∑[A119353(A032555(n+1))]]`
-/

namespace A008138.P7119376078565174700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008138.P7119376078565174700

/-! ## A008138.P826835785571887853

`∑[∑[A119353(A032559(n+1))]]`
-/

namespace A008138.P826835785571887853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A032559 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008138.P826835785571887853

/-! ## A008138.P1781942438154951061

`∑[record[A000041(n+3)-A139582(n)]]`
-/

namespace A008138.P1781942438154951061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3) - A139582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008138.P1781942438154951061

/-! ## A008138.P5340061910773525099

`∑[A133263(n)-A256117(A309861(n))]`
-/

namespace A008138.P5340061910773525099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - A256117 (A309861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008138.P5340061910773525099

/-!
# A008140: Coordination sequence T1 for Zeolite Code LTN.

The programs for A008140, there is no canonical definition to state claims against.
-/

/-! ## A008140.P8488157738713413106

`A301028(A129600(∑[n]))`
-/

namespace A008140.P8488157738713413106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301028 (A129600 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008140.P8488157738713413106

/-! ## A008140.P15475518604577782334

`A301028(A163352(∑[n]))`
-/

namespace A008140.P15475518604577782334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301028 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008140.P15475518604577782334

/-! ## A008140.P7003231207909627626

`A182182(3*A301028(n))`
-/

namespace A008140.P7003231207909627626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (3 * A301028 n).toNat

end

end A008140.P7003231207909627626

/-! ## A008140.P10891745921298286071

`∏{e}[A000244(n), A301028(#)]`
-/

namespace A008140.P10891745921298286071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A301028 (Nat.factorization (f1 n).natAbs p)

end

end A008140.P10891745921298286071

/-! ## A008140.P17823565371415489698

`A301028(n)%A341660(n+1)²`
-/

namespace A008140.P17823565371415489698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301028 n) (A341660 (n + 1) ^ 2)

end

end A008140.P17823565371415489698

/-!
# A008141: Coordination sequence T2 for Zeolite Code LTN.

The programs for A008141, there is no canonical definition to state claims against.
-/

/-! ## A008141.P2942176065398988479

`∑[∑[A267263(A041296(n))]]`
-/

namespace A008141.P2942176065398988479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A041296 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008141.P2942176065398988479

/-! ## A008141.P13447051052983506306

`∑[∑[A210533(A020587(n+1))]]`
-/

namespace A008141.P13447051052983506306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210533 (A020587 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008141.P13447051052983506306

/-! ## A008141.P9820267582204589490

`∑[∑[A001222(A123578(n)+n!)+1]]`
-/

namespace A008141.P9820267582204589490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123578 n + (Nat.factorial n : ℤ)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008141.P9820267582204589490

/-! ## A008141.P1952795709726897130

`A008221(n)+A001222(A071300(n))`
-/

namespace A008141.P1952795709726897130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008221 n + A001222 (A071300 n).toNat

end

end A008141.P1952795709726897130

/-!
# A008142: Coordination sequence T3 for Zeolite Code LTN.

The programs for A008142, there is no canonical definition to state claims against.
-/

/-! ## A008142.P11241213754649283496

`∑[A075991(n+1)+A001221(A105864(n))]`
-/

namespace A008142.P11241213754649283496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075991 (n + 1) + A001221 (A105864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008142.P11241213754649283496

/-! ## A008142.P6437120429518636559

`∑[∑[A358371(A320922(n+1))]]`
-/

namespace A008142.P6437120429518636559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A320922 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008142.P6437120429518636559

/-! ## A008142.P5175754725572799478

`A005893(n)-A031346(A259390(2*(n+1)))`
-/

namespace A008142.P5175754725572799478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A031346 (A259390 (2 * (n + 1))).toNat

end

end A008142.P5175754725572799478

/-! ## A008142.P12795321638941516270

`∑[∑[A167439(A001157(n+1))]]`
-/

namespace A008142.P12795321638941516270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A001157 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008142.P12795321638941516270

/-! ## A008142.P2089410912584098551

`∑[∑[A234287(A053024(n+1))]]`
-/

namespace A008142.P2089410912584098551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234287 (A053024 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008142.P2089410912584098551

/-!
# A008144: Coordination sequence T1 for Zeolite Code MAZ.

The programs for A008144, there is no canonical definition to state claims against.
-/

/-! ## A008144.P2288845917164952175

`A008000(n)-A059781(A269303(3*n+1))`
-/

namespace A008144.P2288845917164952175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A059781 (A269303 (3 * n + 1)).toNat

end

end A008144.P2288845917164952175

/-! ## A008144.P8249525540196104947

`A008000(n)-val(A046073(A002805(n+1)+1), 2)`
-/

namespace A008144.P8249525540196104947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - (SequenceMachineLib.valuation (A046073 (A002805 (n + 1) + 1).toNat).toNat 2 : ℤ)

end

end A008144.P8249525540196104947

/-! ## A008144.P14579497811829678408

`A000384(n)+record[A326625(2*(n+2))]`
-/

namespace A008144.P14579497811829678408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008144.P14579497811829678408

/-! ## A008144.P1620931378459215867

`A008013(n)+A003982(A000142(n))`
-/

namespace A008144.P1620931378459215867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008013 n + A003982 (A000142 n).toNat

end

end A008144.P1620931378459215867

/-! ## A008144.P9236238004303580293

`A301039(n)+A079978(A357160(n))`
-/

namespace A008144.P9236238004303580293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301039 n + A079978 (A357160 n).toNat

end

end A008144.P9236238004303580293

/-!
# A008145: Coordination sequence T2 for Zeolite Code MAZ.

The programs for A008145, there is no canonical definition to state claims against.
-/

/-! ## A008145.P3763203579969158960

`A321537(A279568(n))+A049486(n+1)`
-/

namespace A008145.P3763203579969158960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A279568 n).toNat + A049486 (n + 1)

end

end A008145.P3763203579969158960

/-! ## A008145.P2019418373267636311

`A325031(A281151(n+1))`
-/

namespace A008145.P2019418373267636311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (A281151 (n + 1)).toNat

end

end A008145.P2019418373267636311

/-! ## A008145.P5383121077955962509

`A325031(∑[∑[A338409(n)]])`
-/

namespace A008145.P5383121077955962509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338409 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008145.P5383121077955962509

/-! ## A008145.P1147554174128572879

`∑[record[A213670(A339597(n))]]`
-/

namespace A008145.P1147554174128572879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213670 (A339597 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008145.P1147554174128572879

/-!
# A008147: Coordination sequence T2 for Zeolite Code MEI.

The programs for A008147, there is no canonical definition to state claims against.
-/

/-! ## A008147.P3710501101948025548

`A131396(∑[∑[A204995(n+1)]])`
-/

namespace A008147.P3710501101948025548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008147.P3710501101948025548

/-!
# A008151: Coordination sequence T2 for Zeolite Code MEL.

The programs for A008151, there is no canonical definition to state claims against.
-/

/-! ## A008151.P12319692316656127631

`A324703(n+1)-(A181819(A260464(n))+1)`
-/

namespace A008151.P12319692316656127631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324703 (n + 1) - (A181819 (A260464 n).toNat + 1)

end

end A008151.P12319692316656127631

/-!
# A008153: Coordination sequence T4 for Zeolite Code MEL.

The programs for A008153, there is no canonical definition to state claims against.
-/

/-! ## A008153.P188786860204995912

`∑[∑[A276166(A226897(n+1))]]`
-/

namespace A008153.P188786860204995912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276166 (A226897 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008153.P188786860204995912

/-!
# A008154: Coordination sequence T5 for Zeolite Code MEL.

The programs for A008154, there is no canonical definition to state claims against.
-/

/-! ## A008154.P11057927905352673615

`A009902(n)-A048881(A079935(n+1))`
-/

namespace A008154.P11057927905352673615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009902 n - A048881 (A079935 (n + 1)).toNat

end

end A008154.P11057927905352673615

/-! ## A008154.P4510334113549556951

`A373187(n+1)+A333768(A143351(2*(n+2)))`
-/

namespace A008154.P4510334113549556951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373187 (n + 1) + A333768 (A143351 (2 * (n + 2))).toNat

end

end A008154.P4510334113549556951

/-!
# A008155: Coordination sequence T6 for Zeolite Code MEL.

The programs for A008155, there is no canonical definition to state claims against.
-/

/-! ## A008155.P766303834903017771

`A270995(n)+A171944(A171965(n+3))`
-/

namespace A008155.P766303834903017771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270995 n + A171944 (A171965 (n + 3)).toNat

end

end A008155.P766303834903017771

/-! ## A008155.P12950856432148507889

`A301242(n)+A005136(Δ[A000626(n+1)])`
-/

namespace A008155.P12950856432148507889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301242 n + A005136 (f1 (n + 1) - f1 n).toNat

end

end A008155.P12950856432148507889

/-!
# A008158: Coordination sequence T2 for Zeolite Code MEP.

The programs for A008158, there is no canonical definition to state claims against.
-/

/-! ## A008158.P6124366091406402961

`A008212(n)-A241425(A000142(n))`
-/

namespace A008158.P6124366091406402961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008212 n - A241425 (A000142 n).toNat

end

end A008158.P6124366091406402961

/-! ## A008158.P16428938135777971637

`A008212(n)-A275947(A010842(n))`
-/

namespace A008158.P16428938135777971637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008212 n - A275947 (A010842 n).toNat

end

end A008158.P16428938135777971637

/-! ## A008158.P5240820878810195385

`A008212(n)-A347870(A115088(n))`
-/

namespace A008158.P5240820878810195385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008212 n - A347870 (A115088 n).toNat

end

end A008158.P5240820878810195385

/-!
# A008160: Coordination sequence T1 for Zeolite Code MER.

The programs for A008160, the canonical program `A008160.P193104279552154710` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008160 has offset 0).

The definition of A008160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008160.P193104279552154710

`A008260(n)-A000212(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008160

/-- `A008260(n)-A000212(n)` -/
def P193104279552154710.Spec : Prop :=
  ∀ n, P193104279552154710.a n = A008160 n

theorem P193104279552154710.correct : P193104279552154710.Spec := by
  intro n
  simp only [A008160]

end A008160

/-! ## A008160.P13331980676514411502

`A008260(n)-∑[A004523(n)]`
-/

namespace A008160.P13331980676514411502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008160.P13331980676514411502

namespace A008160

/-- `A008260(n)-∑[A004523(n)]` -/
def P13331980676514411502.Spec : Prop :=
  ∀ n, P13331980676514411502.a n = A008160 n

end A008160

/-! ## A008160.P6433331114599376161

`A008137(n)+A299259(n)-A299258(n)`
-/

namespace A008160.P6433331114599376161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 n + (A299259 n - A299258 n)

end

end A008160.P6433331114599376161

namespace A008160

/-- `A008137(n)+A299259(n)-A299258(n)` -/
def P6433331114599376161.Spec : Prop :=
  ∀ n, P6433331114599376161.a n = A008160 n

end A008160

/-! ## A008160.P150494038434813554

`A008260(n)-A069905(2*n)`
-/

namespace A008160.P150494038434813554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - A069905 (2 * n)

end

end A008160.P150494038434813554

namespace A008160

/-- `A008260(n)-A069905(2*n)` -/
def P150494038434813554.Spec : Prop :=
  ∀ n, P150494038434813554.a n = A008160 n

end A008160

/-! ## A008160.P10983591791209749188

`A008260(n)-∑[A002264(2*n)]`
-/

namespace A008160.P10983591791209749188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008160.P10983591791209749188

namespace A008160

/-- `A008260(n)-∑[A002264(2*n)]` -/
def P10983591791209749188.Spec : Prop :=
  ∀ n, P10983591791209749188.a n = A008160 n

end A008160

/-! ## A008160.P1528306504093046668

`A008260(n)-A002264(n²)`
-/

namespace A008160.P1528306504093046668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - A002264 (n ^ 2)

end

end A008160.P1528306504093046668

namespace A008160

/-- `A008260(n)-A002264(n²)` -/
def P1528306504093046668.Spec : Prop :=
  ∀ n, P1528306504093046668.a n = A008160 n

end A008160

/-!
# A008163: Coordination sequence T11 for Zeolite Code MFI.

The programs for A008163, there is no canonical definition to state claims against.
-/

/-! ## A008163.P468477889488158221

`A008173(n)-A285718(A216247(n))`
-/

namespace A008163.P468477889488158221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008173 n - A285718 (A216247 n).toNat

end

end A008163.P468477889488158221

/-!
# A008164: Coordination sequence T12 for Zeolite Code MFI.

The programs for A008164, there is no canonical definition to state claims against.
-/

/-! ## A008164.P5528430553022466633

`A301061(n)-A124761(A041075(n))`
-/

namespace A008164.P5528430553022466633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301061 n - A124761 (A041075 n).toNat

end

end A008164.P5528430553022466633

/-! ## A008164.P3520198667421263780

`A160914(2*n+1)+A001222(A042657(n))`
-/

namespace A008164.P3520198667421263780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160914 (2 * n + 1) + A001222 (A042657 n).toNat

end

end A008164.P3520198667421263780

/-!
# A008166: Coordination sequence T3 for Zeolite Code MFI.

The programs for A008166, there is no canonical definition to state claims against.
-/

/-! ## A008166.P3484379949639015414

`A056978(A139199(2*(n+2)))+A008229(n)`
-/

namespace A008166.P3484379949639015414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A139199 (2 * (n + 2))).toNat + A008229 n

end

end A008166.P3484379949639015414

/-!
# A008167: Coordination sequence T4 for Zeolite Code MFI.

The programs for A008167, there is no canonical definition to state claims against.
-/

/-! ## A008167.P15493183978895123991

`∑[record[A060209(A306259(n+1))]]`
-/

namespace A008167.P15493183978895123991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060209 (A306259 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008167.P15493183978895123991

/-!
# A008168: Coordination sequence T5 for Zeolite Code MFI.

The programs for A008168, there is no canonical definition to state claims against.
-/

/-! ## A008168.P4495304284018803442

`xor(A243148(A318121(n)), A301058(n))`
-/

namespace A008168.P4495304284018803442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243148 (A318121 n).toNat) (A301058 n)

end

end A008168.P4495304284018803442

/-!
# A008169: Coordination sequence T6 for Zeolite Code MFI.

The programs for A008169, there is no canonical definition to state claims against.
-/

/-! ## A008169.P11840185831730581921

`A045943(n)+A003983(A053404(n))`
-/

namespace A008169.P11840185831730581921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + A003983 (A053404 n).toNat

end

end A008169.P11840185831730581921

/-! ## A008169.P9623163389461218399

`A271775(A003220(n))+A000217(2*n)`
-/

namespace A008169.P9623163389461218399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271775 (A003220 n).toNat + A000217 (2 * n)

end

end A008169.P9623163389461218399

/-!
# A008170: Coordination sequence T7 for Zeolite Code MFI.

The programs for A008170, there is no canonical definition to state claims against.
-/

/-! ## A008170.P4367930886466326321

`A005893(n)+Δ[A302613(n+2)]`
-/

namespace A008170.P4367930886466326321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + (f1 (n + 1) - f1 n)

end

end A008170.P4367930886466326321

/-! ## A008170.P12581530973784654899

`xor(A055639(A071756(n)), A301062(n))`
-/

namespace A008170.P12581530973784654899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055639 (A071756 n).toNat) (A301062 n)

end

end A008170.P12581530973784654899

/-!
# A008171: Coordination sequence T8 for Zeolite Code MFI.

The programs for A008171, there is no canonical definition to state claims against.
-/

/-! ## A008171.P5779097918310312372

`A295659(A338437(n))+A008150(n)`
-/

namespace A008171.P5779097918310312372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A338437 n).toNat + A008150 n

end

end A008171.P5779097918310312372

/-! ## A008171.P4243610981005512232

`or(A008150(n), A320005(A083102(n)))`
-/

namespace A008171.P4243610981005512232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008150 n) (A320005 (A083102 n).toNat)

end

end A008171.P4243610981005512232

/-! ## A008171.P9860841169704965066

`A076408(n+1)-A076493(A076501(n+1))`
-/

namespace A008171.P9860841169704965066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1) - A076493 (A076501 (n + 1)).toNat

end

end A008171.P9860841169704965066

/-! ## A008171.P9917207693033870284

`A174172(n+1)-A076493(A076501(n+1))`
-/

namespace A008171.P9917207693033870284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174172 (n + 1) - A076493 (A076501 (n + 1)).toNat

end

end A008171.P9917207693033870284

/-!
# A008172: Coordination sequence T9 for Zeolite Code MFI.

The programs for A008172, there is no canonical definition to state claims against.
-/

/-! ## A008172.P4668944314431194151

`or(A089051(A007226(n)), A301075(n))`
-/

namespace A008172.P4668944314431194151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089051 (A007226 n).toNat) (A301075 n)

end

end A008172.P4668944314431194151

/-! ## A008172.P11227816895546216552

`or(A008005(n), A347697(A149025(n)))`
-/

namespace A008172.P11227816895546216552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008005 n) (A347697 (A149025 n).toNat)

end

end A008172.P11227816895546216552

/-!
# A008173: Coordination sequence T1 for Zeolite Code MFS.

The programs for A008173, there is no canonical definition to state claims against.
-/

/-! ## A008173.P2614550561959876251

`A285718(A216247(n))+A008163(n)`
-/

namespace A008173.P2614550561959876251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (A216247 n).toNat + A008163 n

end

end A008173.P2614550561959876251

/-! ## A008173.P17033008376185921848

`A003056(or(A050404(n), A056288(n+1)))`
-/

namespace A008173.P17033008376185921848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A050404 n) (A056288 (n + 1))).toNat

end

end A008173.P17033008376185921848

/-! ## A008173.P1529311382737796807

`xor(A008199(n), A023416(A303160(n+1)))`
-/

namespace A008173.P1529311382737796807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008199 n) (A023416 (A303160 (n + 1)).toNat)

end

end A008173.P1529311382737796807

/-!
# A008176: Coordination sequence T4 for Zeolite Code MFS.

The programs for A008176, there is no canonical definition to state claims against.
-/

/-! ## A008176.P14163189013368067233

`A008107(n)-A031346(A015525(n))`
-/

namespace A008176.P14163189013368067233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008107 n - A031346 (A015525 n).toNat

end

end A008176.P14163189013368067233

/-!
# A008181: Coordination sequence T1 for Zeolite Code MON.

The programs for A008181, there is no canonical definition to state claims against.
-/

/-! ## A008181.P13068001585954773193

`A082447(C(A008112(n), A082528(n)))`
-/

namespace A008181.P13068001585954773193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Nat.choose (A008112 n).toNat (A082528 n).toNat)

end

end A008181.P13068001585954773193

/-!
# A008185: Coordination sequence T4 for Zeolite Code MOR.

The programs for A008185, there is no canonical definition to state claims against.
-/

/-! ## A008185.P10131816165788320747

`A003056(floor(A038428(n)²/ϕ)+1)`
-/

namespace A008185.P10131816165788320747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊(A038428 n ^ 2 : ℝ) / Real.goldenRatio⌋ + 1).toNat

end

end A008185.P10131816165788320747

/-!
# A008186: Coordination sequence T1 for Zeolite Code MTN.

The programs for A008186, there is no canonical definition to state claims against.
-/

/-! ## A008186.P1376584554057486865

`A350237(2*(n+1))+A043542(A244720(n))`
-/

namespace A008186.P1376584554057486865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350237 (2 * (n + 1)) + A043542 (A244720 (n + 13)).toNat

end

end A008186.P1376584554057486865

/-!
# A008187: Coordination sequence T2 for Zeolite Code MTN.

The programs for A008187, there is no canonical definition to state claims against.
-/

/-! ## A008187.P12348283921625547796

`A206928(A182978(n+1))`
-/

namespace A008187.P12348283921625547796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (A182978 (n + 1)).toNat

end

end A008187.P12348283921625547796

/-! ## A008187.P18113703413066919593

`A325101(∑[∑[A027082(2*n+3)]])`
-/

namespace A008187.P18113703413066919593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008187.P18113703413066919593

/-! ## A008187.P12971079339556153649

`A336839(n+1)+A324774(A007504(n))`
-/

namespace A008187.P12971079339556153649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1) + A324774 (A007504 n).toNat

end

end A008187.P12971079339556153649

/-!
# A008188: Coordination sequence T3 for Zeolite Code MTN.

The programs for A008188, there is no canonical definition to state claims against.
-/

/-! ## A008188.P12536532816382736043

`A273876(A187490(n+8))`
-/

namespace A008188.P12536532816382736043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273876 (A187490 (n + 8)).toNat

end

end A008188.P12536532816382736043

/-! ## A008188.P10200686201335507769

`A008574(ceil(log2(A353536(n))))`
-/

namespace A008188.P10200686201335507769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ⌈Real.logb 2 (A353536 n : ℝ)⌉.toNat

end

end A008188.P10200686201335507769

/-! ## A008188.P5883829735872142086

`A138554(A175654(n)*A270733(n))`
-/

namespace A008188.P5883829735872142086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A175654 n * A270733 n).toNat

end

end A008188.P5883829735872142086

/-!
# A008189: Coordination sequence T1 for Zeolite Code MTT.

The programs for A008189, there is no canonical definition to state claims against.
-/

/-! ## A008189.P329576695623950581

`A136110(A147623(n)+1)`
-/

namespace A008189.P329576695623950581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (A147623 n + 1).toNat

end

end A008189.P329576695623950581

/-! ## A008189.P12256472406102602068

`A136110(or(1, A147623(n)))`
-/

namespace A008189.P12256472406102602068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (Int.lor 1 (A147623 n)).toNat

end

end A008189.P12256472406102602068

/-! ## A008189.P4483448109000083291

`A350237(2*(n+1))+A046951(ceil(7*n/2)+2)`
-/

namespace A008189.P4483448109000083291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350237 (2 * (n + 1)) + A046951 (⌈7 * ((n : ℚ) / 2)⌉ + 2).toNat

end

end A008189.P4483448109000083291

/-! ## A008189.P5956479069594906443

`A124762(A099947(n))+A008242(n)`
-/

namespace A008189.P5956479069594906443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A099947 n).toNat + A008242 n

end

end A008189.P5956479069594906443

/-!
# A008190: Coordination sequence T2 for Zeolite Code MTT.

The programs for A008190, there is no canonical definition to state claims against.
-/

/-! ## A008190.P10614738285024994229

`∑[∑[A136698(A268230(n))]]`
-/

namespace A008190.P10614738285024994229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136698 (A268230 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008190.P10614738285024994229

/-! ## A008190.P14033726422554485598

`∑[∑[A186643(A242587(n))]]`
-/

namespace A008190.P14033726422554485598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186643 (A242587 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008190.P14033726422554485598

/-! ## A008190.P10727184121856185634

`A008574(∑[record[A187752(n)]])`
-/

namespace A008190.P10727184121856185634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187752 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008190.P10727184121856185634

/-! ## A008190.P10503751219638603914

`∑[record[A167489(A211645(n))]]`
-/

namespace A008190.P10503751219638603914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A211645 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008190.P10503751219638603914

/-!
# A008192: Coordination sequence T4 for Zeolite Code MTT.

The programs for A008192, there is no canonical definition to state claims against.
-/

/-! ## A008192.P924069592124029871

`xor(A025442(A018542(n+1)), A301046(n))`
-/

namespace A008192.P924069592124029871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 (A018542 (n + 1)).toNat) (A301046 n)

end

end A008192.P924069592124029871

/-!
# A008193: Coordination sequence T5 for Zeolite Code MTT.

The programs for A008193, there is no canonical definition to state claims against.
-/

/-! ## A008193.P4176819296763973985

`A001000(2*n+1)-A055642(A192382(n+1))`
-/

namespace A008193.P4176819296763973985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (2 * n + 1) - A055642 (A192382 (n + 1)).toNat

end

end A008193.P4176819296763973985

/-!
# A008195: Coordination sequence T7 for Zeolite Code MTT.

The programs for A008195, there is no canonical definition to state claims against.
-/

/-! ## A008195.P7028740336842564989

`A345167(A010000(n)+A008302(n+7))`
-/

namespace A008195.P7028740336842564989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A010000 n + A008302 (n + 7)).toNat

end

end A008195.P7028740336842564989

/-!
# A008196: Coordination sequence T1 for Zeolite Code MTW.

The programs for A008196, there is no canonical definition to state claims against.
-/

/-! ## A008196.P10815942678881602243

`A336921(A005284(n+6))+A038439(n)`
-/

namespace A008196.P10815942678881602243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A005284 (n + 6)).toNat + A038439 n

end

end A008196.P10815942678881602243

/-!
# A008197: Coordination sequence T2 for Zeolite Code MTW.

The programs for A008197, there is no canonical definition to state claims against.
-/

/-! ## A008197.P17783697861044447090

`∑[record[A008684(A053982(n+1))]]`
-/

namespace A008197.P17783697861044447090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A053982 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008197.P17783697861044447090

/-! ## A008197.P456695853368595170

`A043545(A002104(n))+A008004(n)`
-/

namespace A008197.P456695853368595170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A002104 n).toNat + A008004 n

end

end A008197.P456695853368595170

/-! ## A008197.P10776624277726255451

`A008004(n)+A001221(A245138(n))`
-/

namespace A008197.P10776624277726255451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008004 n + A001221 (A245138 n).toNat

end

end A008197.P10776624277726255451

/-!
# A008198: Coordination sequence T3 for Zeolite Code MTW.

The programs for A008198, there is no canonical definition to state claims against.
-/

/-! ## A008198.P16785962694803334262

`or(A301011(n), A322134(A192701(n+1)))`
-/

namespace A008198.P16785962694803334262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301011 n) (A322134 (A192701 (n + 1)).toNat)

end

end A008198.P16785962694803334262

/-!
# A008199: Coordination sequence T4 for Zeolite Code MTW.

The programs for A008199, there is no canonical definition to state claims against.
-/

/-! ## A008199.P2375474274376822265

`A301057(n)-A069283(A092266(n))`
-/

namespace A008199.P2375474274376822265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301057 n - A069283 (A092266 n).toNat

end

end A008199.P2375474274376822265

/-! ## A008199.P17120071523946854604

`A301057(n)-A107393(A035481(n))`
-/

namespace A008199.P17120071523946854604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301057 n - A107393 (A035481 n).toNat

end

end A008199.P17120071523946854604

/-! ## A008199.P4816190772777192676

`A301061(n)-A101606(A053496(n))`
-/

namespace A008199.P4816190772777192676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301061 n - A101606 (A053496 n).toNat

end

end A008199.P4816190772777192676

