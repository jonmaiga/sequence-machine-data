import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A032600: Difference between n-th lucky number and n-th prime number.

The programs for A032600, there is no canonical definition to state claims against.
-/

/-! ## A032600.P13383720026687190959

`A000959(n+1)-A000040(n+1)`
-/

namespace A032600.P13383720026687190959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - A000040 (n + 1)

end

end A032600.P13383720026687190959

/-! ## A032600.P5163090007110509279

`A000959(n+1)-Δ[A007504(n)]`
-/

namespace A032600.P5163090007110509279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - (f1 (n + 1) - f1 n)

end

end A032600.P5163090007110509279

/-! ## A032600.P14025168794814913668

`A032602(n+1)-A100484(n+1)`
-/

namespace A032600.P14025168794814913668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A100484 (n + 1)

end

end A032600.P14025168794814913668

/-! ## A032600.P15421962744414292568

`A139269(n+1)-A032602(n+1)`
-/

namespace A032600.P15421962744414292568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139269 (n + 1) - A032602 (n + 1)

end

end A032600.P15421962744414292568

/-! ## A032600.P7399647025594800036

`A000959(n+1)-abs(A273960(n+1))`
-/

namespace A032600.P7399647025594800036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - |A273960 (n + 1)|

end

end A032600.P7399647025594800036

/-! ## A032600.P10063665019531347110

`A000959(n+1)-sqrt(A001248(n+1))`
-/

namespace A032600.P10063665019531347110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A032600.P10063665019531347110

/-! ## A032600.P13160480384154530554

`sqrt(A032598(n+1))-A000040(n+1)`
-/

namespace A032600.P13160480384154530554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ) - (A000040 (n + 1) : ℝ)

end

end A032600.P13160480384154530554

/-! ## A032600.P1821587362341308571

`A000959(n+1)-∑[A054541(n+1)]`
-/

namespace A032600.P1821587362341308571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032600.P1821587362341308571

/-! ## A032600.P11619548294742023496

`A000959(n+1)-p?[A015919(n+1)]`
-/

namespace A032600.P11619548294742023496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032600.P11619548294742023496

/-! ## A032600.P4300663985902794971

`A000959(n+1)-(A006093(n+1)+1)`
-/

namespace A032600.P4300663985902794971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - (A006093 (n + 1) + 1)

end

end A032600.P4300663985902794971

/-! ## A032600.P17323288645363009986

`A000959(n+1)+1-A008864(n+1)`
-/

namespace A032600.P17323288645363009986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (1 - A008864 (n + 1))

end

end A032600.P17323288645363009986

/-! ## A032600.P13165212917800192130

`A000959(n+1)-(A040976(n+1)+2)`
-/

namespace A032600.P13165212917800192130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - (A040976 (n + 1) + 2)

end

end A032600.P13165212917800192130

/-! ## A032600.P17161942744116218216

`A032602(n+1)-2*A000040(n+1)`
-/

namespace A032600.P17161942744116218216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - 2 * A000040 (n + 1)

end

end A032600.P17161942744116218216

/-! ## A032600.P7274132327768796073

`2*A000959(n+1)-A032602(n+1)`
-/

namespace A032600.P7274132327768796073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000959 (n + 1) - A032602 (n + 1)

end

end A032600.P7274132327768796073

/-! ## A032600.P1731820108041824043

`A139269(n+1)/2-A000040(n+1)`
-/

namespace A032600.P1731820108041824043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (n + 1) : ℚ) / 2 - (A000040 (n + 1) : ℚ)

end

end A032600.P1731820108041824043

/-! ## A032600.P12434364765424976850

`A000959(n+1)-(A014689(n+1)+1+n)`
-/

namespace A032600.P12434364765424976850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - (A014689 (n + 1) + 1 + (n : ℤ))

end

end A032600.P12434364765424976850

/-! ## A032600.P14136534924540211843

`A000959(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A032600.P14136534924540211843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A032600.P14136534924540211843

/-! ## A032600.P8552057707745758224

`A000959(n+1)+A255324(n+2)-A003309(n+2)`
-/

namespace A032600.P8552057707745758224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A255324 (n + 2) - A003309 (n + 2))

end

end A032600.P8552057707745758224

/-! ## A032600.P13542128215567049663

`A032601(n+1)/A000040(n+1)-A000040(n+1)`
-/

namespace A032600.P13542128215567049663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A000040 (n + 1) : ℚ)

end

end A032600.P13542128215567049663

/-! ## A032600.P16674420814842720683

`A000959(n+1)-A032601(n+1)/A000959(n+1)`
-/

namespace A032600.P16674420814842720683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℚ) - (A032601 (n + 1) : ℚ) / (A000959 (n + 1) : ℚ)

end

end A032600.P16674420814842720683

/-!
# A032601: a(n) = n-th prime number * n-th lucky number.

The programs for A032601, there is no canonical definition to state claims against.
-/

/-! ## A032601.P13347817676401027907

`A000040(n+1)*A000959(n+1)`
-/

namespace A032601.P13347817676401027907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000959 (n + 1)

end

end A032601.P13347817676401027907

/-! ## A032601.P1086290222358056541

`Δ[A007504(n)]*A000959(n+1)`
-/

namespace A032601.P1086290222358056541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000959 (n + 1)

end

end A032601.P1086290222358056541

/-! ## A032601.P3971857229611231896

`abs(A000959(n+1)*A273960(n+1))`
-/

namespace A032601.P3971857229611231896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000959 (n + 1) * A273960 (n + 1)|

end

end A032601.P3971857229611231896

/-! ## A032601.P6647954812179442135

`sqrt(A001248(n+1))*A000959(n+1)`
-/

namespace A032601.P6647954812179442135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A000959 (n + 1) : ℝ)

end

end A032601.P6647954812179442135

/-! ## A032601.P5576605770644288731

`sqrt(A032598(n+1))*A000040(n+1)`
-/

namespace A032601.P5576605770644288731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ)

end

end A032601.P5576605770644288731

/-! ## A032601.P11123276785372536539

`∑[A054541(n+1)]*A000959(n+1)`
-/

namespace A032601.P11123276785372536539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000959 (n + 1)

end

end A032601.P11123276785372536539

/-! ## A032601.P177281323552466543

`p?[A015919(n+1)]*A000959(n+1)`
-/

namespace A032601.P177281323552466543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000959 (n + 1)

end

end A032601.P177281323552466543

/-! ## A032601.P13402536364217659569

`(A006093(n+1)+1)*A000959(n+1)`
-/

namespace A032601.P13402536364217659569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A000959 (n + 1)

end

end A032601.P13402536364217659569

/-! ## A032601.P665263621195832846

`(A008864(n+1)-1)*A000959(n+1)`
-/

namespace A032601.P665263621195832846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A000959 (n + 1)

end

end A032601.P665263621195832846

/-! ## A032601.P7514639333596453801

`(A040976(n+1)+2)*A000959(n+1)`
-/

namespace A032601.P7514639333596453801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A000959 (n + 1)

end

end A032601.P7514639333596453801

/-! ## A032601.P13889032790788343785

`A000040(n+1)/2*A139269(n+1)`
-/

namespace A032601.P13889032790788343785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A139269 (n + 1) : ℚ)

end

end A032601.P13889032790788343785

/-! ## A032601.P995436697553434180

`(A014689(n+1)+1+n)*A000959(n+1)`
-/

namespace A032601.P995436697553434180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014689 (n + 1) + 1 + (n : ℤ)) * A000959 (n + 1)

end

end A032601.P995436697553434180

/-! ## A032601.P5750986865660434032

`(A007504(n+1)-A007504(n))*A000959(n+1)`
-/

namespace A032601.P5750986865660434032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A000959 (n + 1)

end

end A032601.P5750986865660434032

/-! ## A032601.P10302178881069538032

`(A032600(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A032601.P10302178881069538032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032600 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A032601.P10302178881069538032

/-! ## A032601.P12662659839278094908

`(A032602(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A032601.P12662659839278094908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032602 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A032601.P12662659839278094908

/-! ## A032601.P6771738919881672899

`(A000959(n+1)-A032600(n+1))*A000959(n+1)`
-/

namespace A032601.P6771738919881672899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) - A032600 (n + 1)) * A000959 (n + 1)

end

end A032601.P6771738919881672899

/-! ## A032601.P7420762515909108076

`(A032602(n+1)-A000959(n+1))*A000959(n+1)`
-/

namespace A032601.P7420762515909108076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032602 (n + 1) - A000959 (n + 1)) * A000959 (n + 1)

end

end A032601.P7420762515909108076

/-! ## A032601.P3175027053966468051

`(A003309(n+2)-A255324(n+2))*A000959(n+1)`
-/

namespace A032601.P3175027053966468051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 2) - A255324 (n + 2)) * A000959 (n + 1)

end

end A032601.P3175027053966468051

/-! ## A032601.P15904390058658746584

`A000959(n+1)*A008578(n+2)`
-/

namespace A032601.P15904390058658746584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) * A008578 (n + 2)

end

end A032601.P15904390058658746584

/-! ## A032601.P15296310999229521479

`A000959(n+1)*A182986(n+2)`
-/

namespace A032601.P15296310999229521479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) * A182986 (n + 2)

end

end A032601.P15296310999229521479

/-!
# A032602: a(n) = n-th prime number + n-th lucky number.

The programs for A032602, there is no canonical definition to state claims against.
-/

/-! ## A032602.P13424271996333257503

`A000040(n+1)+A000959(n+1)`
-/

namespace A032602.P13424271996333257503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000959 (n + 1)

end

end A032602.P13424271996333257503

/-! ## A032602.P17955648589040345070

`A000959(n+1)+Δ[A007504(n)]`
-/

namespace A032602.P17955648589040345070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (f1 (n + 1) - f1 n)

end

end A032602.P17955648589040345070

/-! ## A032602.P11299772364290106855

`A100484(n+1)+A032600(n+1)`
-/

namespace A032602.P11299772364290106855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A032600 (n + 1)

end

end A032602.P11299772364290106855

/-! ## A032602.P12646672863545902257

`A139269(n+1)-A032600(n+1)`
-/

namespace A032602.P12646672863545902257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139269 (n + 1) - A032600 (n + 1)

end

end A032602.P12646672863545902257

/-! ## A032602.P2107743037216559697

`A032603(n+1)%A001748(n+1)`
-/

namespace A032602.P2107743037216559697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032603 (n + 1)) (A001748 (n + 1))

end

end A032602.P2107743037216559697

/-! ## A032602.P1436006438771394039

`A000959(n+1)+abs(A273960(n+1))`
-/

namespace A032602.P1436006438771394039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + |A273960 (n + 1)|

end

end A032602.P1436006438771394039

/-! ## A032602.P9063623292637034218

`A000959(n+1)+sqrt(A001248(n+1))`
-/

namespace A032602.P9063623292637034218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A032602.P9063623292637034218

/-! ## A032602.P3485317316494507131

`A000040(n+1)+sqrt(A032598(n+1))`
-/

namespace A032602.P3485317316494507131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) + Real.sqrt (A032598 (n + 1) : ℝ)

end

end A032602.P3485317316494507131

/-! ## A032602.P18058049383501315230

`A000959(n+1)+∑[A054541(n+1)]`
-/

namespace A032602.P18058049383501315230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032602.P18058049383501315230

/-! ## A032602.P7066371128234551113

`A000959(n+1)+p?[A015919(n+1)]`
-/

namespace A032602.P7066371128234551113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032602.P7066371128234551113

/-! ## A032602.P3184243446982393803

`A000959(n+1)+A006093(n+1)+1`
-/

namespace A032602.P3184243446982393803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A006093 (n + 1) + 1)

end

end A032602.P3184243446982393803

/-! ## A032602.P6675330094672157887

`A000959(n+1)+A008864(n+1)-1`
-/

namespace A032602.P6675330094672157887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A008864 (n + 1) - 1)

end

end A032602.P6675330094672157887

/-! ## A032602.P5182866026520134863

`A000959(n+1)+A040976(n+1)+2`
-/

namespace A032602.P5182866026520134863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A040976 (n + 1) + 2)

end

end A032602.P5182866026520134863

/-! ## A032602.P10770995309178360660

`A032600(n+1)+2*A000040(n+1)`
-/

namespace A032602.P10770995309178360660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (n + 1) + 2 * A000040 (n + 1)

end

end A032602.P10770995309178360660

/-! ## A032602.P14403888132856215667

`2*A000959(n+1)-A032600(n+1)`
-/

namespace A032602.P14403888132856215667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000959 (n + 1) - A032600 (n + 1)

end

end A032602.P14403888132856215667

/-! ## A032602.P3395005717776370994

`A000040(n+1)+A139269(n+1)/2`
-/

namespace A032602.P3395005717776370994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A139269 (n + 1) : ℚ) / 2

end

end A032602.P3395005717776370994

/-! ## A032602.P5550064647283226385

`A000959(n+1)+A014689(n+1)+1+n`
-/

namespace A032602.P5550064647283226385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A014689 (n + 1) + 1 + (n : ℤ))

end

end A032602.P5550064647283226385

/-! ## A032602.P5048324955777894851

`A000959(n+1)+A007504(n+1)-A007504(n)`
-/

namespace A032602.P5048324955777894851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A007504 (n + 1) - A007504 n)

end

end A032602.P5048324955777894851

/-! ## A032602.P3631820045215698376

`A000040(n+1)+A032601(n+1)/A000040(n+1)`
-/

namespace A032602.P3631820045215698376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A032602.P3631820045215698376

/-! ## A032602.P384895545321167548

`A000959(n+1)+A032601(n+1)/A000959(n+1)`
-/

namespace A032602.P384895545321167548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℚ) + (A032601 (n + 1) : ℚ) / (A000959 (n + 1) : ℚ)

end

end A032602.P384895545321167548

/-!
# A032603: Concatenation of n-th prime number and n-th lucky number.

The programs for A032603, there is no canonical definition to state claims against.
-/

/-! ## A032603.P9586040626800912692

`A032600(A187829(n+1))+A020338(A000040(n+1))`
-/

namespace A032603.P9586040626800912692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (A187829 (n + 1)).toNat + A020338 (A000040 (n + 1)).toNat

end

end A032603.P9586040626800912692

/-! ## A032603.P1532696280513218541

`A176597(n+1)-A036263(A375516(n))`
-/

namespace A032603.P1532696280513218541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176597 (n + 1) - A036263 (A375516 n).toNat

end

end A032603.P1532696280513218541

/-!
# A032605: Prime numbers indexed by lucky numbers.

The programs for A032605, there is no canonical definition to state claims against.
-/

/-! ## A032605.P5002616646109150997

`A000040(A000959(n+1))`
-/

namespace A032605.P5002616646109150997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000959 (n + 1)).toNat

end

end A032605.P5002616646109150997

/-! ## A032605.P11073771009069063962

`A128886(n+1)+A032606(n+1)`
-/

namespace A032605.P11073771009069063962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128886 (n + 1) + A032606 (n + 1)

end

end A032605.P11073771009069063962

/-! ## A032605.P16311944812082125021

`A031368(A049781(n+1))`
-/

namespace A032605.P16311944812082125021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A049781 (n + 1)).toNat

end

end A032605.P16311944812082125021

/-! ## A032605.P2809821057881868912

`A000040(sqrt(A032598(n+1)))`
-/

namespace A032605.P2809821057881868912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A032598 (n + 1) : ℝ))).toNat

end

end A032605.P2809821057881868912

/-! ## A032605.P17109941794471316018

`A008578(A000959(n+1)+1)`
-/

namespace A032605.P17109941794471316018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000959 (n + 1) + 1).toNat

end

end A032605.P17109941794471316018

/-! ## A032605.P7330618180244547621

`A182986(A000959(n+1)+1)`
-/

namespace A032605.P7330618180244547621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A000959 (n + 1) + 1).toNat

end

end A032605.P7330618180244547621

/-! ## A032605.P15984712574880474090

`A000040(A139269(n+1)/2)`
-/

namespace A032605.P15984712574880474090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

end

end A032605.P15984712574880474090

/-! ## A032605.P15700700757550792544

`A000040(eq[1, A260429(n+1)]+1)`
-/

namespace A032605.P15700700757550792544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A032605.P15700700757550792544

/-! ## A032605.P3875744605828379213

`A000040(lt[A264940(n+1), 1]+1)`
-/

namespace A032605.P3875744605828379213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A032605.P3875744605828379213

/-! ## A032605.P5289744435675313670

`A000040(lt[A260429(n+1), 2]+1)`
-/

namespace A032605.P5289744435675313670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A032605.P5289744435675313670

/-! ## A032605.P1615603185016623841

`record[A000040(n+1)*A145649(n+1)]`
-/

namespace A032605.P1615603185016623841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032605.P1615603185016623841

/-! ## A032605.P11354100712377074180

`A000040(record[(n+1)/A260429(n+1)])`
-/

namespace A032605.P11354100712377074180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A032605.P11354100712377074180

/-! ## A032605.P7280191608787701313

`A000040(eq[1, A264940(n+1)+1]+1)`
-/

namespace A032605.P7280191608787701313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A032605.P7280191608787701313

/-! ## A032605.P3302476021751371707

`record[(1-A260437(n+1))*A000040(n+1)]`
-/

namespace A032605.P3302476021751371707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A260437 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032605.P3302476021751371707

/-! ## A032605.P355488123289997109

`A008578(record[(n+1)/A260429(n+1)]+1)`
-/

namespace A032605.P355488123289997109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A260429 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A032605.P355488123289997109

/-! ## A032605.P3886724563123866875

`record[(2-A260429(n+1))*A000040(n+1)]`
-/

namespace A032605.P3886724563123866875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A260429 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032605.P3886724563123866875

/-! ## A032605.P7757400113425582831

`A000040(A032600(n+1)+A000040(n+1))`
-/

namespace A032605.P7757400113425582831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A032600 (n + 1) + A000040 (n + 1)).toNat

end

end A032605.P7757400113425582831

/-! ## A032605.P7618806875639165910

`A000040(A032602(n+1)-A000040(n+1))`
-/

namespace A032605.P7618806875639165910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A032602 (n + 1) - A000040 (n + 1)).toNat

end

end A032605.P7618806875639165910

/-! ## A032605.P13552187661573066633

`A000040(A032601(n+1)/A000040(n+1))`
-/

namespace A032605.P13552187661573066633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A032605.P13552187661573066633

/-! ## A032605.P11922157185312559831

`A073846(A139269(n+1))`
-/

namespace A032605.P11922157185312559831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A139269 (n + 1)).toNat

end

end A032605.P11922157185312559831

/-!
# A032606: Lucky numbers indexed by prime numbers.

The programs for A032606, there is no canonical definition to state claims against.
-/

/-! ## A032606.P3372296471764961265

`A000959(A000040(n+1))`
-/

namespace A032606.P3372296471764961265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000040 (n + 1)).toNat

end

end A032606.P3372296471764961265

/-! ## A032606.P18125743088750821382

`A000959(Δ[A007504(n)])`
-/

namespace A032606.P18125743088750821382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (f1 (n + 1) - f1 n).toNat

end

end A032606.P18125743088750821382

/-! ## A032606.P17805557976127959368

`A000959(abs(A273960(n+1)))`
-/

namespace A032606.P17805557976127959368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 |A273960 (n + 1)|.toNat

end

end A032606.P17805557976127959368

/-! ## A032606.P12361544432682124056

`A000959(sqrt(A001248(n+1)))`
-/

namespace A032606.P12361544432682124056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A032606.P12361544432682124056

/-! ## A032606.P13177571119852924754

`A000959(∑[A054541(n+1)])`
-/

namespace A032606.P13177571119852924754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032606.P13177571119852924754

/-! ## A032606.P2897097504953053126

`A000959(p?[A015919(n+1)])`
-/

namespace A032606.P2897097504953053126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A032606.P2897097504953053126

/-! ## A032606.P16846875418422746862

`A000959(A006093(n+1)+1)`
-/

namespace A032606.P16846875418422746862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A006093 (n + 1) + 1).toNat

end

end A032606.P16846875418422746862

/-! ## A032606.P9856521618982045622

`A000959(A008864(n+1)-1)`
-/

namespace A032606.P9856521618982045622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A008864 (n + 1) - 1).toNat

end

end A032606.P9856521618982045622

/-! ## A032606.P17390748163570597471

`A000959(A040976(n+1)+2)`
-/

namespace A032606.P17390748163570597471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A040976 (n + 1) + 2).toNat

end

end A032606.P17390748163570597471

/-! ## A032606.P15789226790913445807

`A000959(A014689(n+1)+1+n)`
-/

namespace A032606.P15789226790913445807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A032606.P15789226790913445807

/-! ## A032606.P10620457817982929383

`A032605(n+1)-A128886(n+1)`
-/

namespace A032606.P10620457817982929383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1) - A128886 (n + 1)

end

end A032606.P10620457817982929383

/-! ## A032606.P3407988585995312015

`A000959(A033286(n+1)/(n+1))`
-/

namespace A032606.P3407988585995312015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A032606.P3407988585995312015

/-! ## A032606.P13225251530696102576

`A000959(A007504(n+1)-A007504(n))`
-/

namespace A032606.P13225251530696102576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A007504 (n + 1) - A007504 n).toNat

end

end A032606.P13225251530696102576

/-! ## A032606.P5207376672347910599

`A000959(A000959(n+1)-A032600(n+1))`
-/

namespace A032606.P5207376672347910599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (n + 1) - A032600 (n + 1)).toNat

end

end A032606.P5207376672347910599

/-! ## A032606.P9607616074877132367

`A000959(A032602(n+1)-A000959(n+1))`
-/

namespace A032606.P9607616074877132367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A032602 (n + 1) - A000959 (n + 1)).toNat

end

end A032606.P9607616074877132367

/-! ## A032606.P15788561408384156649

`A000959(A032601(n+1)/A000959(n+1))`
-/

namespace A032606.P15788561408384156649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.roundAway ((A032601 (n + 1) : ℚ) / (A000959 (n + 1) : ℚ))).toNat

end

end A032606.P15788561408384156649

/-! ## A032606.P14273150764353655835

`A000959(A003309(n+2)-A255324(n+2))`
-/

namespace A032606.P14273150764353655835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A003309 (n + 2) - A255324 (n + 2)).toNat

end

end A032606.P14273150764353655835

/-! ## A032606.P2415677503842807347

`A000959(A008578(n+2))`
-/

namespace A032606.P2415677503842807347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A008578 (n + 2)).toNat

end

end A032606.P2415677503842807347

/-! ## A032606.P15409044030883437130

`A000959(A182986(n+2))`
-/

namespace A032606.P15409044030883437130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A182986 (n + 2)).toNat

end

end A032606.P15409044030883437130

/-! ## A032606.P15307357349155989770

`A000959(p?[A000961(n+1)])`
-/

namespace A032606.P15307357349155989770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A032606.P15307357349155989770

/-!
# A032607: Concatenation of n and n + 2 or {n,n+2}.

The programs for A032607, the canonical program `A032607.P17286791914416164224` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032607 has offset 1).

The definition of A032607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032607.P17286791914416164224

`(n+1)*(10^(1+A004216(n+3))+1)+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032607

/-- `(n+1)*(10^(1+A004216(n+3))+1)+2` -/
def P17286791914416164224.Spec : Prop :=
  ∀ n, P17286791914416164224.a n = (A032607 (n + 1) : ℚ)

end A032607

/-! ## A032607.P10524027751237045614

`A084855(∑[n+3]+1)`
-/

namespace A032607.P10524027751237045614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032607.P10524027751237045614

namespace A032607

/-- `A084855(∑[n+3]+1)` -/
def P10524027751237045614.Spec : Prop :=
  ∀ n, P10524027751237045614.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P18128577662282367023

`or(char[2], A084855(A034856(n+2)))`
-/

namespace A032607.P18128577662282367023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084855 (A034856 (n + 2)).toNat)

end

end A032607.P18128577662282367023

namespace A032607

/-- `or(char[2], A084855(A034856(n+2)))` -/
def P18128577662282367023.Spec : Prop :=
  ∀ n, P18128577662282367023.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P3054643355315498266

`A033999(n)²*A084855(A034856(n+2))`
-/

namespace A032607.P3054643355315498266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A084855 (A034856 (n + 2)).toNat

end

end A032607.P3054643355315498266

namespace A032607

/-- `A033999(n)²*A084855(A034856(n+2))` -/
def P3054643355315498266.Spec : Prop :=
  ∀ n, P3054643355315498266.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P6168368999825181054

`A130151(n)²*A084855(A034856(n+2))`
-/

namespace A032607.P6168368999825181054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n ^ 2 * A084855 (A034856 (n + 2)).toNat

end

end A032607.P6168368999825181054

namespace A032607

/-- `A130151(n)²*A084855(A034856(n+2))` -/
def P6168368999825181054.Spec : Prop :=
  ∀ n, P6168368999825181054.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P6396056784775184123

`A084855(A034856(n+2))+A000007(n+1)`
-/

namespace A032607.P6396056784775184123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A032607.P6396056784775184123

namespace A032607

/-- `A084855(A034856(n+2))+A000007(n+1)` -/
def P6396056784775184123.Spec : Prop :=
  ∀ n, P6396056784775184123.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P3497622431167553673

`A084855(A034856(n+2))+A000038(n+1)`
-/

namespace A032607.P3497622431167553673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A032607.P3497622431167553673

namespace A032607

/-- `A084855(A034856(n+2))+A000038(n+1)` -/
def P3497622431167553673.Spec : Prop :=
  ∀ n, P3497622431167553673.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P11166537962694409765

`A000040(n+2)%2*A084855(A034856(n+2))`
-/

namespace A032607.P11166537962694409765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A084855 (A034856 (n + 2)).toNat

end

end A032607.P11166537962694409765

namespace A032607

/-- `A000040(n+2)%2*A084855(A034856(n+2))` -/
def P11166537962694409765.Spec : Prop :=
  ∀ n, P11166537962694409765.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P17000934711519023298

`A018252(gcd(n, n+1))*A084855(A034856(n+2))`
-/

namespace A032607.P17000934711519023298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A084855 (A034856 (n + 2)).toNat

end

end A032607.P17000934711519023298

namespace A032607

/-- `A018252(gcd(n, n+1))*A084855(A034856(n+2))` -/
def P17000934711519023298.Spec : Prop :=
  ∀ n, P17000934711519023298.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P15222737231258101214

`A084855(A034856(n+2))-A020639(2*(n+1))+2`
-/

namespace A032607.P15222737231258101214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A034856 (n + 2)).toNat - A020639 (2 * (n + 1)) + 2

end

end A032607.P15222737231258101214

namespace A032607

/-- `A084855(A034856(n+2))-A020639(2*(n+1))+2` -/
def P15222737231258101214.Spec : Prop :=
  ∀ n, P15222737231258101214.a n = A032607 (n + 1)

end A032607

/-! ## A032607.P4849467299086924189

`A084855(A034856(n+2))+floor(A000040(n+1)%2/2)`
-/

namespace A032607.P4849467299086924189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A034856 (n + 2)).toNat + ⌊(Int.tmod (A000040 (n + 1)) 2 : ℚ) / 2⌋

end

end A032607.P4849467299086924189

namespace A032607

/-- `A084855(A034856(n+2))+floor(A000040(n+1)%2/2)` -/
def P4849467299086924189.Spec : Prop :=
  ∀ n, P4849467299086924189.a n = A032607 (n + 1)

end A032607

/-!
# A032608: Concatenation of n and n + 3.

The programs for A032608, the canonical program `A032608.P16231339068134095402` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032608 has offset 1).

The definition of A032608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032608.P16231339068134095402

`(n+1)*(10^(1+A004216(n+4))+1)+3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032608

/-- `(n+1)*(10^(1+A004216(n+4))+1)+3` -/
def P16231339068134095402.Spec : Prop :=
  ∀ n, P16231339068134095402.a n = (A032608 (n + 1) : ℚ)

end A032608

/-! ## A032608.P14752568085899728645

`A084855(∑[n+4]+3)`
-/

namespace A032608.P14752568085899728645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A032608.P14752568085899728645

namespace A032608

/-- `A084855(∑[n+4]+3)` -/
def P14752568085899728645.Spec : Prop :=
  ∀ n, P14752568085899728645.a n = A032608 (n + 1)

end A032608

/-! ## A032608.P12641196343271411393

`or(char[1], A084855(A055998(n+2)))`
-/

namespace A032608.P12641196343271411393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084855 (A055998 (n + 2)).toNat)

end

end A032608.P12641196343271411393

namespace A032608

/-- `or(char[1], A084855(A055998(n+2)))` -/
def P12641196343271411393.Spec : Prop :=
  ∀ n, P12641196343271411393.a n = A032608 (n + 1)

end A032608

/-! ## A032608.P12521237491861230764

`lcm(A084855(A055998(n+2)), A186035(n))`
-/

namespace A032608.P12521237491861230764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084855 (A055998 (n + 2)).toNat) (A186035 n)

end

end A032608.P12521237491861230764

namespace A032608

/-- `lcm(A084855(A055998(n+2)), A186035(n))` -/
def P12521237491861230764.Spec : Prop :=
  ∀ n, (P12521237491861230764.a n : ℤ) = A032608 (n + 1)

end A032608

/-! ## A032608.P2826972487010631176

`A007318(C(2, n))*A084855(A055998(n+2))`
-/

namespace A032608.P2826972487010631176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A084855 (A055998 (n + 2)).toNat

end

end A032608.P2826972487010631176

namespace A032608

/-- `A007318(C(2, n))*A084855(A055998(n+2))` -/
def P2826972487010631176.Spec : Prop :=
  ∀ n, P2826972487010631176.a n = A032608 (n + 1)

end A032608

/-! ## A032608.P1576288263554588539

`A084855(A055998(n+2))+char[A000108(n+9)]`
-/

namespace A032608.P1576288263554588539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A032608.P1576288263554588539

namespace A032608

/-- `A084855(A055998(n+2))+char[A000108(n+9)]` -/
def P1576288263554588539.Spec : Prop :=
  ∀ n, P1576288263554588539.a n = A032608 (n + 1)

end A032608

/-! ## A032608.P16668950429402992703

`A014963(6*(n+1))*A084855(A055998(n+2))`
-/

namespace A032608.P16668950429402992703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A084855 (A055998 (n + 2)).toNat

end

end A032608.P16668950429402992703

namespace A032608

/-- `A014963(6*(n+1))*A084855(A055998(n+2))` -/
def P16668950429402992703.Spec : Prop :=
  ∀ n, P16668950429402992703.a n = A032608 (n + 1)

end A032608

/-! ## A032608.P17967989721582994547

`A000203(((-1)^n)²)*A084855(A055998(n+2))`
-/

namespace A032608.P17967989721582994547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A084855 (A055998 (n + 2)).toNat

end

end A032608.P17967989721582994547

namespace A032608

/-- `A000203(((-1)^n)²)*A084855(A055998(n+2))` -/
def P17967989721582994547.Spec : Prop :=
  ∀ n, P17967989721582994547.a n = A032608 (n + 1)

end A032608

/-! ## A032608.P12230417116598779443

`A084855(A055998(n+2))+A001222((n+1)²)%2`
-/

namespace A032608.P12230417116598779443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A055998 (n + 2)).toNat + Int.tmod (A001222 ((n + 1) ^ 2)) 2

end

end A032608.P12230417116598779443

namespace A032608

/-- `A084855(A055998(n+2))+A001222((n+1)²)%2` -/
def P12230417116598779443.Spec : Prop :=
  ∀ n, P12230417116598779443.a n = A032608 (n + 1)

end A032608

/-!
# A032609: Concatenation of n and n + 4 or {n,n+4}.

The programs for A032609, the canonical program `A032609.P13806505801294787442` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032609 has offset 1).

The definition of A032609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032609.P13806505801294787442

`(n+1)*(10^(1+A004216(n+5))+1)+4`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032609

/-- `(n+1)*(10^(1+A004216(n+5))+1)+4` -/
def P13806505801294787442.Spec : Prop :=
  ∀ n, P13806505801294787442.a n = (A032609 (n + 1) : ℚ)

end A032609

/-! ## A032609.P1622614748351579836

`A084855(∑[n+5]+6)`
-/

namespace A032609.P1622614748351579836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A032609.P1622614748351579836

namespace A032609

/-- `A084855(∑[n+5]+6)` -/
def P1622614748351579836.Spec : Prop :=
  ∀ n, P1622614748351579836.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P503760207512541649

`or(char[2], A084855(A046691(n+3)))`
-/

namespace A032609.P503760207512541649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084855 (A046691 (n + 3)).toNat)

end

end A032609.P503760207512541649

namespace A032609

/-- `or(char[2], A084855(A046691(n+3)))` -/
def P503760207512541649.Spec : Prop :=
  ∀ n, P503760207512541649.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P9442579963765867178

`or(char[2], A084855(A056115(n)+11))`
-/

namespace A032609.P9442579963765867178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084855 (A056115 n + 11).toNat)

end

end A032609.P9442579963765867178

namespace A032609

/-- `or(char[2], A084855(A056115(n)+11))` -/
def P9442579963765867178.Spec : Prop :=
  ∀ n, P9442579963765867178.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P13742563609869391484

`and(1, n)!*A084855(Δ[A023545(n+1)])`
-/

namespace A032609.P13742563609869391484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A084855 (f1 (n + 1) - f1 n).toNat

end

end A032609.P13742563609869391484

namespace A032609

/-- `and(1, n)!*A084855(Δ[A023545(n+1)])` -/
def P13742563609869391484.Spec : Prop :=
  ∀ n, P13742563609869391484.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P1976753542988073254

`A033999(n)²*A084855(A056115(n)+11)`
-/

namespace A032609.P1976753542988073254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A084855 (A056115 n + 11).toNat

end

end A032609.P1976753542988073254

namespace A032609

/-- `A033999(n)²*A084855(A056115(n)+11)` -/
def P1976753542988073254.Spec : Prop :=
  ∀ n, P1976753542988073254.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P17293432177303979318

`A084855(A046691(n+3))+A000007(n+1)`
-/

namespace A032609.P17293432177303979318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A032609.P17293432177303979318

namespace A032609

/-- `A084855(A046691(n+3))+A000007(n+1)` -/
def P17293432177303979318.Spec : Prop :=
  ∀ n, P17293432177303979318.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P638830593650163713

`A007318(C(2, n))*A084855(A046691(n+3))`
-/

namespace A032609.P638830593650163713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A084855 (A046691 (n + 3)).toNat

end

end A032609.P638830593650163713

namespace A032609

/-- `A007318(C(2, n))*A084855(A046691(n+3))` -/
def P638830593650163713.Spec : Prop :=
  ∀ n, P638830593650163713.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P12442946755879436070

`A007318(C(2, n))*A084855(A056115(n)+11)`
-/

namespace A032609.P12442946755879436070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A084855 (A056115 n + 11).toNat

end

end A032609.P12442946755879436070

namespace A032609

/-- `A007318(C(2, n))*A084855(A056115(n)+11)` -/
def P12442946755879436070.Spec : Prop :=
  ∀ n, P12442946755879436070.a n = A032609 (n + 1)

end A032609

/-! ## A032609.P8824223957666594464

`A033999(n)²*A084855(Δ[A023545(n+1)])`
-/

namespace A032609.P8824223957666594464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A084855 (f1 (n + 1) - f1 n).toNat

end

end A032609.P8824223957666594464

namespace A032609

/-- `A033999(n)²*A084855(Δ[A023545(n+1)])` -/
def P8824223957666594464.Spec : Prop :=
  ∀ n, P8824223957666594464.a n = A032609 (n + 1)

end A032609

/-!
# A032610: Concatenation of n and n + 5 or {n,n+5}.

The programs for A032610, the canonical program `A032610.P15973300244235464454` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032610 has offset 1).

The definition of A032610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032610.P15973300244235464454

`A084855(∑[n+6]+10)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032610

/-- `A084855(∑[n+6]+10)` -/
def P15973300244235464454.Spec : Prop :=
  ∀ n, P15973300244235464454.a n = A032610 (n + 1)

theorem P15973300244235464454.correct : P15973300244235464454.Spec := by
  intro n
  simp only [A032610, Nat.add_sub_cancel]

end A032610

/-! ## A032610.P17596981985943133794

`A067574(A014105(n+3)-n)`
-/

namespace A032610.P17596981985943133794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067574 (A014105 (n + 3) - (n : ℤ)).toNat

end

end A032610.P17596981985943133794

namespace A032610

/-- `A067574(A014105(n+3)-n)` -/
def P17596981985943133794.Spec : Prop :=
  ∀ n, P17596981985943133794.a n = A032610 (n + 1)

end A032610

/-! ## A032610.P14505506688985667114

`A373011(A248422(n+1))`
-/

namespace A032610.P14505506688985667114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373011 (A248422 (n + 1)).toNat

end

end A032610.P14505506688985667114

namespace A032610

/-- `A373011(A248422(n+1))` -/
def P14505506688985667114.Spec : Prop :=
  ∀ n, P14505506688985667114.a n = A032610 (n + 1)

end A032610

/-! ## A032610.P10522163209010669666

`A052938(A030656(n+1))+2`
-/

namespace A032610.P10522163209010669666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A030656 (n + 1)).toNat + 2

end

end A032610.P10522163209010669666

namespace A032610

/-- `A052938(A030656(n+1))+2` -/
def P10522163209010669666.Spec : Prop :=
  ∀ n, P10522163209010669666.a n = A032610 (n + 1)

end A032610

/-! ## A032610.P7207363936596339966

`A060762(A030656(n+1)+3)`
-/

namespace A032610.P7207363936596339966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (A030656 (n + 1) + 3).toNat

end

end A032610.P7207363936596339966

namespace A032610

/-- `A060762(A030656(n+1)+3)` -/
def P7207363936596339966.Spec : Prop :=
  ∀ n, P7207363936596339966.a n = A032610 (n + 1)

end A032610

/-!
# A032611: Concatenation of n and n + 6 or {n,n+6}.

The programs for A032611, the canonical program `A032611.P14395661447578244973` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032611 has offset 1).

The definition of A032611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032611.P14395661447578244973

`A084855(A055999(n+4))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032611

/-- `A084855(A055999(n+4))` -/
def P14395661447578244973.Spec : Prop :=
  ∀ n, P14395661447578244973.a n = A032611 (n + 1)

theorem P14395661447578244973.correct : P14395661447578244973.Spec := by
  intro n
  simp only [A032611, Nat.add_sub_cancel]

end A032611

/-! ## A032611.P11421573777363081244

`A084855(Δ[A023551(n+2)])`
-/

namespace A032611.P11421573777363081244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (f1 (n + 1) - f1 n).toNat

end

end A032611.P11421573777363081244

namespace A032611

/-- `A084855(Δ[A023551(n+2)])` -/
def P11421573777363081244.Spec : Prop :=
  ∀ n, P11421573777363081244.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P8498262977430119420

`A084855(A052905(n+4)-1)`
-/

namespace A032611.P8498262977430119420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A052905 (n + 4) - 1).toNat

end

end A032611.P8498262977430119420

namespace A032611

/-- `A084855(A052905(n+4)-1)` -/
def P8498262977430119420.Spec : Prop :=
  ∀ n, P8498262977430119420.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P12564286820229690505

`A084855(A056000(n+3)+4)`
-/

namespace A032611.P12564286820229690505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A056000 (n + 3) + 4).toNat

end

end A032611.P12564286820229690505

namespace A032611

/-- `A084855(A056000(n+3)+4)` -/
def P12564286820229690505.Spec : Prop :=
  ∀ n, P12564286820229690505.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P12819055361035832810

`A084855(A000096(n+6)-5)`
-/

namespace A032611.P12819055361035832810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000096 (n + 6) - 5).toNat

end

end A032611.P12819055361035832810

namespace A032611

/-- `A084855(A000096(n+6)-5)` -/
def P12819055361035832810.Spec : Prop :=
  ∀ n, P12819055361035832810.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P13389852990559852303

`A084855(A000217(n+7)-6)`
-/

namespace A032611.P13389852990559852303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000217 (n + 7) - 6).toNat

end

end A032611.P13389852990559852303

namespace A032611

/-- `A084855(A000217(n+7)-6)` -/
def P13389852990559852303.Spec : Prop :=
  ∀ n, P13389852990559852303.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P15916608012489119401

`A084855(A000124(n+7)-7)`
-/

namespace A032611.P15916608012489119401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000124 (n + 7) - 7).toNat

end

end A032611.P15916608012489119401

namespace A032611

/-- `A084855(A000124(n+7)-7)` -/
def P15916608012489119401.Spec : Prop :=
  ∀ n, P15916608012489119401.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P2014385271846130722

`A084855(A166136(n+4)+2*n+1)`
-/

namespace A032611.P2014385271846130722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A032611.P2014385271846130722

namespace A032611

/-- `A084855(A166136(n+4)+2*n+1)` -/
def P2014385271846130722.Spec : Prop :=
  ∀ n, P2014385271846130722.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P11067779017237213795

`A084855((n+5)²-n-(A167499(n)-3))`
-/

namespace A032611.P11067779017237213795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (((n + 5) ^ 2 : ℤ) - (n : ℤ) - (A167499 n - 3)).toNat

end

end A032611.P11067779017237213795

namespace A032611

/-- `A084855((n+5)²-n-(A167499(n)-3))` -/
def P11067779017237213795.Spec : Prop :=
  ∀ n, P11067779017237213795.a n = A032611 (n + 1)

end A032611

/-! ## A032611.P483714720005618739

`A084855(xor(1, 2*n)+A034856(n+4)+8)`
-/

namespace A032611.P483714720005618739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 ((Nat.xor 1 (2 * n) : ℤ) + (A034856 (n + 4) + 8)).toNat

end

end A032611.P483714720005618739

namespace A032611

/-- `A084855(xor(1, 2*n)+A034856(n+4)+8)` -/
def P483714720005618739.Spec : Prop :=
  ∀ n, P483714720005618739.a n = A032611 (n + 1)

end A032611

/-!
# A032612: Concatenation of n and n+7.

The programs for A032612, the canonical program `A032612.P9628233881918790487` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032612 has offset 1).

The definition of A032612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032612.P10222431282070198791

`A084855(eq[5, A219347(n)])`
-/

namespace A032612.P10222431282070198791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032612.P10222431282070198791

namespace A032612

/-- `A084855(eq[5, A219347(n)])` -/
def P10222431282070198791.Spec : Prop :=
  ∀ n, P10222431282070198791.a n = A032612 (n + 1)

end A032612

/-! ## A032612.P9827095201800048812

`A084855(eq[7, A193592(n)])`
-/

namespace A032612.P9827095201800048812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032612.P9827095201800048812

namespace A032612

/-- `A084855(eq[7, A193592(n)])` -/
def P9827095201800048812.Spec : Prop :=
  ∀ n, P9827095201800048812.a n = A032612 (n + 1)

end A032612

/-! ## A032612.P9628233881918790487

`A084855(A155212(n+4)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032612

/-- `A084855(A155212(n+4)+1)` -/
def P9628233881918790487.Spec : Prop :=
  ∀ n, P9628233881918790487.a n = A032612 (n + 1)

theorem P9628233881918790487.correct : P9628233881918790487.Spec := by
  intro n
  simp only [A032612, Nat.add_sub_cancel]

end A032612

/-! ## A032612.P13724253148647592602

`A084855(A052905(n+5)-2)`
-/

namespace A032612.P13724253148647592602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A052905 (n + 5) - 2).toNat

end

end A032612.P13724253148647592602

namespace A032612

/-- `A084855(A052905(n+5)-2)` -/
def P13724253148647592602.Spec : Prop :=
  ∀ n, P13724253148647592602.a n = A032612 (n + 1)

end A032612

/-! ## A032612.P17593285701669677196

`A084855(A000096(n+7)-6)`
-/

namespace A032612.P17593285701669677196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000096 (n + 7) - 6).toNat

end

end A032612.P17593285701669677196

namespace A032612

/-- `A084855(A000096(n+7)-6)` -/
def P17593285701669677196.Spec : Prop :=
  ∀ n, P17593285701669677196.a n = A032612 (n + 1)

end A032612

/-! ## A032612.P1225596369561786056

`A084855(A000217(n+8)-7)`
-/

namespace A032612.P1225596369561786056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000217 (n + 8) - 7).toNat

end

end A032612.P1225596369561786056

namespace A032612

/-- `A084855(A000217(n+8)-7)` -/
def P1225596369561786056.Spec : Prop :=
  ∀ n, P1225596369561786056.a n = A032612 (n + 1)

end A032612

/-! ## A032612.P17921083007157323121

`A084855(A000124(n+8)-8)`
-/

namespace A032612.P17921083007157323121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000124 (n + 8) - 8).toNat

end

end A032612.P17921083007157323121

namespace A032612

/-- `A084855(A000124(n+8)-8)` -/
def P17921083007157323121.Spec : Prop :=
  ∀ n, P17921083007157323121.a n = A032612 (n + 1)

end A032612

/-!
# A032613: Concatenation of n and n + 8 or {n,n+8}.

The programs for A032613, the canonical program `A032613.P4379369226880167036` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032613 has offset 1).

The definition of A032613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032613.P1515629395719105993

`A084855(eq[6, A219347(n)])`
-/

namespace A032613.P1515629395719105993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032613.P1515629395719105993

namespace A032613

/-- `A084855(eq[6, A219347(n)])` -/
def P1515629395719105993.Spec : Prop :=
  ∀ n, P1515629395719105993.a n = A032613 (n + 1)

end A032613

/-! ## A032613.P17936613377378419032

`A084855(eq[8, A193592(n)])`
-/

namespace A032613.P17936613377378419032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032613.P17936613377378419032

namespace A032613

/-- `A084855(eq[8, A193592(n)])` -/
def P17936613377378419032.Spec : Prop :=
  ∀ n, P17936613377378419032.a n = A032613 (n + 1)

end A032613

/-! ## A032613.P4379369226880167036

`A084855(A000217(n+9)-8)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032613

/-- `A084855(A000217(n+9)-8)` -/
def P4379369226880167036.Spec : Prop :=
  ∀ n, P4379369226880167036.a n = A032613 (n + 1)

theorem P4379369226880167036.correct : P4379369226880167036.Spec := by
  intro n
  simp only [A032613, Nat.add_sub_cancel]

end A032613

/-! ## A032613.P17473113497762358612

`A084855(A000124(n+9)-9)`
-/

namespace A032613.P17473113497762358612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000124 (n + 9) - 9).toNat

end

end A032613.P17473113497762358612

namespace A032613

/-- `A084855(A000124(n+9)-9)` -/
def P17473113497762358612.Spec : Prop :=
  ∀ n, P17473113497762358612.a n = A032613 (n + 1)

end A032613

/-! ## A032613.P16771881587514170836

`A084855(A161680(n+10)-8)`
-/

namespace A032613.P16771881587514170836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A161680 (n + 10) - 8).toNat

end

end A032613.P16771881587514170836

namespace A032613

/-- `A084855(A161680(n+10)-8)` -/
def P16771881587514170836.Spec : Prop :=
  ∀ n, P16771881587514170836.a n = A032613 (n + 1)

end A032613

/-! ## A032613.P12332364765982813379

`(n+1)*A062584(A151935(n))+8`
-/

namespace A032613.P12332364765982813379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062584 (A151935 n).toNat + 8

end

end A032613.P12332364765982813379

namespace A032613

/-- `(n+1)*A062584(A151935(n))+8` -/
def P12332364765982813379.Spec : Prop :=
  ∀ n, P12332364765982813379.a n = A032613 (n + 1)

end A032613

/-!
# A032614: Concatenation of n and n + 9 or {n,n+9}.

The programs for A032614, the canonical program `A032614.P5120848621844794646` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032614 has offset 1).

The definition of A032614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032614.P5120848621844794646

`A084855(A155212(n+6)-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032614

/-- `A084855(A155212(n+6)-1)` -/
def P5120848621844794646.Spec : Prop :=
  ∀ n, P5120848621844794646.a n = A032614 (n + 1)

theorem P5120848621844794646.correct : P5120848621844794646.Spec := by
  intro n
  simp only [A032614, Nat.add_sub_cancel]

end A032614

/-! ## A032614.P10702419348014273850

`A084855(A046691(n+8)-5)`
-/

namespace A032614.P10702419348014273850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A046691 (n + 8) - 5).toNat

end

end A032614.P10702419348014273850

namespace A032614

/-- `A084855(A046691(n+8)-5)` -/
def P10702419348014273850.Spec : Prop :=
  ∀ n, P10702419348014273850.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P12749484790117059332

`A084855(A000096(n+9)-8)`
-/

namespace A032614.P12749484790117059332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000096 (n + 9) - 8).toNat

end

end A032614.P12749484790117059332

namespace A032614

/-- `A084855(A000096(n+9)-8)` -/
def P12749484790117059332.Spec : Prop :=
  ∀ n, P12749484790117059332.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P949428544305990065

`A028310(3*37*(n+1))-A017281(n)`
-/

namespace A032614.P949428544305990065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * (37 * (n + 1))) - A017281 n

end

end A032614.P949428544305990065

namespace A032614

/-- `A028310(3*37*(n+1))-A017281(n)` -/
def P949428544305990065.Spec : Prop :=
  ∀ n, P949428544305990065.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P4741441985024006808

`A159551(n+1)+A008683(A342309(n+1))`
-/

namespace A032614.P4741441985024006808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 (n + 1) + A008683 (A342309 (n + 1)).toNat

end

end A032614.P4741441985024006808

namespace A032614

/-- `A159551(n+1)+A008683(A342309(n+1))` -/
def P4741441985024006808.Spec : Prop :=
  ∀ n, P4741441985024006808.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P16451639064142242881

`A159551(n+1)-A184348(A351612(n+1))`
-/

namespace A032614.P16451639064142242881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 (n + 1) - A184348 (A351612 (n + 1)).toNat

end

end A032614.P16451639064142242881

namespace A032614

/-- `A159551(n+1)-A184348(A351612(n+1))` -/
def P16451639064142242881.Spec : Prop :=
  ∀ n, P16451639064142242881.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P6365642312500599170

`A159551(n+1)-A294619(A237122(n+1))`
-/

namespace A032614.P6365642312500599170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 (n + 1) - A294619 (A237122 (n + 1)).toNat

end

end A032614.P6365642312500599170

namespace A032614

/-- `A159551(n+1)-A294619(A237122(n+1))` -/
def P6365642312500599170.Spec : Prop :=
  ∀ n, P6365642312500599170.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P17473765367255875204

`A159551(n+1)-A001221(A001248(n+1))`
-/

namespace A032614.P17473765367255875204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 (n + 1) - A001221 (A001248 (n + 1)).toNat

end

end A032614.P17473765367255875204

namespace A032614

/-- `A159551(n+1)-A001221(A001248(n+1))` -/
def P17473765367255875204.Spec : Prop :=
  ∀ n, P17473765367255875204.a n = A032614 (n + 1)

end A032614

/-! ## A032614.P10602945744797995946

`A159551(n+1)-A008683(A006094(n+1))`
-/

namespace A032614.P10602945744797995946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 (n + 1) - A008683 (A006094 (n + 1)).toNat

end

end A032614.P10602945744797995946

namespace A032614

/-- `A159551(n+1)-A008683(A006094(n+1))` -/
def P10602945744797995946.Spec : Prop :=
  ∀ n, P10602945744797995946.a n = A032614 (n + 1)

end A032614

/-!
# A032615: a(n) = floor(n/Pi).

The programs for A032615, the canonical program `A032615.P7004375319683963035` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032615 has offset 0).

The definition of A032615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/π)` (program `A032615.P7004375319683963035`, by `A032615.P7004375319683963035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032615.P7004375319683963035

`floor(n/π)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032615

/-- `floor(n/π)` -/
def P7004375319683963035.Spec : Prop :=
  ∀ n, P7004375319683963035.a n = A032615 n

theorem P7004375319683963035.correct : P7004375319683963035.Spec := by
  intro n
  simp only [A032615]

end A032615

/-! ## A032615.P17076415736451467380

`∑[char[A121381(n+1)]]`
-/

namespace A032615.P17076415736451467380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032615.P17076415736451467380

namespace A032615

/-- `∑[char[A121381(n+1)]]` -/
def P17076415736451467380.Spec : Prop :=
  ∀ n, (P17076415736451467380.a n : ℤ) = A032615 n

end A032615

/-! ## A032615.P5088805896685895408

`∑[char[A004084(n+2)]]`
-/

namespace A032615.P5088805896685895408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032615.P5088805896685895408

namespace A032615

/-- `∑[char[A004084(n+2)]]` -/
def P5088805896685895408.Spec : Prop :=
  ∀ n, (P5088805896685895408.a n : ℤ) = A032615 n

end A032615

/-! ## A032615.P3950646586048902161

`∑[char[A121381(n)]]-1`
-/

namespace A032615.P3950646586048902161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A032615.P3950646586048902161

namespace A032615

/-- `∑[char[A121381(n)]]-1` -/
def P3950646586048902161.Spec : Prop :=
  ∀ n, P3950646586048902161.a n = A032615 n

end A032615

/-! ## A032615.P16763824662341284021

`comp[A059532(n+1)]-n`
-/

namespace A032615.P16763824662341284021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059532 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A032615.P16763824662341284021

namespace A032615

/-- `comp[A059532(n+1)]-n` -/
def P16763824662341284021.Spec : Prop :=
  ∀ n, P16763824662341284021.a n = A032615 n

end A032615

/-! ## A032615.P3429596763745145130

`∑[char[A022844(n+1)+1]]`
-/

namespace A032615.P3429596763745145130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032615.P3429596763745145130

namespace A032615

/-- `∑[char[A022844(n+1)+1]]` -/
def P3429596763745145130.Spec : Prop :=
  ∀ n, (P3429596763745145130.a n : ℤ) = A032615 n

end A032615

/-! ## A032615.P15899792670122835084

`A296357(A028310(n))-1`
-/

namespace A032615.P15899792670122835084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (A028310 n).toNat - 1

end

end A032615.P15899792670122835084

namespace A032615

/-- `A296357(A028310(n))-1` -/
def P15899792670122835084.Spec : Prop :=
  ∀ n, P15899792670122835084.a n = A032615 n

end A032615

/-! ## A032615.P13642247396876045212

`A126564(n)+A082964(n)`
-/

namespace A032615.P13642247396876045212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126564 n + A082964 n

end

end A032615.P13642247396876045212

namespace A032615

/-- `A126564(n)+A082964(n)` -/
def P13642247396876045212.Spec : Prop :=
  ∀ n, P13642247396876045212.a n = A032615 n

end A032615

/-! ## A032615.P5893184234032543259

`A082964(n)+A000493(2*n)`
-/

namespace A032615.P5893184234032543259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 n + A000493 (2 * n)

end

end A032615.P5893184234032543259

namespace A032615

/-- `A082964(n)+A000493(2*n)` -/
def P5893184234032543259.Spec : Prop :=
  ∀ n, P5893184234032543259.a n = A032615 n

end A032615

/-! ## A032615.P15109269555150214969

`A178832(n)-A302203(n)`
-/

namespace A032615.P15109269555150214969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 n - A302203 n

end

end A032615.P15109269555150214969

namespace A032615

/-- `A178832(n)-A302203(n)` -/
def P15109269555150214969.Spec : Prop :=
  ∀ n, P15109269555150214969.a n = A032615 n

end A032615

/-!
# A032616: a(n) = floor(n^2/Pi).

The programs for A032616, the canonical program `A032616.P17004683288078199390` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032616 has offset 0).

The definition of A032616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/π)` (program `A032616.P4268279883574505586`, by `A032616.P4268279883574505586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032616.P4268279883574505586

`floor(n²/π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A032616.P4268279883574505586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / Real.pi⌋

end

end A032616.P4268279883574505586

namespace A032616

/-- `floor(n²/π)` -/
def P4268279883574505586.Spec : Prop :=
  ∀ n, P4268279883574505586.a n = A032616 n

theorem P4268279883574505586.correct : P4268279883574505586.Spec := by
  intro n
  simp only [A032616, Nat.add_sub_cancel, A032616.P4268279883574505586.a, A032616.P17004683288078199390.a, A032615, A032615.P7004375319683963035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032616

/-! ## A032616.P17004683288078199390

`A032615(n²)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032616

/-- `A032615(n²)` -/
def P17004683288078199390.Spec : Prop :=
  ∀ n, P17004683288078199390.a n = A032616 n

theorem P17004683288078199390.correct : P17004683288078199390.Spec := by
  intro n
  simp only [A032616]

end A032616

/-! ## A032616.P3652758313865434683

`or(floor(n*n/π), char[2])`
-/

namespace A032616.P3652758313865434683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032616.P3652758313865434683

namespace A032616

/-- `or(floor(n*n/π), char[2])` -/
def P3652758313865434683.Spec : Prop :=
  ∀ n, P3652758313865434683.a n = A032616 n

end A032616

/-! ## A032616.P6527655517085052956

`xor(1, xor(1, floor(n*n/π)))`
-/

namespace A032616.P6527655517085052956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋)

end

end A032616.P6527655517085052956

namespace A032616

/-- `xor(1, xor(1, floor(n*n/π)))` -/
def P6527655517085052956.Spec : Prop :=
  ∀ n, P6527655517085052956.a n = A032616 n

end A032616

/-! ## A032616.P18219248988193978717

`floor(n*n/π)*ceil(acot(n))`
-/

namespace A032616.P18219248988193978717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋ * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A032616.P18219248988193978717

namespace A032616

/-- `floor(n*n/π)*ceil(acot(n))` -/
def P18219248988193978717.Spec : Prop :=
  ∀ n, P18219248988193978717.a n = A032616 n

end A032616

/-! ## A032616.P13911320834338329074

`A154392(n)+a(n-1)` with `a(0)=0`
-/

namespace A032616.P13911320834338329074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A154392 n + a (n - 1)

end

end A032616.P13911320834338329074

namespace A032616

/-- `A154392(n)+a(n-1)` -/
def P13911320834338329074.Spec : Prop :=
  ∀ n, P13911320834338329074.a n = A032616 n

theorem P13911320834338329074.correct : P13911320834338329074.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A032616, Nat.add_sub_cancel, A032616.P13911320834338329074.a, A032616.P17004683288078199390.a, A032615, A032615.P7004375319683963035.a, A154392, A154392.P15552810202031452493.f1, A154392.P15552810202031452493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A032616, Nat.add_sub_cancel, A032616.P13911320834338329074.a, A032616.P17004683288078199390.a, A032615, A032615.P7004375319683963035.a, A154392, A154392.P15552810202031452493.f1, A154392.P15552810202031452493.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A032616

/-! ## A032616.P903208860168655029

`ceil(n²/π-A000040(n+1)%2)`
-/

namespace A032616.P903208860168655029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.pi - (Int.tmod (A000040 (n + 1)) 2 : ℝ)⌉

end

end A032616.P903208860168655029

namespace A032616

/-- `ceil(n²/π-A000040(n+1)%2)` -/
def P903208860168655029.Spec : Prop :=
  ∀ n, P903208860168655029.a n = A032616 n

end A032616

/-! ## A032616.P14842778419353801959

`A007318(A007318(and(4, -n)))*floor(n*n/π)`
-/

namespace A032616.P14842778419353801959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (Int.land 4 (-(n : ℤ))).toNat).toNat * ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋

end

end A032616.P14842778419353801959

namespace A032616

/-- `A007318(A007318(and(4, -n)))*floor(n*n/π)` -/
def P14842778419353801959.Spec : Prop :=
  ∀ n, P14842778419353801959.a n = A032616 n

end A032616

/-! ## A032616.P8528070185877292357

`A135607(2*n)`
-/

namespace A032616.P8528070185877292357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135607 (2 * n)

end

end A032616.P8528070185877292357

namespace A032616

/-- `A135607(2*n)` -/
def P8528070185877292357.Spec : Prop :=
  ∀ n, P8528070185877292357.a n = A032616 n

theorem P8528070185877292357.correct : P8528070185877292357.Spec := by
  intro n
  simp only [A032616, Nat.add_sub_cancel, A032616.P8528070185877292357.a, A032616.P17004683288078199390.a, A032615, A032615.P7004375319683963035.a, A135607, A135607.P16978739446351322344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032616

/-! ## A032616.P2975196657114705698

`floor(n*n/π)%A000108(n)`
-/

namespace A032616.P2975196657114705698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋ (A000108 n)

end

end A032616.P2975196657114705698

namespace A032616

/-- `floor(n*n/π)%A000108(n)` -/
def P2975196657114705698.Spec : Prop :=
  ∀ n, P2975196657114705698.a n = A032616 n

end A032616

/-! ## A032616.P4058152637968160089

`A007318(∑[n])*floor(n*n/π)`
-/

namespace A032616.P4058152637968160089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋

end

end A032616.P4058152637968160089

namespace A032616

/-- `A007318(∑[n])*floor(n*n/π)` -/
def P4058152637968160089.Spec : Prop :=
  ∀ n, P4058152637968160089.a n = A032616 n

end A032616

/-! ## A032616.P10840327361800216274

`A062299(A082562(n))`
-/

namespace A032616.P10840327361800216274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A082562 n).toNat

end

end A032616.P10840327361800216274

namespace A032616

/-- `A062299(A082562(n))` -/
def P10840327361800216274.Spec : Prop :=
  ∀ n, P10840327361800216274.a n = A032616 n

end A032616

/-! ## A032616.P8178764901396171330

`A296357(A028310(n²))-1`
-/

namespace A032616.P8178764901396171330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (A028310 (n ^ 2)).toNat - 1

end

end A032616.P8178764901396171330

namespace A032616

/-- `A296357(A028310(n²))-1` -/
def P8178764901396171330.Spec : Prop :=
  ∀ n, P8178764901396171330.a n = A032616 n

end A032616

/-! ## A032616.P5415208276337589201

`A082964(A022844(A032615(n*n)))`
-/

namespace A032616.P5415208276337589201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A022844 (A032615 (n * n)).toNat).toNat

end

end A032616.P5415208276337589201

namespace A032616

/-- `A082964(A022844(A032615(n*n)))` -/
def P5415208276337589201.Spec : Prop :=
  ∀ n, P5415208276337589201.a n = A032616 n

end A032616

/-!
# A032617: Numbers k such that k concatenated with k+2 is a prime.

The programs for A032617, there is no canonical definition to state claims against.
-/

/-! ## A032617.P5165286021640255328

`eq[n+3, A228325(n+1)]+1`
-/

namespace A032617.P5165286021640255328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032617.P5165286021640255328

/-! ## A032617.P14844627237503675094

`eq[n+2, A228325(A029579(n))]`
-/

namespace A032617.P14844627237503675094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032617.P14844627237503675094

/-! ## A032617.P9728348269739701239

`eq[n+2, A228325(A093178(n))]`
-/

namespace A032617.P9728348269739701239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032617.P9728348269739701239

/-! ## A032617.P5293175819565994234

`eq[n+2, A228325(A014681(n+1))]`
-/

namespace A032617.P5293175819565994234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (A014681 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032617.P5293175819565994234

/-! ## A032617.P16888506212129996593

`eq[n+2, A228325(A233583(n+1))]`
-/

namespace A032617.P16888506212129996593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032617.P16888506212129996593

/-!
# A032618: Numbers k such that k concatenated with k+3 is a prime.

The programs for A032618, there is no canonical definition to state claims against.
-/

/-! ## A032618.P3376475660090552569

`eq[1, A001222(A032608(n+1))]+1`
-/

namespace A032618.P3376475660090552569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032608 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032618.P3376475660090552569

/-! ## A032618.P8913004910055091545

`eq[1, A001222(A032607(n+1)+1)]+1`
-/

namespace A032618.P8913004910055091545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032607 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032618.P8913004910055091545

/-! ## A032618.P17175948426665497876

`A011776(A032626(n+1)-3)`
-/

namespace A032618.P17175948426665497876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032626 (n + 1) - 3).toNat

end

end A032618.P17175948426665497876

/-! ## A032618.P8187325862526859173

`A011776(p?[A032608(n+1)]-3)`
-/

namespace A032618.P8187325862526859173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3).toNat

end

end A032618.P8187325862526859173

/-! ## A032618.P5863084632953582477

`A011776(p?[A032607(n+1)+1]-3)`
-/

namespace A032618.P5863084632953582477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3).toNat

end

end A032618.P5863084632953582477

/-!
# A032619: Numbers k such that k concatenated with k+4 is a prime.

The programs for A032619, there is no canonical definition to state claims against.
-/

/-! ## A032619.P967226290363321989

`eq[1, A001222(A127421(n+1)+3)]`
-/

namespace A032619.P967226290363321989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127421 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032619.P967226290363321989

/-! ## A032619.P763436554070598845

`eq[2, A000005(A127421(n+1)+3)]`
-/

namespace A032619.P763436554070598845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A127421 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032619.P763436554070598845

/-! ## A032619.P10542152780084190756

`eq[1, A001222(A032608(n+1)+1)]+1`
-/

namespace A032619.P10542152780084190756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032608 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032619.P10542152780084190756

/-! ## A032619.P8057441961818249437

`eq[1, A001222(A032607(n+1)+2)]+1`
-/

namespace A032619.P8057441961818249437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032607 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032619.P8057441961818249437

/-! ## A032619.P16979271695876697243

`eq[1, A051953(A102439(n)+n)]`
-/

namespace A032619.P16979271695876697243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A102439 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032619.P16979271695876697243

/-!
# A032620: Numbers k such that k concatenated with k+5 is a prime.

The programs for A032620, there is no canonical definition to state claims against.
-/

/-! ## A032620.P12983264434084465866

`A011776(A032628(n+1)-5)`
-/

namespace A032620.P12983264434084465866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032628 (n + 1) - 5).toNat

end

end A032620.P12983264434084465866

/-! ## A032620.P275649155847353929

`A072504(A032628(n+1)-5)`
-/

namespace A032620.P275649155847353929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A032628 (n + 1) - 5).toNat

end

end A032620.P275649155847353929

/-! ## A032620.P9533208382444835211

`lt[A000040(n+1), A020639(A032610(n+1))]+1`
-/

namespace A032620.P9533208382444835211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032620.P9533208382444835211

/-! ## A032620.P1858427563955100213

`lt[A094744(n+1), A020639(A032610(n+1))]+1`
-/

namespace A032620.P1858427563955100213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032620.P1858427563955100213

/-! ## A032620.P12616506437273327523

`lt[A055096(n+2), A020639(A032610(n+1))]+1`
-/

namespace A032620.P12616506437273327523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032620.P12616506437273327523

/-!
# A032621: Numbers k such that k concatenated with k+6 is a prime.

The programs for A032621, there is no canonical definition to state claims against.
-/

/-! ## A032621.P1400517258715343822

`lt[A001065(A102439(n)+2+n), 2]`
-/

namespace A032621.P1400517258715343822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A102439 n + 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032621.P1400517258715343822

/-! ## A032621.P17858422163155174154

`A011776(A032629(n+1)-6)`
-/

namespace A032621.P17858422163155174154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032629 (n + 1) - 6).toNat

end

end A032621.P17858422163155174154

/-! ## A032621.P8654417374852356705

`A011776(p?[A032613(n+1)-2]-6)`
-/

namespace A032621.P8654417374852356705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6).toNat

end

end A032621.P8654417374852356705

/-!
# A032622: Numbers k such that k concatenated with k+7 is a prime.

The programs for A032622, there is no canonical definition to state claims against.
-/

/-! ## A032622.P11598403960855494592

`A011776(A032630(n+1)-7)`
-/

namespace A032622.P11598403960855494592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032630 (n + 1) - 7).toNat

end

end A032622.P11598403960855494592

/-! ## A032622.P1372342144224001858

`A011776(p?[A032612(n+1)]-7)`
-/

namespace A032622.P1372342144224001858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7).toNat

end

end A032622.P1372342144224001858

/-! ## A032622.P982786844157109588

`A011776(p?[A032611(n+1)+1]-7)`
-/

namespace A032622.P982786844157109588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7).toNat

end

end A032622.P982786844157109588

/-! ## A032622.P13383829808463059874

`lt[A001221(A001704(n+1)+6), 2]+1`
-/

namespace A032622.P13383829808463059874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001704 (n + 1) + 6).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032622.P13383829808463059874

/-! ## A032622.P13801565418996683578

`lt[A001222(A020338(n+1)+7), 2]+1`
-/

namespace A032622.P13801565418996683578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020338 (n + 1) + 7).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032622.P13801565418996683578

/-!
# A032623: Numbers k such that k concatenated with k+8 is a prime.

The programs for A032623, there is no canonical definition to state claims against.
-/

/-! ## A032623.P3657155125730837830

`eq[1, A061358(A159551(n))]`
-/

namespace A032623.P3657155125730837830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A159551 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032623.P3657155125730837830

/-! ## A032623.P2917135163261356827

`A011776(A032631(n+1)-8)`
-/

namespace A032623.P2917135163261356827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032631 (n + 1) - 8).toNat

end

end A032623.P2917135163261356827

/-! ## A032623.P16130973994795998383

`eq[1, A001065(A159551(n)-2)]`
-/

namespace A032623.P16130973994795998383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A159551 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032623.P16130973994795998383

/-! ## A032623.P2536589199981582640

`A011776(p?[A032613(n+1)]-8)`
-/

namespace A032623.P2536589199981582640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 8).toNat

end

end A032623.P2536589199981582640

/-! ## A032623.P10842230292456754555

`eq[1, A001221(A032612(n+1)+1)]+1`
-/

namespace A032623.P10842230292456754555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A032612 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032623.P10842230292456754555

/-!
# A032624: Numbers k such that k concatenated with k+9 is a prime.

The programs for A032624, there is no canonical definition to state claims against.
-/

/-! ## A032624.P6190219270377997075

`A011776(A032632(n+1)-9)`
-/

namespace A032624.P6190219270377997075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032632 (n + 1) - 9).toNat

end

end A032624.P6190219270377997075

/-! ## A032624.P8876151062537828649

`A051119(A032632(n+1)-9)`
-/

namespace A032624.P8876151062537828649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032632 (n + 1) - 9).toNat

end

end A032624.P8876151062537828649

/-! ## A032624.P2802381482175254460

`A052126(A032632(n+1)-9)`
-/

namespace A032624.P2802381482175254460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032632 (n + 1) - 9).toNat

end

end A032624.P2802381482175254460

/-! ## A032624.P5192929216946344890

`A052128(A032632(n+1)-9)`
-/

namespace A032624.P5192929216946344890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A032632 (n + 1) - 9).toNat

end

end A032624.P5192929216946344890

/-! ## A032624.P9359653821275059840

`A060775(A032632(n+1)-9)`
-/

namespace A032624.P9359653821275059840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A032632 (n + 1) - 9).toNat

end

end A032624.P9359653821275059840

/-!
# A032625: Primes that are concatenations of n with n + 2.

The programs for A032625, there is no canonical definition to state claims against.
-/

/-! ## A032625.P2680307924623767330

`A001704(A032617(n+1))+1`
-/

namespace A032625.P2680307924623767330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A032617 (n + 1)).toNat + 1

end

end A032625.P2680307924623767330

/-! ## A032625.P11216074403138113241

`A127421(A032617(n+1)+1)+1`
-/

namespace A032625.P11216074403138113241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A032617 (n + 1) + 1).toNat + 1

end

end A032625.P11216074403138113241

/-! ## A032625.P15682970483838432043

`A032607(A032617(n+1))`
-/

namespace A032625.P15682970483838432043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A032617 (n + 1)).toNat

end

end A032625.P15682970483838432043

/-! ## A032625.P8138203686419104336

`p?[A032607(n+1)]`
-/

namespace A032625.P8138203686419104336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032625.P8138203686419104336

/-! ## A032625.P15754442485746600860

`p?[A248378(n)+1]`
-/

namespace A032625.P15754442485746600860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032625.P15754442485746600860

/-! ## A032625.P8280011354488331571

`p?[A001704(n+1)+1]`
-/

namespace A032625.P8280011354488331571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032625.P8280011354488331571

/-! ## A032625.P4825198377119844045

`p?[A030655(n+1)+1]`
-/

namespace A032625.P4825198377119844045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030655 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032625.P4825198377119844045

/-! ## A032625.P14321367512272478436

`p?[A127421(n+2)+1]`
-/

namespace A032625.P14321367512272478436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032625.P14321367512272478436

/-! ## A032625.P16148147724932315676

`p?[or(1, A001704(A004442(2*n)))]`
-/

namespace A032625.P16148147724932315676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001704 (A004442 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032625.P16148147724932315676

/-!
# A032626: Primes that are concatenations of n with n + 3.

The programs for A032626, there is no canonical definition to state claims against.
-/

/-! ## A032626.P828927506399369195

`A032608(A032618(n+1))`
-/

namespace A032626.P828927506399369195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (A032618 (n + 1)).toNat

end

end A032626.P828927506399369195

/-! ## A032626.P4569968074560704788

`A032607(A032618(2*n-n+1))+1`
-/

namespace A032626.P4569968074560704788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A032618 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat + 1

end

end A032626.P4569968074560704788

/-! ## A032626.P4758811421202566872

`(A032607(A032618(n+1))+1)%A133526(n+1)`
-/

namespace A032626.P4758811421202566872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032607 (A032618 (n + 1)).toNat + 1) (A133526 (n + 1))

end

end A032626.P4758811421202566872

/-! ## A032626.P15054327146701698687

`char[A046315(n+1)^3+1]+A032607(A032618(n+1))+1`
-/

namespace A032626.P15054327146701698687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) ^ 3 + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A032607 (A032618 (n + 1)).toNat + 1)

end

end A032626.P15054327146701698687

/-! ## A032626.P6123348481782662406

`A217581(A217581(n+1))+A032607(A032618(n+1))`
-/

namespace A032626.P6123348481782662406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A217581 (n + 1)).toNat + A032607 (A032618 (n + 1)).toNat

end

end A032626.P6123348481782662406

/-! ## A032626.P2915220964261999404

`A102627(A000040(n+1))+A032607(A032618(n+1))`
-/

namespace A032626.P2915220964261999404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102627 (A000040 (n + 1)).toNat + A032607 (A032618 (n + 1)).toNat

end

end A032626.P2915220964261999404

/-! ## A032626.P8037085854218727618

`p?[A032608(n+1)]`
-/

namespace A032626.P8037085854218727618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032626.P8037085854218727618

/-! ## A032626.P9776051857494823887

`p?[A032607(n+1)+1]`
-/

namespace A032626.P9776051857494823887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032626.P9776051857494823887

/-! ## A032626.P13885747973644545862

`p?[A032609(n+1)-1]`
-/

namespace A032626.P13885747973644545862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032626.P13885747973644545862

/-! ## A032626.P14197280308961759266

`p?[A032610(n+1)-2]`
-/

namespace A032626.P14197280308961759266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032626.P14197280308961759266

/-!
# A032627: Primes that are concatenations of k with k + 4.

The programs for A032627, there is no canonical definition to state claims against.
-/

/-! ## A032627.P8861293177983821000

`A001704(A032619(n+1))+3`
-/

namespace A032627.P8861293177983821000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A032619 (n + 1)).toNat + 3

end

end A032627.P8861293177983821000

/-! ## A032627.P5749744990602951389

`A032609(A032619(n+1))`
-/

namespace A032627.P5749744990602951389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032619 (n + 1)).toNat

end

end A032627.P5749744990602951389

/-! ## A032627.P5172964345767418071

`A057979(2*n)+A032608(A032619(n+1))`
-/

namespace A032627.P5172964345767418071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) + A032608 (A032619 (n + 1)).toNat

end

end A032627.P5172964345767418071

/-! ## A032627.P11894853800053523803

`A032607(A032619(n+1))+A020639(2*(n+1))`
-/

namespace A032627.P11894853800053523803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A032619 (n + 1)).toNat + A020639 (2 * (n + 1))

end

end A032627.P11894853800053523803

/-! ## A032627.P4952527131850605402

`A040663(A032618(n+1))+A032608(A032619(n+1))`
-/

namespace A032627.P4952527131850605402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040663 (A032618 (n + 1)).toNat + A032608 (A032619 (n + 1)).toNat

end

end A032627.P4952527131850605402

/-! ## A032627.P3698397770729468378

`p?[A032609(n+1)]`
-/

namespace A032627.P3698397770729468378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032627.P3698397770729468378

/-! ## A032627.P2491248529609324669

`p?[A032608(n+1)+1]`
-/

namespace A032627.P2491248529609324669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032627.P2491248529609324669

/-! ## A032627.P9903176111056189948

`p?[A032607(n+1)+2]`
-/

namespace A032627.P9903176111056189948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032627.P9903176111056189948

/-! ## A032627.P13872006422361446506

`p?[A001704(n+1)+3]`
-/

namespace A032627.P13872006422361446506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032627.P13872006422361446506

/-! ## A032627.P11395905406662335086

`p?[A030655(n+1)+3]`
-/

namespace A032627.P11395905406662335086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030655 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032627.P11395905406662335086

/-! ## A032627.P14385349539901129320

`p?[A127421(n+1)+3]`
-/

namespace A032627.P14385349539901129320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032627.P14385349539901129320

/-!
# A032628: Primes that are concatenations of n with n + 5.

The programs for A032628, there is no canonical definition to state claims against.
-/

/-! ## A032628.P11289885713796870898

`A001704(A032620(n+1))+4`
-/

namespace A032628.P11289885713796870898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A032620 (n + 1)).toNat + 4

end

end A032628.P11289885713796870898

/-! ## A032628.P530454903403313828

`A032610(A032620(n+1))`
-/

namespace A032628.P530454903403313828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032620 (n + 1)).toNat

end

end A032628.P530454903403313828

/-! ## A032628.P15150208588082102448

`A032609(A032620(n+1))+A000035(A032617(n+1))`
-/

namespace A032628.P15150208588082102448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032620 (n + 1)).toNat + A000035 (A032617 (n + 1)).toNat

end

end A032628.P15150208588082102448

/-! ## A032628.P13509054817379352575

`A032609(A032620(n+1))+A000035(A032619(n+1))`
-/

namespace A032628.P13509054817379352575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032620 (n + 1)).toNat + A000035 (A032619 (n + 1)).toNat

end

end A032628.P13509054817379352575

/-! ## A032628.P4606670966500154649

`A032609(A032620(n+1))+A001222(A032605(n+1))`
-/

namespace A032628.P4606670966500154649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032620 (n + 1)).toNat + A001222 (A032605 (n + 1)).toNat

end

end A032628.P4606670966500154649

/-! ## A032628.P5734694265055247303

`p?[A032610(n+1)]`
-/

namespace A032628.P5734694265055247303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032628.P5734694265055247303

/-! ## A032628.P16806316813124336208

`p?[A032609(n+1)+1]`
-/

namespace A032628.P16806316813124336208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032628.P16806316813124336208

/-!
# A032629: Primes that are concatenations of k with k + 6.

The programs for A032629, there is no canonical definition to state claims against.
-/

/-! ## A032629.P12077807046777871823

`A032611(A032621(n+1))`
-/

namespace A032629.P12077807046777871823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032621 (n + 1)).toNat

end

end A032629.P12077807046777871823

/-! ## A032629.P9510957655493824172

`A032612(or(1, A032621(n+1)))-1`
-/

namespace A032629.P9510957655493824172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (Int.lor 1 (A032621 (n + 1))).toNat - 1

end

end A032629.P9510957655493824172

/-! ## A032629.P8646873681322676565

`A057979(2*n)+A032610(A032621(n+1))`
-/

namespace A032629.P8646873681322676565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) + A032610 (A032621 (n + 1)).toNat

end

end A032629.P8646873681322676565

/-! ## A032629.P17155105117729210418

`A032613(A032621(n+1))-gcd(2, A005843(n))`
-/

namespace A032629.P17155105117729210418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032621 (n + 1)).toNat - (Int.gcd 2 (A005843 n) : ℤ)

end

end A032629.P17155105117729210418

/-! ## A032629.P7339117625088421760

`A032610(A032621(n+1))+A000045((-1)^(2*n))`
-/

namespace A032629.P7339117625088421760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032621 (n + 1)).toNat + A000045 ((-1) ^ (2 * n)).toNat

end

end A032629.P7339117625088421760

/-! ## A032629.P5692880857201714223

`A032610(A032621(n+1))-A008683(A032605(n+1))`
-/

namespace A032629.P5692880857201714223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032621 (n + 1)).toNat - A008683 (A032605 (n + 1)).toNat

end

end A032629.P5692880857201714223

/-! ## A032629.P17067813879045590521

`A032612(A032621(n+1))-A001222(A284290(n+1))`
-/

namespace A032629.P17067813879045590521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (A032621 (n + 1)).toNat - A001222 (A284290 (n + 1)).toNat

end

end A032629.P17067813879045590521

/-! ## A032629.P12383263422028809189

`A032613(A032621(n+1))-A228085(A230091(n+1))`
-/

namespace A032629.P12383263422028809189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032621 (n + 1)).toNat - A228085 (A230091 (n + 1)).toNat

end

end A032629.P12383263422028809189

/-! ## A032629.P8908171321061032891

`p?[A032611(n+1)]`
-/

namespace A032629.P8908171321061032891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032629.P8908171321061032891

/-! ## A032629.P1814913633486185772

`p?[A032610(n+1)+1]`
-/

namespace A032629.P1814913633486185772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032629.P1814913633486185772

/-! ## A032629.P7946825736863151408

`p?[A032612(n+1)-1]`
-/

namespace A032629.P7946825736863151408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032629.P7946825736863151408

/-! ## A032629.P7277950810363299941

`p?[A032613(n+1)-2]`
-/

namespace A032629.P7277950810363299941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032629.P7277950810363299941

/-! ## A032629.P413215469350470067

`record[p?[A032613(A029579(n))-2]]`
-/

namespace A032629.P413215469350470067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A029579 n).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032629.P413215469350470067

/-! ## A032629.P6116409912187677913

`A032610(A032621(n+1))-A008683(A032592(n))`
-/

namespace A032629.P6116409912187677913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032621 (n + 1)).toNat - A008683 (A032592 n).toNat

end

end A032629.P6116409912187677913

/-!
# A032630: Primes that are concatenations of n with n + 7.

The programs for A032630, there is no canonical definition to state claims against.
-/

/-! ## A032630.P8872760032855451946

`A032612(A032622(n+1))`
-/

namespace A032630.P8872760032855451946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (A032622 (n + 1)).toNat

end

end A032630.P8872760032855451946

/-! ## A032630.P13281937360954943505

`A057979(2*n)+A032611(A032622(n+1))`
-/

namespace A032630.P13281937360954943505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) + A032611 (A032622 (n + 1)).toNat

end

end A032630.P13281937360954943505

/-! ## A032630.P17949408100116370018

`A204127(or(2, n))+A032611(A032622(n+1))`
-/

namespace A032630.P17949408100116370018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (Nat.lor 2 n) + A032611 (A032622 (n + 1)).toNat

end

end A032630.P17949408100116370018

/-! ## A032630.P13811953596825433425

`A032611(A032622(n+1))+A000035(A109613(n))`
-/

namespace A032630.P13811953596825433425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032622 (n + 1)).toNat + A000035 (A109613 n).toNat

end

end A032630.P13811953596825433425

/-! ## A032630.P13227863381938875031

`A032611(A032622(n+1))+A006257(A120880(n))`
-/

namespace A032630.P13227863381938875031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032622 (n + 1)).toNat + A006257 (A120880 n).toNat

end

end A032630.P13227863381938875031

/-! ## A032630.P14591396289298861176

`A091862(A277561(n))+A032611(A032622(n+1))`
-/

namespace A032630.P14591396289298861176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (A277561 n).toNat + A032611 (A032622 (n + 1)).toNat

end

end A032630.P14591396289298861176

/-! ## A032630.P18358738105822221024

`A091862(A000040(n+1))+A032611(A032622(n+1))`
-/

namespace A032630.P18358738105822221024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (A000040 (n + 1)).toNat + A032611 (A032622 (n + 1)).toNat

end

end A032630.P18358738105822221024

/-! ## A032630.P13780731502778436026

`A032611(A032622(n+1))+A014973(A086096(n+1))`
-/

namespace A032630.P13780731502778436026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032622 (n + 1)).toNat + A014973 (A086096 (n + 1)).toNat

end

end A032630.P13780731502778436026

/-! ## A032630.P16152904490749812147

`A091862(A014973(n+1))+A032611(A032622(n+1))`
-/

namespace A032630.P16152904490749812147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (A014973 (n + 1)).toNat + A032611 (A032622 (n + 1)).toNat

end

end A032630.P16152904490749812147

/-! ## A032630.P3831520769908933306

`A032611(A032622(n+1))+A000035(A120263(n+1))`
-/

namespace A032630.P3831520769908933306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032622 (n + 1)).toNat + A000035 (A120263 (n + 1)).toNat

end

end A032630.P3831520769908933306

/-! ## A032630.P11532432261714610634

`A204127(A103517(n+1))+A032611(A032622(n+1))`
-/

namespace A032630.P11532432261714610634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (A103517 (n + 1)).toNat + A032611 (A032622 (n + 1)).toNat

end

end A032630.P11532432261714610634

/-! ## A032630.P7971819656134705588

`A204127(A277568(n+1))+A032611(A032622(n+1))`
-/

namespace A032630.P7971819656134705588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (A277568 (n + 1)).toNat + A032611 (A032622 (n + 1)).toNat

end

end A032630.P7971819656134705588

/-! ## A032630.P11083655077963336898

`A204127(A111333(n+3))+A032611(A032622(n+1))`
-/

namespace A032630.P11083655077963336898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (A111333 (n + 3)).toNat + A032611 (A032622 (n + 1)).toNat

end

end A032630.P11083655077963336898

/-! ## A032630.P13139235937703191094

`A032611(A032622(n+1))+A014963(28*(n+1))`
-/

namespace A032630.P13139235937703191094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032622 (n + 1)).toNat + A014963 (28 * (n + 1))

end

end A032630.P13139235937703191094

/-! ## A032630.P12099344681763985875

`A032611(A032622(n+1))+A000035(A006512(n+1))`
-/

namespace A032630.P12099344681763985875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032622 (n + 1)).toNat + A000035 (A006512 (n + 1)).toNat

end

end A032630.P12099344681763985875

/-!
# A032631: Primes that are concatenations of n with n + 8.

The programs for A032631, there is no canonical definition to state claims against.
-/

/-! ## A032631.P9107126952988472216

`A032613(A032623(n+1))`
-/

namespace A032631.P9107126952988472216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032623 (n + 1)).toNat

end

end A032631.P9107126952988472216

/-! ## A032631.P2676371309598837498

`A057427(n+1)+A032612(A032623(n+1))`
-/

namespace A032631.P2676371309598837498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A032612 (A032623 (n + 1)).toNat

end

end A032631.P2676371309598837498

/-! ## A032631.P3689605129147870440

`A032612(A032623(n+1))-A190611(gcd(n, n+1))`
-/

namespace A032631.P3689605129147870440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (A032623 (n + 1)).toNat - A190611 (Nat.gcd n (n + 1))

end

end A032631.P3689605129147870440

/-! ## A032631.P4808965653787491036

`A032612(A032623(n+1))+A001222(A060397(n))`
-/

namespace A032631.P4808965653787491036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (A032623 (n + 1)).toNat + A001222 (A060397 n).toNat

end

end A032631.P4808965653787491036

/-! ## A032631.P5979287782881500352

`A279759(A046923(n))+A032612(A032623(n+1))`
-/

namespace A032631.P5979287782881500352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279759 (A046923 n).toNat + A032612 (A032623 (n + 1)).toNat

end

end A032631.P5979287782881500352

/-! ## A032631.P2902712248322930743

`A129138(A008578(n+1))+A032612(A032623(n+1))`
-/

namespace A032631.P2902712248322930743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129138 (A008578 (n + 1)).toNat + A032612 (A032623 (n + 1)).toNat

end

end A032631.P2902712248322930743

/-! ## A032631.P12521724414863671839

`A032612(A032623(n+1))+A001222(A229947(n+1))`
-/

namespace A032631.P12521724414863671839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (A032623 (n + 1)).toNat + A001222 (A229947 (n + 1)).toNat

end

end A032631.P12521724414863671839

/-! ## A032631.P1016269987795494008

`A279759(A253641(n+1))+A032612(A032623(n+1))`
-/

namespace A032631.P1016269987795494008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279759 (A253641 (n + 1)).toNat + A032612 (A032623 (n + 1)).toNat

end

end A032631.P1016269987795494008

/-! ## A032631.P7375261303622302907

`p?[A032613(n+1)]`
-/

namespace A032631.P7375261303622302907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032631.P7375261303622302907

/-! ## A032631.P10696905982372600856

`p?[A032612(n+1)+1]`
-/

namespace A032631.P10696905982372600856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032631.P10696905982372600856

/-! ## A032631.P12944550043221567210

`record[p?[A032613(A029579(n))]]`
-/

namespace A032631.P12944550043221567210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A029579 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032631.P12944550043221567210

/-! ## A032631.P7454896333996258285

`A032742(A031930(n+1))+A032612(A032623(n+1))`
-/

namespace A032631.P7454896333996258285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A031930 (n + 1)).toNat + A032612 (A032623 (n + 1)).toNat

end

end A032631.P7454896333996258285

/-!
# A032632: Primes that are decimal concatenations of n with n + 9.

The programs for A032632, there is no canonical definition to state claims against.
-/

/-! ## A032632.P7965732407705877788

`A032614(A032624(n+1))`
-/

namespace A032632.P7965732407705877788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032614 (A032624 (n + 1)).toNat

end

end A032632.P7965732407705877788

/-! ## A032632.P7239811057997757774

`A327832(2*n+1)+A032613(A032624(n+1))`
-/

namespace A032632.P7239811057997757774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (2 * n + 1) + A032613 (A032624 (n + 1)).toNat

end

end A032632.P7239811057997757774

/-! ## A032632.P16027658263539108225

`A032613(A032624(n+1))+A001227(A059342(n))`
-/

namespace A032632.P16027658263539108225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032624 (n + 1)).toNat + A001227 (A059342 n).toNat

end

end A032632.P16027658263539108225

/-! ## A032632.P10648935861515174530

`A032613(A032624(n+1))-A008683(A049042(n+1))`
-/

namespace A032632.P10648935861515174530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032624 (n + 1)).toNat - A008683 (A049042 (n + 1)).toNat

end

end A032632.P10648935861515174530

/-! ## A032632.P6492729774780932191

`A032613(A032624(n+1))-A008683(A049043(n+1))`
-/

namespace A032632.P6492729774780932191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032624 (n + 1)).toNat - A008683 (A049043 (n + 1)).toNat

end

end A032632.P6492729774780932191

/-! ## A032632.P4457070864205924197

`A032613(A032624(n+1))+A000034(30*n)`
-/

namespace A032632.P4457070864205924197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032624 (n + 1)).toNat + A000034 (30 * n)

end

end A032632.P4457070864205924197

/-! ## A032632.P9210120145580101318

`p?[A032614(n+1)]`
-/

namespace A032632.P9210120145580101318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032632.P9210120145580101318

/-! ## A032632.P9193703641579300464

`p?[A032613(n+1)+1]`
-/

namespace A032632.P9193703641579300464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A032632.P9193703641579300464

/-! ## A032632.P10050172783128760875

`A040001(A157955(n+1))+A032613(A032624(n+1))`
-/

namespace A032632.P10050172783128760875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A157955 (n + 1)).toNat + A032613 (A032624 (n + 1)).toNat

end

end A032632.P10050172783128760875

/-!
# A032633: a(n) = floor(n^3 / Pi).

The programs for A032633, the canonical program `A032633.P11643489080820217111` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032633 has offset 0).

The definition of A032633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/π)` (program `A032633.P11643489080820217111`, by `A032633.P11643489080820217111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032633.P11643489080820217111

`floor(n^3/π)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032633

/-- `floor(n^3/π)` -/
def P11643489080820217111.Spec : Prop :=
  ∀ n, P11643489080820217111.a n = A032633 n

theorem P11643489080820217111.correct : P11643489080820217111.Spec := by
  intro n
  simp only [A032633]

end A032633

/-! ## A032633.P6147948938620676937

`ceil(n^3/π-A000040(n+1)%2)`
-/

namespace A032633.P6147948938620676937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℝ) / Real.pi - (Int.tmod (A000040 (n + 1)) 2 : ℝ)⌉

end

end A032633.P6147948938620676937

namespace A032633

/-- `ceil(n^3/π-A000040(n+1)%2)` -/
def P6147948938620676937.Spec : Prop :=
  ∀ n, P6147948938620676937.a n = A032633 n

end A032633

/-! ## A032633.P17283020954771532661

`ceil(A057428(n)+A000578(n)/π)`
-/

namespace A032633.P17283020954771532661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (A000578 n : ℝ) / Real.pi⌉

end

end A032633.P17283020954771532661

namespace A032633

/-- `ceil(A057428(n)+A000578(n)/π)` -/
def P17283020954771532661.Spec : Prop :=
  ∀ n, P17283020954771532661.a n = A032633 n

end A032633

/-! ## A032633.P3829487598427922266

`A000038(n+1)+floor(A000578(n)/π)`
-/

namespace A032633.P3829487598427922266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ⌊(A000578 n : ℝ) / Real.pi⌋

end

end A032633.P3829487598427922266

namespace A032633

/-- `A000038(n+1)+floor(A000578(n)/π)` -/
def P3829487598427922266.Spec : Prop :=
  ∀ n, P3829487598427922266.a n = A032633 n

theorem P3829487598427922266.correct : P3829487598427922266.Spec := by
  intro n
  simp only [A032633, Nat.add_sub_cancel, A032633.P3829487598427922266.a, A032633.P11643489080820217111.a, A000038, A000038.P13734959004655594922.a, A000578, A000578.P12162961755414704816.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032633

/-! ## A032633.P6894541326494178062

`floor(A000578(n)/π)%A006457(n)`
-/

namespace A032633.P6894541326494178062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000578 n : ℝ) / Real.pi⌋ (A006457 n)

end

end A032633.P6894541326494178062

namespace A032633

/-- `floor(A000578(n)/π)%A006457(n)` -/
def P6894541326494178062.Spec : Prop :=
  ∀ n, P6894541326494178062.a n = A032633 n

end A032633

/-!
# A032634: a(n) = floor(n/e).

The programs for A032634, the canonical program `A032634.P6588867285997603959` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032634 has offset 0).

The definition of A032634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/e)` (program `A032634.P6588867285997603959`, by `A032634.P6588867285997603959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032634.P6588867285997603959

`floor(n/e)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032634

/-- `floor(n/e)` -/
def P6588867285997603959.Spec : Prop :=
  ∀ n, P6588867285997603959.a n = A032634 n

theorem P6588867285997603959.correct : P6588867285997603959.Spec := by
  intro n
  simp only [A032634]

end A032634

/-! ## A032634.P15141271395435737143

`(ceil(n/e)-1)%(n+1)`
-/

namespace A032634.P15141271395435737143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℝ) / Real.exp 1⌉ - 1) (n + 1 : ℤ)

end

end A032634.P15141271395435737143

namespace A032634

/-- `(ceil(n/e)-1)%(n+1)` -/
def P15141271395435737143.Spec : Prop :=
  ∀ n, P15141271395435737143.a n = A032634 n

end A032634

/-! ## A032634.P7132404680151830776

`∑[and(1, char[ceil(e*(n+1))])]`
-/

namespace A032634.P7132404680151830776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (n + 1 : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032634.P7132404680151830776

namespace A032634

/-- `∑[and(1, char[ceil(e*(n+1))])]` -/
def P7132404680151830776.Spec : Prop :=
  ∀ n, (P7132404680151830776.a n : ℤ) = A032634 n

end A032634

/-! ## A032634.P2558965211964911119

`∑[char[A121384(n+1)]]`
-/

namespace A032634.P2558965211964911119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032634.P2558965211964911119

namespace A032634

/-- `∑[char[A121384(n+1)]]` -/
def P2558965211964911119.Spec : Prop :=
  ∀ n, (P2558965211964911119.a n : ℤ) = A032634 n

end A032634

/-! ## A032634.P16467882455790103890

`∑[char[A121384(n)]]-1`
-/

namespace A032634.P16467882455790103890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A032634.P16467882455790103890

namespace A032634

/-- `∑[char[A121384(n)]]-1` -/
def P16467882455790103890.Spec : Prop :=
  ∀ n, P16467882455790103890.a n = A032634 n

end A032634

/-! ## A032634.P13872689771740827710

`comp[A000572(n+1)]-n`
-/

namespace A032634.P13872689771740827710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A032634.P13872689771740827710

namespace A032634

/-- `comp[A000572(n+1)]-n` -/
def P13872689771740827710.Spec : Prop :=
  ∀ n, P13872689771740827710.a n = A032634 n

end A032634

/-! ## A032634.P7252443891890219154

`∑[char[A022843(n+1)+1]]`
-/

namespace A032634.P7252443891890219154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032634.P7252443891890219154

namespace A032634

/-- `∑[char[A022843(n+1)+1]]` -/
def P7252443891890219154.Spec : Prop :=
  ∀ n, (P7252443891890219154.a n : ℤ) = A032634 n

end A032634

/-! ## A032634.P10800137817852589240

`∑[char[A184589(n+1)+2]]`
-/

namespace A032634.P10800137817852589240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032634.P10800137817852589240

namespace A032634

/-- `∑[char[A184589(n+1)+2]]` -/
def P10800137817852589240.Spec : Prop :=
  ∀ n, (P10800137817852589240.a n : ℤ) = A032634 n

end A032634

/-! ## A032634.P18169738839741409381

`∑[char[∑[A276859(n+1)]+1]]`
-/

namespace A032634.P18169738839741409381
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032634.P18169738839741409381

namespace A032634

/-- `∑[char[∑[A276859(n+1)]+1]]` -/
def P18169738839741409381.Spec : Prop :=
  ∀ n, (P18169738839741409381.a n : ℤ) = A032634 n

end A032634

/-! ## A032634.P271555764425508283

`comp[∑[Δ[A022843(n)]+1]]-n`
-/

namespace A032634.P271555764425508283
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A032634.P271555764425508283

namespace A032634

/-- `comp[∑[Δ[A022843(n)]+1]]-n` -/
def P271555764425508283.Spec : Prop :=
  ∀ n, P271555764425508283.a n = A032634 n

end A032634

/-! ## A032634.P2174660817353521895

`∑{e}[A020639(n+1), floor(n/exp(#))]`
-/

namespace A032634.P2174660817353521895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℝ) / Real.exp (Nat.factorization (f1 n).natAbs p : ℝ)⌋

end

end A032634.P2174660817353521895

namespace A032634

/-- `∑{e}[A020639(n+1), floor(n/exp(#))]` -/
def P2174660817353521895.Spec : Prop :=
  ∀ n, P2174660817353521895.a n = A032634 n

end A032634

/-! ## A032634.P16169637833415244625

`A006594(A065033(2*n))-A065033(2*n)`
-/

namespace A032634.P16169637833415244625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (A065033 (2 * n)).toNat - A065033 (2 * n)

end

end A032634.P16169637833415244625

namespace A032634

/-- `A006594(A065033(2*n))-A065033(2*n)` -/
def P16169637833415244625.Spec : Prop :=
  ∀ n, P16169637833415244625.a n = A032634 n

end A032634

/-!
# A032635: a(n) = floor(n^2 / e).

The programs for A032635, the canonical program `A032635.P11053475391949000795` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032635 has offset 0).

The definition of A032635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/e)` (program `A032635.P11053475391949000795`, by `A032635.P11053475391949000795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032635.P11053475391949000795

`floor(n²/e)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032635

/-- `floor(n²/e)` -/
def P11053475391949000795.Spec : Prop :=
  ∀ n, P11053475391949000795.a n = A032635 n

theorem P11053475391949000795.correct : P11053475391949000795.Spec := by
  intro n
  simp only [A032635]

end A032635

/-! ## A032635.P15323538219890102193

`ceil(A057428(n)+n²/e)`
-/

namespace A032635.P15323538219890102193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n ^ 2 : ℝ) / Real.exp 1⌉

end

end A032635.P15323538219890102193

namespace A032635

/-- `ceil(A057428(n)+n²/e)` -/
def P15323538219890102193.Spec : Prop :=
  ∀ n, P15323538219890102193.a n = A032635 n

end A032635

/-! ## A032635.P4883652547119989915

`ceil(n²/e-A057427(n))`
-/

namespace A032635.P4883652547119989915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.exp 1 - (A057427 n : ℝ)⌉

end

end A032635.P4883652547119989915

namespace A032635

/-- `ceil(n²/e-A057427(n))` -/
def P4883652547119989915.Spec : Prop :=
  ∀ n, P4883652547119989915.a n = A032635 n

end A032635

/-! ## A032635.P7361259012528298336

`A184015(A028310(n))-A028310(n)`
-/

namespace A032635.P7361259012528298336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184015 (A028310 n).toNat - A028310 n

end

end A032635.P7361259012528298336

namespace A032635

/-- `A184015(A028310(n))-A028310(n)` -/
def P7361259012528298336.Spec : Prop :=
  ∀ n, P7361259012528298336.a n = A032635 n

end A032635

/-! ## A032635.P16515138939249923238

`A032634(n²)`
-/

namespace A032635.P16515138939249923238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n ^ 2)

end

end A032635.P16515138939249923238

namespace A032635

/-- `A032634(n²)` -/
def P16515138939249923238.Spec : Prop :=
  ∀ n, P16515138939249923238.a n = A032635 n

theorem P16515138939249923238.correct : P16515138939249923238.Spec := by
  intro n
  simp only [A032635, Nat.add_sub_cancel, A032635.P16515138939249923238.a, A032635.P11053475391949000795.a, A032634, A032634.P6588867285997603959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032635

/-! ## A032635.P6980460960429847006

`or(char[2], A032634(A000290(n)))`
-/

namespace A032635.P6980460960429847006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A032634 (A000290 n).toNat)

end

end A032635.P6980460960429847006

namespace A032635

/-- `or(char[2], A032634(A000290(n)))` -/
def P6980460960429847006.Spec : Prop :=
  ∀ n, P6980460960429847006.a n = A032635 n

end A032635

/-! ## A032635.P9932763491404175306

`A032634(A000290(n))*A057427(n)`
-/

namespace A032635.P9932763491404175306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A000290 n).toNat * A057427 n

end

end A032635.P9932763491404175306

namespace A032635

/-- `A032634(A000290(n))*A057427(n)` -/
def P9932763491404175306.Spec : Prop :=
  ∀ n, P9932763491404175306.a n = A032635 n

end A032635

/-! ## A032635.P3721466910955122666

`A032634(A000290(n))*A178334(n)`
-/

namespace A032635.P3721466910955122666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A000290 n).toNat * A178334 n

end

end A032635.P3721466910955122666

namespace A032635

/-- `A032634(A000290(n))*A178334(n)` -/
def P3721466910955122666.Spec : Prop :=
  ∀ n, P3721466910955122666.a n = A032635 n

end A032635

/-! ## A032635.P13050592326976651268

`A032634(A000290(n))%A000032(n)`
-/

namespace A032635.P13050592326976651268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032634 (A000290 n).toNat) (A000032 n)

end

end A032635.P13050592326976651268

namespace A032635

/-- `A032634(A000290(n))%A000032(n)` -/
def P13050592326976651268.Spec : Prop :=
  ∀ n, P13050592326976651268.a n = A032635 n

end A032635

/-! ## A032635.P12896204304494076419

`A032634(A000290(n))/A178334(n+1)`
-/

namespace A032635.P12896204304494076419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032634 (A000290 n).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A032635.P12896204304494076419

namespace A032635

/-- `A032634(A000290(n))/A178334(n+1)` -/
def P12896204304494076419.Spec : Prop :=
  ∀ n, P12896204304494076419.a n = (A032635 n : ℚ)

end A032635

/-! ## A032635.P16259607607012896679

`A007318(A001842(n))*A032634(A000290(n))`
-/

namespace A032635.P16259607607012896679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001842 n).toNat * A032634 (A000290 n).toNat

end

end A032635.P16259607607012896679

namespace A032635

/-- `A007318(A001842(n))*A032634(A000290(n))` -/
def P16259607607012896679.Spec : Prop :=
  ∀ n, P16259607607012896679.a n = A032635 n

end A032635

/-!
# A032636: a(n) = floor(n^3 / e).

The programs for A032636, the canonical program `A032636.P16683030798261668711` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032636 has offset 0).

The definition of A032636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/e)` (program `A032636.P16683030798261668711`, by `A032636.P16683030798261668711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032636.P16683030798261668711

`floor(n^3/e)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032636

/-- `floor(n^3/e)` -/
def P16683030798261668711.Spec : Prop :=
  ∀ n, P16683030798261668711.a n = A032636 n

theorem P16683030798261668711.correct : P16683030798261668711.Spec := by
  intro n
  simp only [A032636]

end A032636

/-! ## A032636.P7757242351389578240

`ceil(A057428(n)+n^3/e)`
-/

namespace A032636.P7757242351389578240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n ^ 3 : ℝ) / Real.exp 1⌉

end

end A032636.P7757242351389578240

namespace A032636

/-- `ceil(A057428(n)+n^3/e)` -/
def P7757242351389578240.Spec : Prop :=
  ∀ n, P7757242351389578240.a n = A032636 n

end A032636

/-! ## A032636.P3986735793907146897

`ceil(n^3/e-A000045(ceil(n/(n+1))))`
-/

namespace A032636.P3986735793907146897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℝ) / Real.exp 1 - (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℝ)⌉

end

end A032636.P3986735793907146897

namespace A032636

/-- `ceil(n^3/e-A000045(ceil(n/(n+1))))` -/
def P3986735793907146897.Spec : Prop :=
  ∀ n, P3986735793907146897.a n = A032636 n

end A032636

/-! ## A032636.P13964800077053867382

`ceil(n^3/e-A057979(A001316(n)))`
-/

namespace A032636.P13964800077053867382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℝ) / Real.exp 1 - (A057979 (A001316 n).toNat : ℝ)⌉

end

end A032636.P13964800077053867382

namespace A032636

/-- `ceil(n^3/e-A057979(A001316(n)))` -/
def P13964800077053867382.Spec : Prop :=
  ∀ n, P13964800077053867382.a n = A032636 n

end A032636

/-! ## A032636.P12041860199574223637

`floor(A000578(n)/e)%A144536(n)`
-/

namespace A032636.P12041860199574223637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000578 n : ℝ) / Real.exp 1⌋ (A144536 n)

end

end A032636.P12041860199574223637

namespace A032636

/-- `floor(A000578(n)/e)%A144536(n)` -/
def P12041860199574223637.Spec : Prop :=
  ∀ n, P12041860199574223637.a n = A032636 n

end A032636

/-!
# A032637: a(n) = floor(Pi^n / e).

The programs for A032637, the canonical program `A032637.P1458422399656872803` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032637 has offset 0).

The definition of A032637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032637.P1458422399656872803

`floor(π^n/e)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032637

/-- `floor(π^n/e)` -/
def P1458422399656872803.Spec : Prop :=
  ∀ n, P1458422399656872803.a n = A032637 n

theorem P1458422399656872803.correct : P1458422399656872803.Spec := by
  intro n
  simp only [A032637]

end A032637

/-! ## A032637.P8095837613235419480

`A062276(floor(π^n))`
-/

namespace A032637.P8095837613235419480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 ⌊Real.pi ^ n⌋.toNat

end

end A032637.P8095837613235419480

namespace A032637

/-- `A062276(floor(π^n))` -/
def P8095837613235419480.Spec : Prop :=
  ∀ n, P8095837613235419480.a n = A032637 n

end A032637

/-! ## A032637.P58887185959067156

`A062276(A001672(n))+char[37]`
-/

namespace A032637.P58887185959067156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A001672 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032637.P58887185959067156

namespace A032637

/-- `A062276(A001672(n))+char[37]` -/
def P58887185959067156.Spec : Prop :=
  ∀ n, P58887185959067156.a n = A032637 n

end A032637

/-! ## A032637.P13172733751515462286

`A062276(A002160(n))+char[37]`
-/

namespace A032637.P13172733751515462286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A002160 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032637.P13172733751515462286

namespace A032637

/-- `A062276(A002160(n))+char[37]` -/
def P13172733751515462286.Spec : Prop :=
  ∀ n, P13172733751515462286.a n = A032637 n

end A032637

/-! ## A032637.P2736118341630831200

`A032634(A093719(n)+A002160(n))`
-/

namespace A032637.P2736118341630831200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A093719 n + A002160 n).toNat

end

end A032637.P2736118341630831200

namespace A032637

/-- `A032634(A093719(n)+A002160(n))` -/
def P2736118341630831200.Spec : Prop :=
  ∀ n, P2736118341630831200.a n = A032637 n

end A032637

/-!
# A032638: a(n) = floor( exp(n) / Pi ).

The programs for A032638, the canonical program `A032638.P8249765223035741867` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032638 has offset 0).

The definition of A032638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(n)/π)` (program `A032638.P8249765223035741867`, by `A032638.P8249765223035741867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032638.P8249765223035741867

`floor(exp(n)/π)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032638

/-- `floor(exp(n)/π)` -/
def P8249765223035741867.Spec : Prop :=
  ∀ n, P8249765223035741867.a n = A032638 n

theorem P8249765223035741867.correct : P8249765223035741867.Spec := by
  intro n
  simp only [A032638]

end A032638

/-! ## A032638.P12938409522645032346

`ceil(A008683(A051698(n))+exp(n)/π)`
-/

namespace A032638.P12938409522645032346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A051698 n).toNat : ℝ) + Real.exp (n : ℝ) / Real.pi⌉

end

end A032638.P12938409522645032346

namespace A032638

/-- `ceil(A008683(A051698(n))+exp(n)/π)` -/
def P12938409522645032346.Spec : Prop :=
  ∀ n, P12938409522645032346.a n = A032638 n

end A032638

/-! ## A032638.P2187451380301905031

`ceil(A307445(A255313(n+1))+exp(n)/π)`
-/

namespace A032638.P2187451380301905031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307445 (A255313 (n + 1)).toNat : ℝ) + Real.exp (n : ℝ) / Real.pi⌉

end

end A032638.P2187451380301905031

namespace A032638

/-- `ceil(A307445(A255313(n+1))+exp(n)/π)` -/
def P2187451380301905031.Spec : Prop :=
  ∀ n, P2187451380301905031.a n = A032638 n

end A032638

/-! ## A032638.P4141103029803731466

`ceil(exp(n)/π-A074909(∑[n+1]))`
-/

namespace A032638.P4141103029803731466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ) / Real.pi - (A074909 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A032638.P4141103029803731466

namespace A032638

/-- `ceil(exp(n)/π-A074909(∑[n+1]))` -/
def P4141103029803731466.Spec : Prop :=
  ∀ n, P4141103029803731466.a n = A032638 n

end A032638

/-! ## A032638.P1054043032240488693

`ceil(exp(n)/π-A051340(A023929(n)))`
-/

namespace A032638.P1054043032240488693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ) / Real.pi - (A051340 (A023929 n).toNat : ℝ)⌉

end

end A032638.P1054043032240488693

namespace A032638

/-- `ceil(exp(n)/π-A051340(A023929(n)))` -/
def P1054043032240488693.Spec : Prop :=
  ∀ n, P1054043032240488693.a n = A032638 n

end A032638

/-!
# A032639: Lucky numbers indexed by the lucky numbers (Lucky numbers with lucky number subscripts).

The programs for A032639, there is no canonical definition to state claims against.
-/

/-! ## A032639.P5990871866781254037

`A000959(A000959(n+1))`
-/

namespace A032639.P5990871866781254037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (n + 1)).toNat

end

end A032639.P5990871866781254037

/-! ## A032639.P17178240877929848413

`or(1, A000959(A000959(Δ[n²]-n)))`
-/

namespace A032639.P17178240877929848413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000959 (A000959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat)

end

end A032639.P17178240877929848413

/-! ## A032639.P16355028892964996261

`record[A000959(A000959(A305297(n)))]`
-/

namespace A032639.P16355028892964996261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (A305297 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P16355028892964996261

/-! ## A032639.P6426465334331744951

`record[A000959(A000959(A324347(n)))]`
-/

namespace A032639.P6426465334331744951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P6426465334331744951

/-! ## A032639.P13934940066975912185

`record[A000959(A000959(A328399(n)))]`
-/

namespace A032639.P13934940066975912185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P13934940066975912185

/-! ## A032639.P15140011510371406078

`record[A000959(A000959(A344180(n)))]`
-/

namespace A032639.P15140011510371406078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P15140011510371406078

/-! ## A032639.P8376963966368033468

`A099988(A049781(n+1))`
-/

namespace A032639.P8376963966368033468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099988 (A049781 (n + 1)).toNat

end

end A032639.P8376963966368033468

/-! ## A032639.P8054122122381548094

`sqrt(A032598(sqrt(A032598(n+1))))`
-/

namespace A032639.P8054122122381548094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (SequenceMachineLib.roundAway (Real.sqrt (A032598 (n + 1) : ℝ))).toNat : ℝ)

end

end A032639.P8054122122381548094

/-! ## A032639.P16862359119359756094

`A139269(A139269(n+1)/2)/2`
-/

namespace A032639.P16862359119359756094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A032639.P16862359119359756094

/-! ## A032639.P7396392943747824100

`record[A032600(n+1)+A000040(n+1)*A145649(n+1)]`
-/

namespace A032639.P7396392943747824100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (n + 1) + A000040 (n + 1) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P7396392943747824100

/-! ## A032639.P9778517340413286140

`record[(eq[1, A260429(n+1)]+1)*A145649(n+1)]`
-/

namespace A032639.P9778517340413286140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P9778517340413286140

/-! ## A032639.P11040209113410263326

`record[(lt[A260437(n+1), 1]+1)*A145649(n+1)]`
-/

namespace A032639.P11040209113410263326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℤ) * A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032639.P11040209113410263326

/-! ## A032639.P14530972092634700551

`A000720(A032605(A000720(A032605(n+1))))`
-/

namespace A032639.P14530972092634700551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A032605 (A000720 (A032605 (n + 1)).toNat).toNat).toNat

end

end A032639.P14530972092634700551

/-!
# A032640: Numbers k such that k concatenated with itself is a lucky number.

The programs for A032640, there is no canonical definition to state claims against.
-/

/-! ## A032640.P12893593384382665611

`A011776(A032650(n+1))`
-/

namespace A032640.P12893593384382665611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032650 (n + 1)).toNat

end

end A032640.P12893593384382665611

/-! ## A032640.P14567289354978787848

`A033676(or(1, A032650(n+1)))`
-/

namespace A032640.P14567289354978787848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.lor 1 (A032650 (n + 1))).toNat

end

end A032640.P14567289354978787848

/-! ## A032640.P2506390016519342014

`A051119(or(1, A032650(n+1)))`
-/

namespace A032640.P2506390016519342014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (Int.lor 1 (A032650 (n + 1))).toNat

end

end A032640.P2506390016519342014

/-! ## A032640.P4349707340950801003

`A052126(or(1, A032650(n+1)))`
-/

namespace A032640.P4349707340950801003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.lor 1 (A032650 (n + 1))).toNat

end

end A032640.P4349707340950801003

/-! ## A032640.P17403730606799533235

`A052128(or(1, A032650(n+1)))`
-/

namespace A032640.P17403730606799533235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (Int.lor 1 (A032650 (n + 1))).toNat

end

end A032640.P17403730606799533235

/-!
# A032641: Numbers k such that k concatenated with k+1 is a lucky number.

The programs for A032641, there is no canonical definition to state claims against.
-/

/-! ## A032641.P6508757284070742746

`A075013(A032651(n+1))`
-/

namespace A032641.P6508757284070742746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075013 (A032651 (n + 1)).toNat

end

end A032641.P6508757284070742746

/-! ## A032641.P17648393845561649501

`A011776(A032651(n+1)-1)`
-/

namespace A032641.P17648393845561649501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032651 (n + 1) - 1).toNat

end

end A032641.P17648393845561649501

/-! ## A032641.P11726964987725134751

`A033676(A032651(n+1)-1)`
-/

namespace A032641.P11726964987725134751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A032651 (n + 1) - 1).toNat

end

end A032641.P11726964987725134751

/-! ## A032641.P895066401973144707

`A052126(A032651(n+1)-1)`
-/

namespace A032641.P895066401973144707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032651 (n + 1) - 1).toNat

end

end A032641.P895066401973144707

/-! ## A032641.P10055065899849565088

`A060775(A032651(n+1)-1)`
-/

namespace A032641.P10055065899849565088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A032651 (n + 1) - 1).toNat

end

end A032641.P10055065899849565088

/-!
# A032642: Numbers k such that k concatenated with k+2 is a lucky number.

The programs for A032642, there is no canonical definition to state claims against.
-/

/-! ## A032642.P5619907910884119897

`A011776(A032652(n+1)-2)`
-/

namespace A032642.P5619907910884119897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032652 (n + 1) - 2).toNat

end

end A032642.P5619907910884119897

/-! ## A032642.P11672452998464651791

`A052126(A032652(n+1)-2)`
-/

namespace A032642.P11672452998464651791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032652 (n + 1) - 2).toNat

end

end A032642.P11672452998464651791

/-! ## A032642.P14632262216109971963

`eq[1, A145649(A127421(n+1)+1)]`
-/

namespace A032642.P14632262216109971963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A127421 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032642.P14632262216109971963

/-!
# A032643: Numbers k such that k concatenated with k+3 is a lucky number.

The programs for A032643, there is no canonical definition to state claims against.
-/

/-! ## A032643.P9213084537484005414

`A011776(A032653(n+1)-3)`
-/

namespace A032643.P9213084537484005414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032653 (n + 1) - 3).toNat

end

end A032643.P9213084537484005414

/-! ## A032643.P17669258602352410076

`A033676(A032653(n+1)-3)`
-/

namespace A032643.P17669258602352410076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A032653 (n + 1) - 3).toNat

end

end A032643.P17669258602352410076

/-! ## A032643.P5650342509682722398

`A052126(A032653(n+1)-3)`
-/

namespace A032643.P5650342509682722398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032653 (n + 1) - 3).toNat

end

end A032643.P5650342509682722398

/-! ## A032643.P3749967405885696105

`A304793(A304824(n))+A000040(2*n+1)`
-/

namespace A032643.P3749967405885696105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A304824 n).toNat + A000040 (2 * n + 1)

end

end A032643.P3749967405885696105

/-!
# A032644: Numbers k such that k concatenated with k+4 is a lucky number.

The programs for A032644, there is no canonical definition to state claims against.
-/

/-! ## A032644.P13095511789223937746

`A345933(A032654(n+1)-4)`
-/

namespace A032644.P13095511789223937746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (A032654 (n + 1) - 4).toNat

end

end A032644.P13095511789223937746

/-!
# A032646: Numbers k such that k concatenated with k+6 is a lucky number.

The programs for A032646, there is no canonical definition to state claims against.
-/

/-! ## A032646.P11139327079476871319

`A011776(A032656(n+1)-6)`
-/

namespace A032646.P11139327079476871319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032656 (n + 1) - 6).toNat

end

end A032646.P11139327079476871319

/-! ## A032646.P11907406163522181064

`A051119(A032656(n+1)-6)`
-/

namespace A032646.P11907406163522181064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032656 (n + 1) - 6).toNat

end

end A032646.P11907406163522181064

/-! ## A032646.P17810871946649468052

`A060775(A032656(n+1)-6)`
-/

namespace A032646.P17810871946649468052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A032656 (n + 1) - 6).toNat

end

end A032646.P17810871946649468052

/-!
# A032648: Numbers k such that k concatenated with k+8 is a lucky number.

The programs for A032648, there is no canonical definition to state claims against.
-/

/-! ## A032648.P5906851477446077938

`eq[6, sqrt(A338828(5*n+12))]`
-/

namespace A032648.P5906851477446077938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A338828 (5 * n + 12) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A032648.P5906851477446077938

/-!
# A032649: Numbers k such that k concatenated with k+9 is a lucky number.

The programs for A032649, there is no canonical definition to state claims against.
-/

/-! ## A032649.P7850111348577723319

`A011776(A032659(n+1)-9)`
-/

namespace A032649.P7850111348577723319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032659 (n + 1) - 9).toNat

end

end A032649.P7850111348577723319

/-! ## A032649.P17574261586986227595

`A033676(A032659(n+1)-9)`
-/

namespace A032649.P17574261586986227595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A032659 (n + 1) - 9).toNat

end

end A032649.P17574261586986227595

/-! ## A032649.P16243640621396138998

`A051119(A032659(n+1)-9)`
-/

namespace A032649.P16243640621396138998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032659 (n + 1) - 9).toNat

end

end A032649.P16243640621396138998

/-! ## A032649.P8447492718594168327

`A052126(A032659(n+1)-9)`
-/

namespace A032649.P8447492718594168327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032659 (n + 1) - 9).toNat

end

end A032649.P8447492718594168327

/-! ## A032649.P7557730847842681057

`A052128(A032659(n+1)-9)`
-/

namespace A032649.P7557730847842681057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A032659 (n + 1) - 9).toNat

end

end A032649.P7557730847842681057

/-!
# A032650: Lucky numbers that are concatenations of a number k with itself.

The programs for A032650, there is no canonical definition to state claims against.
-/

/-! ## A032650.P11365822429765209878

`A020338(A032640(n+1))`
-/

namespace A032650.P11365822429765209878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A032640 (n + 1)).toNat

end

end A032650.P11365822429765209878

/-! ## A032650.P18135650101337732288

`filter[A249166(n+1), A145649(#)]`
-/

namespace A032650.P18135650101337732288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032650.P18135650101337732288

/-! ## A032650.P7294555434632700930

`filter[A020338(n+2), A145649(#)]`
-/

namespace A032650.P7294555434632700930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032650.P7294555434632700930

/-!
# A032651: Lucky numbers that are decimal concatenations of n with n + 1.

The programs for A032651, there is no canonical definition to state claims against.
-/

/-! ## A032651.P15399814812796342538

`A001704(A032641(n+1))`
-/

namespace A032651.P15399814812796342538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A032641 (n + 1)).toNat

end

end A032651.P15399814812796342538

/-! ## A032651.P17686271504801296698

`A127421(A032641(n+1)+1)`
-/

namespace A032651.P17686271504801296698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A032641 (n + 1) + 1).toNat

end

end A032651.P17686271504801296698

/-! ## A032651.P13699757182815601285

`filter[A001704(n+1), A145649(#)]`
-/

namespace A032651.P13699757182815601285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032651.P13699757182815601285

/-! ## A032651.P13327140645964479246

`filter[A030656(n+1), A145649(#)]`
-/

namespace A032651.P13327140645964479246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032651.P13327140645964479246

/-!
# A032652: Lucky numbers that are concatenations of n with n + 2.

The programs for A032652, there is no canonical definition to state claims against.
-/

/-! ## A032652.P13002142332143902452

`A032607(A032642(n+1))`
-/

namespace A032652.P13002142332143902452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A032642 (n + 1)).toNat

end

end A032652.P13002142332143902452

/-! ## A032652.P9810028998575994798

`A127421(A032642(n+1)+1)+1`
-/

namespace A032652.P9810028998575994798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A032642 (n + 1) + 1).toNat + 1

end

end A032652.P9810028998575994798

/-! ## A032652.P3086455379177381838

`∩[A000959(n+1), A032607(n+1)]`
-/

namespace A032652.P3086455379177381838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032652.P3086455379177381838

/-! ## A032652.P4916871952690692623

`filter[A032607(n+1), A145649(#)]`
-/

namespace A032652.P4916871952690692623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032652.P4916871952690692623

/-!
# A032653: Lucky numbers that are decimal concatenations of n with n + 3.

The programs for A032653, there is no canonical definition to state claims against.
-/

/-! ## A032653.P9050426751019244529

`A032608(A032643(n+1))`
-/

namespace A032653.P9050426751019244529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (A032643 (n + 1)).toNat

end

end A032653.P9050426751019244529

/-! ## A032653.P14142740073695767573

`∩[A000959(n+1), A032608(n+1)]`
-/

namespace A032653.P14142740073695767573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032653.P14142740073695767573

/-! ## A032653.P14745646668965277869

`∩[A032608(n+1), A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A032653.P14745646668965277869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031883 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032653.P14745646668965277869

/-!
# A032654: Lucky numbers that are concatenations of n with n + 4.

The programs for A032654, there is no canonical definition to state claims against.
-/

/-! ## A032654.P12305151772850041171

`A032609(A032644(n+1))`
-/

namespace A032654.P12305151772850041171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032644 (n + 1)).toNat

end

end A032654.P12305151772850041171

/-! ## A032654.P115949701723610101

`A246935(∑[n])+A032608(A032644(n+1))`
-/

namespace A032654.P115949701723610101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (∑ j ∈ Finset.range (n + 1), f1 j) + A032608 (A032644 (n + 1)).toNat

end

end A032654.P115949701723610101

/-! ## A032654.P1596936988182644262

`A032608(A032644(n+1))+A010872(3*n+1)`
-/

namespace A032654.P1596936988182644262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032608 (A032644 (n + 1)).toNat + A010872 (3 * n + 1)

end

end A032654.P1596936988182644262

/-! ## A032654.P9198428797691341831

`A103295(val(n+12, 5))+A032608(A032644(n+1))`
-/

namespace A032654.P9198428797691341831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103295 (SequenceMachineLib.valuation (n + 12) 5) + A032608 (A032644 (n + 1)).toNat

end

end A032654.P9198428797691341831

/-! ## A032654.P6104295155998513912

`A180000(val(n+12, 5))+A032608(A032644(n+1))`
-/

namespace A032654.P6104295155998513912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 (SequenceMachineLib.valuation (n + 12) 5) + A032608 (A032644 (n + 1)).toNat

end

end A032654.P6104295155998513912

/-! ## A032654.P9270254529843983720

`A227038(val(n+12, 5))+A032608(A032644(n+1))`
-/

namespace A032654.P9270254529843983720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227038 (SequenceMachineLib.valuation (n + 12) 5) + A032608 (A032644 (n + 1)).toNat

end

end A032654.P9270254529843983720

/-! ## A032654.P12660392405976276702

`A342671(A342671(n+1))+A032608(A032644(n+1))`
-/

namespace A032654.P12660392405976276702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A342671 (n + 1)).toNat + A032608 (A032644 (n + 1)).toNat

end

end A032654.P12660392405976276702

/-!
# A032655: Lucky numbers that are decimal concatenations of n with n + 5.

The programs for A032655, there is no canonical definition to state claims against.
-/

/-! ## A032655.P4564830180739093535

`A032610(A032645(n+1))`
-/

namespace A032655.P4564830180739093535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032645 (n + 1)).toNat

end

end A032655.P4564830180739093535

/-! ## A032655.P10247492347548956088

`A032609(A032645(n+1))+A007318(∑[n])`
-/

namespace A032655.P10247492347548956088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032645 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032655.P10247492347548956088

/-! ## A032655.P14086039165551701900

`A032609(A032645(n+1))+A007318(C(2, n))²`
-/

namespace A032655.P14086039165551701900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032645 (n + 1)).toNat + A007318 (Nat.choose 2 n) ^ 2

end

end A032655.P14086039165551701900

/-! ## A032655.P17038588934851763847

`A032609(A032645(n+1))+A014963(12*(n+1))`
-/

namespace A032655.P17038588934851763847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032645 (n + 1)).toNat + A014963 (12 * (n + 1))

end

end A032655.P17038588934851763847

/-! ## A032655.P4118694611011208278

`A032609(A032645(n+1))+A000005(gcd(n, n+1))`
-/

namespace A032655.P4118694611011208278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A032645 (n + 1)).toNat + A000005 (Nat.gcd n (n + 1))

end

end A032655.P4118694611011208278

/-!
# A032656: Lucky numbers that are decimal concatenations of n with n + 6.

The programs for A032656, there is no canonical definition to state claims against.
-/

/-! ## A032656.P4345930804934476759

`A032611(A032646(n+1))`
-/

namespace A032656.P4345930804934476759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032646 (n + 1)).toNat

end

end A032656.P4345930804934476759

/-! ## A032656.P5750521599997616926

`A032610(A032646(n+1))+A010872(3*n+1)`
-/

namespace A032656.P5750521599997616926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032646 (n + 1)).toNat + A010872 (3 * n + 1)

end

end A032656.P5750521599997616926

/-! ## A032656.P6770227058350758796

`A032610(A032646(n+1))+A075327(n+1)²²%3`
-/

namespace A032656.P6770227058350758796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032646 (n + 1)).toNat + Int.tmod ((A075327 (n + 1) ^ 2) ^ 2) 3

end

end A032656.P6770227058350758796

/-! ## A032656.P14590561481728986077

`A290054(A000217(n))+A032610(A032646(n+1))`
-/

namespace A032656.P14590561481728986077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000217 n).toNat + A032610 (A032646 (n + 1)).toNat

end

end A032656.P14590561481728986077

/-! ## A032656.P4894799864163560554

`A032610(A032646(n+1))+A007318(A000217(n+2))`
-/

namespace A032656.P4894799864163560554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032610 (A032646 (n + 1)).toNat + A007318 (A000217 (n + 2)).toNat

end

end A032656.P4894799864163560554

/-!
# A032657: Lucky numbers that are decimal concatenations of n with n + 7.

The programs for A032657, there is no canonical definition to state claims against.
-/

/-! ## A032657.P16274212303782477150

`A032612(A032647(n+1))`
-/

namespace A032657.P16274212303782477150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032612 (A032647 (n + 1)).toNat

end

end A032657.P16274212303782477150

/-! ## A032657.P1048311126053407118

`A032611(A032647(C(n+1, n)))+1`
-/

namespace A032657.P1048311126053407118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032647 (Nat.choose (n + 1) n)).toNat + 1

end

end A032657.P1048311126053407118

/-! ## A032657.P14930861667410114998

`A032611(A032647(-xor(n, -1)))+1`
-/

namespace A032657.P14930861667410114998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032647 (-Int.xor (n : ℤ) (-1)).toNat).toNat + 1

end

end A032657.P14930861667410114998

/-! ## A032657.P7269290234983352493

`A032611(A032647(Δ[n²]-n))+1`
-/

namespace A032657.P7269290234983352493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A032647 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A032657.P7269290234983352493

/-! ## A032657.P8745158325931552618

`A057427(n+1)+A032611(A032647(n+1))`
-/

namespace A032657.P8745158325931552618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + A032611 (A032647 (n + 1)).toNat

end

end A032657.P8745158325931552618

/-! ## A032657.P13409487469925206966

`A000038(n+1)+A032611(A032647(n+1))+1`
-/

namespace A032657.P13409487469925206966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A032611 (A032647 (n + 1)).toNat + 1)

end

end A032657.P13409487469925206966

/-! ## A032657.P6708425465057253537

`A032611(A032647(n+1))%A010017(∑[n+2]+4)+1`
-/

namespace A032657.P6708425465057253537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032611 (A032647 (n + 1)).toNat) (A010017 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) + 1

end

end A032657.P6708425465057253537

/-!
# A032658: Lucky numbers that are decimal concatenations of n with n + 8.

The programs for A032658, there is no canonical definition to state claims against.
-/

/-! ## A032658.P14496448962227481976

`A032613(A032648(n+1))`
-/

namespace A032658.P14496448962227481976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A032648 (n + 1)).toNat

end

end A032658.P14496448962227481976

/-!
# A032659: Lucky numbers that are concatenations of n with n + 9.

The programs for A032659, there is no canonical definition to state claims against.
-/

/-! ## A032659.P9623153875028559501

`A032614(A032649(n+1))`
-/

namespace A032659.P9623153875028559501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032614 (A032649 (n + 1)).toNat

end

end A032659.P9623153875028559501

/-! ## A032659.P18403430937354198446

`filter[A032614(n+1), A145649(#)]`
-/

namespace A032659.P18403430937354198446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A032659.P18403430937354198446

/-!
# A032660: a(n) is the smallest positive k such that k concatenated with k + n is a lucky number.

The programs for A032660, there is no canonical definition to state claims against.
-/

/-! ## A032660.P12217339567272161898

`A011776(A032661(n)-n)`
-/

namespace A032660.P12217339567272161898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032661 n - (n : ℤ)).toNat

end

end A032660.P12217339567272161898

/-! ## A032660.P17169427727462733239

`A033676(A032661(n)-n)`
-/

namespace A032660.P17169427727462733239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A032661 n - (n : ℤ)).toNat

end

end A032660.P17169427727462733239

/-! ## A032660.P1643614654381940277

`A051119(A032661(n)-n)`
-/

namespace A032660.P1643614654381940277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032661 n - (n : ℤ)).toNat

end

end A032660.P1643614654381940277

/-! ## A032660.P4280964996750828358

`A052126(A032661(n)-n)`
-/

namespace A032660.P4280964996750828358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032661 n - (n : ℤ)).toNat

end

end A032660.P4280964996750828358

/-! ## A032660.P18044336402073135726

`A052128(A032661(n)-n)`
-/

namespace A032660.P18044336402073135726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A032661 n - (n : ℤ)).toNat

end

end A032660.P18044336402073135726

/-! ## A032660.P6702158312324650723

`A078897(A032661(n)-n)`
-/

namespace A032660.P6702158312324650723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078897 (A032661 n - (n : ℤ)).toNat

end

end A032660.P6702158312324650723

/-! ## A032660.P9744017069042330731

`(A032661(n)-n)/A033677(A032661(n)-n)`
-/

namespace A032660.P9744017069042330731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032661 n - (n : ℤ) : ℚ) / (A033677 (A032661 n - (n : ℤ)).toNat : ℚ)

end

end A032660.P9744017069042330731

/-!
# A032662: a(n) is the least k such that k concatenated with k + n is prime.

The programs for A032662, there is no canonical definition to state claims against.
-/

/-! ## A032662.P4765580364781573162

`A011776(A032663(n+1)-n)`
-/

namespace A032662.P4765580364781573162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P4765580364781573162

/-! ## A032662.P11892035747505618213

`A033676(A032663(n+1)-n)`
-/

namespace A032662.P11892035747505618213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P11892035747505618213

/-! ## A032662.P1923366801151924819

`A051119(A032663(n+1)-n)`
-/

namespace A032662.P1923366801151924819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P1923366801151924819

/-! ## A032662.P7707448483819415598

`A052126(A032663(n+1)-n)`
-/

namespace A032662.P7707448483819415598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P7707448483819415598

/-! ## A032662.P13358927259561921889

`A052128(A032663(n+1)-n)`
-/

namespace A032662.P13358927259561921889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P13358927259561921889

/-! ## A032662.P7128410714683130810

`A060775(A032663(n+1)-n)`
-/

namespace A032662.P7128410714683130810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P7128410714683130810

/-! ## A032662.P658223748203469722

`A078899(A032663(n+1)-n)`
-/

namespace A032662.P658223748203469722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (A032663 (n + 1) - (n : ℤ)).toNat

end

end A032662.P658223748203469722

/-! ## A032662.P5198701797831082023

`(A032663(n+1)-n)/A006530(A032663(n+1)-n)`
-/

namespace A032662.P5198701797831082023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032663 (n + 1) - (n : ℤ) : ℚ) / (A006530 (A032663 (n + 1) - (n : ℤ)).toNat : ℚ)

end

end A032662.P5198701797831082023

/-! ## A032662.P11826862029761456105

`A174583(n)-n`
-/

namespace A032662.P11826862029761456105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174583 n - (n : ℤ)

end

end A032662.P11826862029761456105

/-!
# A032664: Digit '1' concatenated with a(n) is a prime.

The programs for A032664, there is no canonical definition to state claims against.
-/

/-! ## A032664.P12481153559458746553

`∪[A166733(n+1), A016760(n)]`
-/

namespace A032664.P12481153559458746553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032664.P12481153559458746553

/-! ## A032664.P11072856151147378295

`A166733(A028310(n))-A000038(n)`
-/

namespace A032664.P11072856151147378295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (A028310 n).toNat - A000038 n

end

end A032664.P11072856151147378295

/-! ## A032664.P77151835707430247

`A166733(A028310(n))%A228344(n+2)`
-/

namespace A032664.P77151835707430247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166733 (A028310 n).toNat) (A228344 (n + 2))

end

end A032664.P77151835707430247

/-! ## A032664.P13134271097391828835

`A166733(A000007(n)+n)-A000038(n)`
-/

namespace A032664.P13134271097391828835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (A000007 n + (n : ℤ)).toNat - A000038 n

end

end A032664.P13134271097391828835

/-! ## A032664.P9984123798413604731

`A166733(gcd(n, A008458(n)))%(2*A160817(n))`
-/

namespace A032664.P9984123798413604731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166733 (Int.gcd (n : ℤ) (A008458 n))) (2 * A160817 n)

end

end A032664.P9984123798413604731

/-! ## A032664.P3345332761757529324

`eq[1, A032662(n)]+1`
-/

namespace A032664.P3345332761757529324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032664.P3345332761757529324

/-! ## A032664.P9453966831420375918

`A133259(eq[1, A032662(n)])`
-/

namespace A032664.P9453966831420375918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032664.P9453966831420375918

/-! ## A032664.P11410353273676774596

`1-A001489(eq[1, A032662(n)])`
-/

namespace A032664.P11410353273676774596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032664.P11410353273676774596

/-! ## A032664.P8284086691422577203

`A005408(eq[1, A032662(2*n)])`
-/

namespace A032664.P8284086691422577203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032664.P8284086691422577203

/-! ## A032664.P16936514523729582915

`A005408(eq[1, A032662(n)]/2)`
-/

namespace A032664.P16936514523729582915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)).toNat

end

end A032664.P16936514523729582915

/-! ## A032664.P17590029234499604382

`A005408(lt[A032662(2*n), 2])`
-/

namespace A032664.P17590029234499604382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A032664.P17590029234499604382

/-! ## A032664.P2467154521028218564

`A005408(lt[A032662(n), 2]/2)`
-/

namespace A032664.P2467154521028218564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2)).toNat

end

end A032664.P2467154521028218564

/-! ## A032664.P6982743207027938104

`record[A000265(n+1)/A032662(n)]`
-/

namespace A032664.P6982743207027938104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A032662 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032664.P6982743207027938104

/-! ## A032664.P7975529674495840164

`lt[A032662(n), A317203(n+1)]+1`
-/

namespace A032664.P7975529674495840164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032664.P7975529674495840164

/-! ## A032664.P14261906403484485712

`record[root(A000265(n+2), A032662(n+1))]`
-/

namespace A032664.P14261906403484485712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 2) : ℝ) ^ (1 / (A032662 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032664.P14261906403484485712

/-! ## A032664.P13282420499752638407

`lt[A032662(n), atan(A000040(n+1))]+1`
-/

namespace A032664.P13282420499752638407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000040 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A032664.P13282420499752638407

/-! ## A032664.P18086043209591346773

`lt[A032662(n), atan(A125490(n+1))]+1`
-/

namespace A032664.P18086043209591346773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A125490 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A032664.P18086043209591346773

/-! ## A032664.P11550419301022038319

`eq[1, A001222(n+1+A061601(n)+n)]`
-/

namespace A032664.P11550419301022038319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) + (A061601 n + (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032664.P11550419301022038319

/-! ## A032664.P3314710304241114279

`lt[A032662(n), A000005(A215848(n+1))]+1`
-/

namespace A032664.P3314710304241114279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A215848 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032664.P3314710304241114279

/-!
# A032665: Digit '2' concatenated with a(n) is a prime.

The programs for A032665, there is no canonical definition to state claims against.
-/

/-! ## A032665.P3932325553912042633

`eq[2, A032662(n)]+2`
-/

namespace A032665.P3932325553912042633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A032665.P3932325553912042633

/-! ## A032665.P374397859812604882

`2-A001489(eq[2, A032662(n)])`
-/

namespace A032665.P374397859812604882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032665.P374397859812604882

/-! ## A032665.P2274324007507192335

`A145979(eq[2, A032662(n)])/2`
-/

namespace A032665.P2274324007507192335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A032665.P2274324007507192335

/-! ## A032665.P2972772845148686288

`A005408(A003602(eq[2, A032662(n)]))`
-/

namespace A032665.P2972772845148686288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A032665.P2972772845148686288

/-! ## A032665.P10664661426400901772

`A005408(eq[2, A032662(A004273(n))])`
-/

namespace A032665.P10664661426400901772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032665.P10664661426400901772

/-! ## A032665.P11969214091177045479

`A005408(A008619(eq[2, A032662(n)]))`
-/

namespace A032665.P11969214091177045479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A032665.P11969214091177045479

/-! ## A032665.P3306787102696602276

`A285327(eq[2, A032662(n)])`
-/

namespace A032665.P3306787102696602276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032665.P3306787102696602276

/-! ## A032665.P4668142034380267020

`A080513(A005408(eq[2, A032662(n)]))`
-/

namespace A032665.P4668142034380267020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A032665.P4668142034380267020

/-!
# A032666: Digit '3' concatenated with a(n) is a prime.

The programs for A032666, there is no canonical definition to state claims against.
-/

/-! ## A032666.P17431838173840749182

`eq[A040491(A140689(n)), A047999(2*n+1)]`
-/

namespace A032666.P17431838173840749182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040491 (A140689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032666.P17431838173840749182

/-!
# A032667: Digit '4' concatenated with a(n) is a prime.

The programs for A032667, there is no canonical definition to state claims against.
-/

/-! ## A032667.P1277505428002819283

`or(A051786(A089736(n)), A089749(n+1))`
-/

namespace A032667.P1277505428002819283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051786 (A089736 n).toNat) (A089749 (n + 1))

end

end A032667.P1277505428002819283

/-! ## A032667.P10015468556994301674

`or(A051786(A089741(n)), A089749(n+1))`
-/

namespace A032667.P10015468556994301674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051786 (A089741 n).toNat) (A089749 (n + 1))

end

end A032667.P10015468556994301674

/-! ## A032667.P6740072438381309946

`or(A089749(n+1), A328590(A051786(n)))`
-/

namespace A032667.P6740072438381309946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089749 (n + 1)) (A328590 (A051786 n).toNat)

end

end A032667.P6740072438381309946

/-! ## A032667.P17539955209042815705

`A089749(n+1)-A089798(A260680(n+1))`
-/

namespace A032667.P17539955209042815705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089749 (n + 1) - A089798 (A260680 (n + 1)).toNat

end

end A032667.P17539955209042815705

/-!
# A032669: Digit '6' concatenated with n is a prime.

The programs for A032669, there is no canonical definition to state claims against.
-/

/-! ## A032669.P13992465149009976927

`A045712(n+3)-A258199(A045712(n+3))`
-/

namespace A032669.P13992465149009976927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045712 (n + 3) - A258199 (A045712 (n + 3)).toNat

end

end A032669.P13992465149009976927

/-! ## A032669.P17561526567394536858

`A038604(comp[n²])%A088077(n+1)`
-/

namespace A032669.P17561526567394536858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038604 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A088077 (n + 1))

end

end A032669.P17561526567394536858

/-! ## A032669.P2470281485973396474

`record[A000040(n+2)^A062157(A006054(n))]`
-/

namespace A032669.P2470281485973396474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) ^ (A062157 (A006054 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032669.P2470281485973396474

/-!
# A032671: Digit '8' concatenated with a(n) is a prime.

The programs for A032671, there is no canonical definition to state claims against.
-/

/-! ## A032671.P7561753791977312694

`lt[A353834(A003990(n+2)), A053246(n+2)]`
-/

namespace A032671.P7561753791977312694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (A003990 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032671.P7561753791977312694

/-!
# A032672: Digit '9' concatenated with a(n) is a prime.

The programs for A032672, there is no canonical definition to state claims against.
-/

/-! ## A032672.P12836788436440294625

`eq[1, A241423(899+n)]`
-/

namespace A032672.P12836788436440294625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241423 (899 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032672.P12836788436440294625

/-! ## A032672.P10947688328205446738

`A004139(lt[A050103(n+1), A342835(n+1)])`
-/

namespace A032672.P10947688328205446738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032672.P10947688328205446738

/-! ## A032672.P16311141629249932420

`A004139(lt[A050150(n+1), A342835(n+1)])`
-/

namespace A032672.P16311141629249932420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032672.P16311141629249932420

/-! ## A032672.P15879328094539668582

`A004139(lt[A320300(n+1), A342835(n+1)])`
-/

namespace A032672.P15879328094539668582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032672.P15879328094539668582

/-! ## A032672.P17148273777996765384

`A151800(A001481(3*n+5)%A116884(2*n+5))`
-/

namespace A032672.P17148273777996765384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A001481 (3 * n + 5)) (A116884 (2 * n + 5))).toNat

end

end A032672.P17148273777996765384

/-!
# A032673: Digit '1' concatenated with a(n) is a lucky number.

The programs for A032673, there is no canonical definition to state claims against.
-/

/-! ## A032673.P4121430201421256315

`eq[1, A032660(n)]+1`
-/

namespace A032673.P4121430201421256315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032673.P4121430201421256315

/-! ## A032673.P13371672043908451862

`eq[1, A032660(A004442(n))]`
-/

namespace A032673.P13371672043908451862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (A004442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032673.P13371672043908451862

/-! ## A032673.P17122700773759824404

`A109613(eq[1, A032660(n)])`
-/

namespace A032673.P17122700773759824404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032673.P17122700773759824404

/-! ## A032673.P15988278277601374743

`A141310(eq[1, A032660(n)])`
-/

namespace A032673.P15988278277601374743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032673.P15988278277601374743

/-! ## A032673.P7815491289967326553

`A153152(eq[1, A032660(n)])`
-/

namespace A032673.P7815491289967326553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032673.P7815491289967326553

/-! ## A032673.P6078409227902866341

`eq[1, A032660(A165754(n))]`
-/

namespace A032673.P6078409227902866341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (A165754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032673.P6078409227902866341

/-! ## A032673.P7967074973963259493

`eq[1, A032660(n-A057427(n))]`
-/

namespace A032673.P7967074973963259493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032673.P7967074973963259493

/-!
# A032674: Digit '2' concatenated with a(n) is a lucky number.

The programs for A032674, there is no canonical definition to state claims against.
-/

/-! ## A032674.P16378874170107198660

`eq[2, A032660(n-2-C(a(n-1), n²))]` with `a(0)=3, a(1)=2`
-/

namespace A032674.P16378874170107198660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A032660 ((n : ℤ) - 2 - (Nat.choose (f2 (n - 1)).toNat (n ^ 2) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032674.P16378874170107198660

/-! ## A032674.P5387181180375428258

`∑[∏{e}[A038722(C(n+7, 7))-1, #+1]]`
-/

namespace A032674.P5387181180375428258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (Nat.choose (n + 7) 7) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032674.P5387181180375428258

/-! ## A032674.P6973221583384585644

`eq[A020985(A062728(n)), A109017(n)]`
-/

namespace A032674.P6973221583384585644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A062728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032674.P6973221583384585644

/-! ## A032674.P2633376865323483632

`or(A014963(A074326(n+1)), A315109(n))`
-/

namespace A032674.P2633376865323483632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A074326 (n + 1)).toNat) (A315109 n)

end

end A032674.P2633376865323483632

/-! ## A032674.P11781936635860734658

`eq[A074206(n), A228369(A000096(3*n+2))]`
-/

namespace A032674.P11781936635860734658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A000096 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032674.P11781936635860734658

/-!
# A032675: Digit '3' concatenated with a(n) is a lucky number.

The programs for A032675, there is no canonical definition to state claims against.
-/

/-! ## A032675.P16775000497205325584

`lt[A253625(n), A253625(A000695(2*n+3))]`
-/

namespace A032675.P16775000497205325584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 (A000695 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032675.P16775000497205325584

/-! ## A032675.P15664939400065165296

`eq[A050467(2*n+5), A267546(A080304(n+1))]`
-/

namespace A032675.P15664939400065165296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050467 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A080304 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032675.P15664939400065165296

/-!
# A032678: Digit '6' concatenated with a(n) is a lucky number.

The programs for A032678, there is no canonical definition to state claims against.
-/

/-! ## A032678.P11392116780902160959

`A179679(n+1)+A061395(A000244(n))`
-/

namespace A032678.P11392116780902160959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179679 (n + 1) + A061395 (A000244 n).toNat

end

end A032678.P11392116780902160959

/-! ## A032678.P10338290023387495866

`A008472(A000079(n)*A059264(n+1))`
-/

namespace A032678.P10338290023387495866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000079 n * A059264 (n + 1)).toNat

end

end A032678.P10338290023387495866

/-! ## A032678.P7411388953852572230

`A059362(n+1)+A015910(A033875(2*n+1))`
-/

namespace A032678.P7411388953852572230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1) + A015910 (A033875 (2 * n + 1)).toNat

end

end A032678.P7411388953852572230

/-!
# A032679: Digit '7' concatenated with a(n) is a lucky number.

The programs for A032679, there is no canonical definition to state claims against.
-/

/-! ## A032679.P17658373288973960788

`eq[A109829(n+2), A276084(A270569(n))]`
-/

namespace A032679.P17658373288973960788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109829 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A270569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032679.P17658373288973960788

/-! ## A032679.P3604625700398868629

`lt[A329318(A143773(n+2)), A326758(n)]`
-/

namespace A032679.P3604625700398868629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329318 (A143773 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032679.P3604625700398868629

/-! ## A032679.P5526999691276866887

`lt[A139770(n+2), A139767(A139774(n+1))]`
-/

namespace A032679.P5526999691276866887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139767 (A139774 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032679.P5526999691276866887

/-! ## A032679.P5917183343765832986

`lt[A046984(A101296(n+2)), A112656(n+5)]`
-/

namespace A032679.P5917183343765832986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046984 (A101296 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112656 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032679.P5917183343765832986

/-! ## A032679.P18175373851168746296

`lt[A003963(A082977(2*(n+1))), A196111(n+2)]`
-/

namespace A032679.P18175373851168746296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A082977 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196111 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032679.P18175373851168746296

/-!
# A032682: Numbers k such that k surrounded by digit '1' is a prime.

The programs for A032682, there is no canonical definition to state claims against.
-/

/-! ## A032682.P3909757153951743154

`eq[1, A032662(10*n)]`
-/

namespace A032682.P3909757153951743154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032682.P3909757153951743154

/-! ## A032682.P17242352830663101685

`lt[A032662(5*2*n), 3]`
-/

namespace A032682.P17242352830663101685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (5 * (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032682.P17242352830663101685

/-! ## A032682.P13938388280024560632

`eq[1, A272232(n)]`
-/

namespace A032682.P13938388280024560632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032682.P13938388280024560632

/-! ## A032682.P4414714245869708761

`lt[n, A249025(n+1)/A272232(n)]`
-/

namespace A032682.P4414714245869708761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249025 (n + 1) : ℚ) / (A272232 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032682.P4414714245869708761

/-! ## A032682.P8359787280540621066

`lt[n, A028310(n+3)/A272232(n)]`
-/

namespace A032682.P8359787280540621066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 3) : ℚ) / (A272232 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032682.P8359787280540621066

/-!
# A032686: Numbers k such that k surrounded by digit '1' is a lucky number.

The programs for A032686, there is no canonical definition to state claims against.
-/

/-! ## A032686.P16497545349749629111

`eq[1, A032660(10*n)]`
-/

namespace A032686.P16497545349749629111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032686.P16497545349749629111

/-! ## A032686.P6369790237874858752

`lt[A032660(A008592(n)), 2]`
-/

namespace A032686.P6369790237874858752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (A008592 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032686.P6369790237874858752

/-! ## A032686.P1333225470683448424

`eq[1, A032660(A008592(n+1))]+1`
-/

namespace A032686.P1333225470683448424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (A008592 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032686.P1333225470683448424

/-! ## A032686.P12480054240051235872

`lt[A032660(10*n), A007913(a(n-1)+1)]` with `a(0)=1`
-/

namespace A032686.P12480054240051235872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A007913 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032686.P12480054240051235872

/-! ## A032686.P4020374866471162083

`lt[(n+1)*A032660(10*n), A000203(n+1)]`
-/

namespace A032686.P4020374866471162083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032660 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032686.P4020374866471162083

/-! ## A032686.P1718787737542762274

`eq[A032660(A008592(n)), A057427(n)]`
-/

namespace A032686.P1718787737542762274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032660 (A008592 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032686.P1718787737542762274

/-!
# A032693: Exactly 3 digits from {1,2,3,4,5,6,7,8,9} can precede a term to form a prime.

The programs for A032693, there is no canonical definition to state claims against.
-/

/-! ## A032693.P6137740752598363201

`lt[A047999(A211110(3*n+1)), 1]`
-/

namespace A032693.P6137740752598363201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A211110 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032693.P6137740752598363201

/-! ## A032693.P655934608720335085

`A266420(n+2)+A112739(A266438(n+2))`
-/

namespace A032693.P655934608720335085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266420 (n + 2) + A112739 (A266438 (n + 2)).toNat

end

end A032693.P655934608720335085

/-! ## A032693.P12230430711784186979

`lt[A118424(n+1), A075199(A057951(3*n+1))]`
-/

namespace A032693.P12230430711784186979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075199 (A057951 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032693.P12230430711784186979

/-!
# A032699: Exactly 3 digits from {1,2,3,4,5,6,7,8,9} can precede a(n) to form a lucky number.

The programs for A032699, there is no canonical definition to state claims against.
-/

/-! ## A032699.P9114888371043501917

`eq[gcd(3, A003242(n)), A333381(2*n+3)]`
-/

namespace A032699.P9114888371043501917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A003242 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032699.P9114888371043501917

/-! ## A032699.P17365733192378464519

`or(1, A311385(n)-A001222(A003510(n)))`
-/

namespace A032699.P17365733192378464519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A311385 n - A001222 (A003510 n).toNat)

end

end A032699.P17365733192378464519

/-! ## A032699.P17986832516781584297

`eq[A024363(2*(n+1)), A024363(A133959(n+2))]`
-/

namespace A032699.P17986832516781584297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A133959 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032699.P17986832516781584297

/-! ## A032699.P377779598282475860

`eq[A040051(A003963((n+2)²)), A333381(2*n+3)]`
-/

namespace A032699.P377779598282475860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (A003963 ((n + 2) ^ 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032699.P377779598282475860

/-! ## A032699.P994557908639168188

`eq[A008966(A049093(2*n+1)), A353854(2*n+3)]`
-/

namespace A032699.P994557908639168188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A049093 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032699.P994557908639168188

