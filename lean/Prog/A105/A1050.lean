import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A105017: Positions of records in A064097.

The programs for A105017, there is no canonical definition to state claims against.
-/

/-! ## A105017.P13458861714779493483

`A334111(∑[A175125(n)]-A175125(n))`
-/

namespace A105017.P13458861714779493483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334111 (∑ j ∈ Finset.range (n + 1), f1 j - A175125 n).toNat

end

end A105017.P13458861714779493483

/-! ## A105017.P13290353184405040617

`A094802(A297026(n+2))`
-/

namespace A105017.P13290353184405040617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A297026 (n + 2)).toNat

end

end A105017.P13290353184405040617

/-! ## A105017.P16816875048781033994

`record[A131208(A281589(n+1))]`
-/

namespace A105017.P16816875048781033994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131208 (A281589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105017.P16816875048781033994

/-! ## A105017.P12248938500543956416

`A005728(lt[A206225(n+1), 11])`
-/

namespace A105017.P12248938500543956416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A105017.P12248938500543956416

/-! ## A105017.P9125242116284785631

`A005728(lt[A356380(n+1), 12])`
-/

namespace A105017.P9125242116284785631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356380 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A105017.P9125242116284785631

/-!
# A105018: Indices of the irregular primes.

The programs for A105018, there is no canonical definition to state claims against.
-/

/-! ## A105018.P6872373076126871358

`A000720(A000928(n+1))`
-/

namespace A105018.P6872373076126871358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000928 (n + 1)).toNat

end

end A105018.P6872373076126871358

/-! ## A105018.P7858307833722460820

`A061395(or(1, A000928(n+1)))`
-/

namespace A105018.P7858307833722460820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A000928 (n + 1))).toNat

end

end A105018.P7858307833722460820

/-! ## A105018.P2579038895384016014

`A061395(A000928(n+1))%A068228(n+1)`
-/

namespace A105018.P2579038895384016014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A000928 (n + 1)).toNat) (A068228 (n + 1))

end

end A105018.P2579038895384016014

/-! ## A105018.P5373718099333084592

`A061395(A000928(n+1)%A262622(n+1))`
-/

namespace A105018.P5373718099333084592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A000928 (n + 1)) (A262622 (n + 1))).toNat

end

end A105018.P5373718099333084592

/-! ## A105018.P5438134566625065777

`A057427(3*n+4)*A061395(A000928(n+1))`
-/

namespace A105018.P5438134566625065777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 4) * A061395 (A000928 (n + 1)).toNat

end

end A105018.P5438134566625065777

/-! ## A105018.P5158901657149829224

`A061395(A000002(n+1)*A000928(n+1))`
-/

namespace A105018.P5158901657149829224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000002 (n + 1) * A000928 (n + 1)).toNat

end

end A105018.P5158901657149829224

/-! ## A105018.P16714108767533650686

`A061395(2*A000928(n+1))`
-/

namespace A105018.P16714108767533650686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A000928 (n + 1)).toNat

end

end A105018.P16714108767533650686

/-! ## A105018.P2983284473764808742

`A265145(A000928(n+1))%A182092(n+1)`
-/

namespace A105018.P2983284473764808742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265145 (A000928 (n + 1)).toNat) (A182092 (n + 1))

end

end A105018.P2983284473764808742

/-! ## A105018.P1138191745413590858

`A289508(A010051(2*(n+2))+A000928(n+1))`
-/

namespace A105018.P1138191745413590858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A010051 (2 * (n + 2)) + A000928 (n + 1)).toNat

end

end A105018.P1138191745413590858

/-! ## A105018.P149817909021660548

`A003963(p?[A000928(n+1)])`
-/

namespace A105018.P149817909021660548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105018.P149817909021660548

/-! ## A105018.P1992597738710494774

`A055396(p?[A000928(n+1)])`
-/

namespace A105018.P1992597738710494774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105018.P1992597738710494774

/-! ## A105018.P1796173386453299744

`A056239(p?[A000928(n+1)])`
-/

namespace A105018.P1796173386453299744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105018.P1796173386453299744

/-! ## A105018.P1151808269638705252

`A055396(or(1, A000928(n+1)))`
-/

namespace A105018.P1151808269638705252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A000928 (n + 1))).toNat

end

end A105018.P1151808269638705252

/-! ## A105018.P14129691294879946154

`∑{d}[A000928(n+1), A049084(#)]`
-/

namespace A105018.P14129691294879946154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A105018.P14129691294879946154

/-! ## A105018.P14902240302413659079

`A067004(A000928(2*n+1-n))`
-/

namespace A105018.P14902240302413659079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A000928 (2 * n + 1 - n)).toNat

end

end A105018.P14902240302413659079

/-! ## A105018.P1935406314673544704

`A049084(A000928(n+1))%A164016(n)²`
-/

namespace A105018.P1935406314673544704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A000928 (n + 1)).toNat) (A164016 n ^ 2)

end

end A105018.P1935406314673544704

/-! ## A105018.P10529154767254830495

`A241919(A000928(n+1))%A142059(n+1)`
-/

namespace A105018.P10529154767254830495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241919 (A000928 (n + 1)).toNat) (A142059 (n + 1))

end

end A105018.P10529154767254830495

/-! ## A105018.P8904229640359445519

`A049084(2*A000928(n+1)-A000928(n+1))`
-/

namespace A105018.P8904229640359445519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A000928 (n + 1) - A000928 (n + 1)).toNat

end

end A105018.P8904229640359445519

/-! ## A105018.P7212912052800116019

`A055396(2*A000928(n+1)-A000928(n+1))`
-/

namespace A105018.P7212912052800116019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A000928 (n + 1) - A000928 (n + 1)).toNat

end

end A105018.P7212912052800116019

/-! ## A105018.P14938940234654280925

`A056239(2*A000928(n+1)-A000928(n+1))`
-/

namespace A105018.P14938940234654280925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A000928 (n + 1) - A000928 (n + 1)).toNat

end

end A105018.P14938940234654280925

/-!
# A105020: Array read by upward antidiagonals: row n (n >= 0) contains the numbers m^2 - n^2, m >= n+1.

The programs for A105020, the canonical program `A105020.P13422593106926396251` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105020 has offset 0).

The definition of A105020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105020.P6546394894899737270

`∑[char[∑[n]]]²-A025581(n)²`
-/

namespace A105020.P6546394894899737270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A025581 n ^ 2

end

end A105020.P6546394894899737270

namespace A105020

/-- `∑[char[∑[n]]]²-A025581(n)²` -/
def P6546394894899737270.Spec : Prop :=
  ∀ n, P6546394894899737270.a n = A105020 n

end A105020

/-! ## A105020.P11779045787514854388

`∑[char[∑[n]]]²-A095831(n+1)`
-/

namespace A105020.P11779045787514854388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A095831 (n + 1)

end

end A105020.P11779045787514854388

namespace A105020

/-- `∑[char[∑[n]]]²-A095831(n+1)` -/
def P11779045787514854388.Spec : Prop :=
  ∀ n, P11779045787514854388.a n = A105020 n

end A105020

/-! ## A105020.P13422593106926396251

`A081493(n+1)+A059036(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A105020

/-- `A081493(n+1)+A059036(n)` -/
def P13422593106926396251.Spec : Prop :=
  ∀ n, P13422593106926396251.a n = A105020 n

theorem P13422593106926396251.correct : P13422593106926396251.Spec := by
  intro n
  simp only [A105020]

end A105020

/-! ## A105020.P4775024431410055337

`A162610(n+1)+A004247(n)`
-/

namespace A105020.P4775024431410055337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) + A004247 n

end

end A105020.P4775024431410055337

namespace A105020

/-- `A162610(n+1)+A004247(n)` -/
def P4775024431410055337.Spec : Prop :=
  ∀ n, P4775024431410055337.a n = A105020 n

end A105020

/-! ## A105020.P12467235129238588160

`A112367(n)+A070543(n+1)`
-/

namespace A105020.P12467235129238588160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A070543 (n + 1)

end

end A105020.P12467235129238588160

namespace A105020

/-- `A112367(n)+A070543(n+1)` -/
def P12467235129238588160.Spec : Prop :=
  ∀ n, P12467235129238588160.a n = A105020 n

end A105020

/-! ## A105020.P16165918691198208961

`A204250(n+1)+A079904(n)`
-/

namespace A105020.P16165918691198208961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A079904 n

end

end A105020.P16165918691198208961

namespace A105020

/-- `A204250(n+1)+A079904(n)` -/
def P16165918691198208961.Spec : Prop :=
  ∀ n, P16165918691198208961.a n = A105020 n

end A105020

/-! ## A105020.P13671235678528166157

`A064801(n+1)-A055630(n)`
-/

namespace A105020.P13671235678528166157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A055630 n

end

end A105020.P13671235678528166157

namespace A105020

/-- `A064801(n+1)-A055630(n)` -/
def P13671235678528166157.Spec : Prop :=
  ∀ n, P13671235678528166157.a n = A105020 n

end A105020

/-! ## A105020.P13456978167258653364

`A094053(n+1)+A075362(n+1)`
-/

namespace A105020.P13456978167258653364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + A075362 (n + 1)

end

end A105020.P13456978167258653364

namespace A105020

/-- `A094053(n+1)+A075362(n+1)` -/
def P13456978167258653364.Spec : Prop :=
  ∀ n, P13456978167258653364.a n = A105020 n

end A105020

/-! ## A105020.P13220885441218077144

`A141419(n+1)+A141418(n+1)`
-/

namespace A105020.P13220885441218077144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A141418 (n + 1)

end

end A105020.P13220885441218077144

namespace A105020

/-- `A141419(n+1)+A141418(n+1)` -/
def P13220885441218077144.Spec : Prop :=
  ∀ n, P13220885441218077144.a n = A105020 n

end A105020

/-! ## A105020.P5198727526766406114

`A002260(n+1)*A128076(n+1)`
-/

namespace A105020.P5198727526766406114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128076 (n + 1)

end

end A105020.P5198727526766406114

namespace A105020

/-- `A002260(n+1)*A128076(n+1)` -/
def P5198727526766406114.Spec : Prop :=
  ∀ n, P5198727526766406114.a n = A105020 n

end A105020

/-! ## A105020.P9178840035084617311

`(A002262(n)+1)*A128076(n+1)`
-/

namespace A105020.P9178840035084617311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A128076 (n + 1)

end

end A105020.P9178840035084617311

namespace A105020

/-- `(A002262(n)+1)*A128076(n+1)` -/
def P9178840035084617311.Spec : Prop :=
  ∀ n, P9178840035084617311.a n = A105020 n

end A105020

/-! ## A105020.P10880060936559365257

`(A294317(n)+1)*A002260(n+1)`
-/

namespace A105020.P10880060936559365257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294317 n + 1) * A002260 (n + 1)

end

end A105020.P10880060936559365257

namespace A105020

/-- `(A294317(n)+1)*A002260(n+1)` -/
def P10880060936559365257.Spec : Prop :=
  ∀ n, P10880060936559365257.a n = A105020 n

end A105020

/-! ## A105020.P6977949000542144401

`A093995(n+1)-log2(A130321(n))²`
-/

namespace A105020.P6977949000542144401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093995 (n + 1) : ℝ) - Real.logb 2 (A130321 n : ℝ) ^ 2

end

end A105020.P6977949000542144401

namespace A105020

/-- `A093995(n+1)-log2(A130321(n))²` -/
def P6977949000542144401.Spec : Prop :=
  ∀ n, P6977949000542144401.a n = (A105020 n : ℝ)

end A105020

/-! ## A105020.P14406010586380796136

`A038722(n+1)+n-A025581(n)²`
-/

namespace A105020.P14406010586380796136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + ((n : ℤ) - A025581 n ^ 2)

end

end A105020.P14406010586380796136

namespace A105020

/-- `A038722(n+1)+n-A025581(n)²` -/
def P14406010586380796136.Spec : Prop :=
  ∀ n, P14406010586380796136.a n = A105020 n

end A105020

/-! ## A105020.P4743027078133810721

`A002024(n+1)²-log2(A130321(n))²`
-/

namespace A105020.P4743027078133810721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) ^ 2 : ℝ) - Real.logb 2 (A130321 n : ℝ) ^ 2

end

end A105020.P4743027078133810721

namespace A105020

/-- `A002024(n+1)²-log2(A130321(n))²` -/
def P4743027078133810721.Spec : Prop :=
  ∀ n, P4743027078133810721.a n = (A105020 n : ℝ)

end A105020

/-! ## A105020.P3078681125367056060

`A002260(n+1)+2*A141418(n+1)`
-/

namespace A105020.P3078681125367056060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A141418 (n + 1)

end

end A105020.P3078681125367056060

namespace A105020

/-- `A002260(n+1)+2*A141418(n+1)` -/
def P3078681125367056060.Spec : Prop :=
  ∀ n, P3078681125367056060.a n = A105020 n

end A105020

/-! ## A105020.P7615975207685171516

`A133819(n+1)+2*A094053(n+1)`
-/

namespace A105020.P7615975207685171516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + 2 * A094053 (n + 1)

end

end A105020.P7615975207685171516

namespace A105020

/-- `A133819(n+1)+2*A094053(n+1)` -/
def P7615975207685171516.Spec : Prop :=
  ∀ n, P7615975207685171516.a n = A105020 n

end A105020

/-! ## A105020.P7196586246596726336

`2*A141419(n+1)-A002260(n+1)`
-/

namespace A105020.P7196586246596726336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141419 (n + 1) - A002260 (n + 1)

end

end A105020.P7196586246596726336

namespace A105020

/-- `2*A141419(n+1)-A002260(n+1)` -/
def P7196586246596726336.Spec : Prop :=
  ∀ n, P7196586246596726336.a n = A105020 n

end A105020

/-! ## A105020.P13790424826888005485

`2*A075362(n+1)-A133819(n+1)`
-/

namespace A105020.P13790424826888005485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075362 (n + 1) - A133819 (n + 1)

end

end A105020.P13790424826888005485

namespace A105020

/-- `2*A075362(n+1)-A133819(n+1)` -/
def P13790424826888005485.Spec : Prop :=
  ∀ n, P13790424826888005485.a n = A105020 n

end A105020

/-! ## A105020.P16111058857852237068

`A038722(n+1)-A095831(n+1)+n`
-/

namespace A105020.P16111058857852237068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - A095831 (n + 1) + (n : ℤ)

end

end A105020.P16111058857852237068

namespace A105020

/-- `A038722(n+1)-A095831(n+1)+n` -/
def P16111058857852237068.Spec : Prop :=
  ∀ n, P16111058857852237068.a n = A105020 n

end A105020

/-!
# A105022: Entries in the n-th row of Pascal's triangle that have the 2's bit set in their binary expansion.

The programs for A105022, there is no canonical definition to state claims against.
-/

/-! ## A105022.P12946326922690335286

`A382723(n)-A270438(n)`
-/

namespace A105022.P12946326922690335286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n - A270438 n

end

end A105022.P12946326922690335286

/-! ## A105022.P14932129322752818761

`1-(A270438(n)+A249732(n))+n`
-/

namespace A105022.P14932129322752818761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A270438 n + A249732 n) + (n : ℤ)

end

end A105022.P14932129322752818761

/-! ## A105022.P16286957468415914228

`A001316(n)+A163000(n)-A270438(n)`
-/

namespace A105022.P16286957468415914228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A163000 n - A270438 n)

end

end A105022.P16286957468415914228

/-! ## A105022.P457541570527745749

`A163000(n)-A270438(n)+A038573(n)+1`
-/

namespace A105022.P457541570527745749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n - A270438 n + (A038573 n + 1)

end

end A105022.P457541570527745749

/-! ## A105022.P8514383224230915300

`((A270438(n)+A249732(n))*A000096(n))%(n+1)`
-/

namespace A105022.P8514383224230915300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A270438 n + A249732 n) * A000096 n) (n + 1 : ℤ)

end

end A105022.P8514383224230915300

/-! ## A105022.P15102247651343433679

`A163000(n)+A163000(A270438(n)+A038573(n))`
-/

namespace A105022.P15102247651343433679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n + A163000 (A270438 n + A038573 n).toNat

end

end A105022.P15102247651343433679

/-! ## A105022.P14966105075372114847

`A000079(A000120(n))+A163000(n)-A270438(n)`
-/

namespace A105022.P14966105075372114847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat + (A163000 n - A270438 n)

end

end A105022.P14966105075372114847

/-!
# A105023: a(n) = A102370(n) - n. Or, 2*A103185(n).

The programs for A105023, there is no canonical definition to state claims against.
-/

/-! ## A105023.P8298243504840178637

`2*A103185(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105023.P8298243504840178637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n

end

end A105023.P8298243504840178637

/-! ## A105023.P16104250730772446683

`A102370(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105023.P16104250730772446683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n - (n : ℤ)

end

end A105023.P16104250730772446683

/-! ## A105023.P9255387852621767357

`A105228(n+1)-(n+1)`
-/

namespace A105023.P9255387852621767357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1) - (n + 1 : ℤ)

end

end A105023.P9255387852621767357

/-! ## A105023.P4667003486147613978

`∑[A104378(abs(1-n))]-(n+3)`
-/

namespace A105023.P4667003486147613978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A105023.P4667003486147613978

/-! ## A105023.P12762888461101205591

`A005843(A103185(n))`
-/

namespace A105023.P12762888461101205591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103185 n).toNat

end

end A105023.P12762888461101205591

/-! ## A105023.P2633667070799578709

`A047540(A103185(n)+1)`
-/

namespace A105023.P2633667070799578709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (A103185 n + 1).toNat

end

end A105023.P2633667070799578709

/-! ## A105023.P722211800891109271

`abs(A102370(n)+A001489(n))`
-/

namespace A105023.P722211800891109271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102370 n + A001489 n|

end

end A105023.P722211800891109271

/-! ## A105023.P8841411148676470807

`A023443(A105228(n+1)-n)`
-/

namespace A105023.P8841411148676470807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105228 (n + 1) - (n : ℤ)).toNat

end

end A105023.P8841411148676470807

/-! ## A105023.P13455850969196972006

`∑[A104378(n)]-A104378(n)-n`
-/

namespace A105023.P13455850969196972006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104378 n - (n : ℤ)

end

end A105023.P13455850969196972006

/-! ## A105023.P3176331786092700774

`A105027(comp[∑[2^n]])-n`
-/

namespace A105023.P3176331786092700774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (n : ℤ)

end

end A105023.P3176331786092700774

/-! ## A105023.P3980617178349329344

`abs(A105027(comp[2^(n+1)-1])-n)`
-/

namespace A105023.P3980617178349329344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n : ℤ)|

end

end A105023.P3980617178349329344

/-!
# A105024: a(n) = A102371(n) + n. Or, 2*A103745.

The programs for A105024, there is no canonical definition to state claims against.
-/

/-! ## A105024.P16408334090128276852

`2*and(a(n-1)+1, -n)` with `a(0)=0`
-/

namespace A105024.P16408334090128276852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * Int.land (a (n - 1) + 1) (-(n : ℤ))

end

end A105024.P16408334090128276852

/-! ## A105024.P12436908467977160938

`and(1-2*n, 2*(a(n-1)+1))` with `a(0)=0`
-/

namespace A105024.P12436908467977160938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (1 - (2 * n : ℤ)) (2 * (a (n - 1) + 1))

end

end A105024.P12436908467977160938

/-! ## A105024.P9974017189478044319

`xor(or(2, a(n-1))-n, a(n-1))+n` with `a(0)=0`
-/

namespace A105024.P9974017189478044319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (Int.lor 2 (a (n - 1)) - (n : ℤ)) (a (n - 1)) + (n : ℤ)

end

end A105024.P9974017189478044319

/-! ## A105024.P2054765158816012156

`xor(a(n-1)+1-n, a(n-1)+1)+n` with `a(0)=0`
-/

namespace A105024.P2054765158816012156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1) + (1 - (n : ℤ))) (a (n - 1) + 1) + (n : ℤ)

end

end A105024.P2054765158816012156

/-! ## A105024.P11866400172255936049

`n-(xor(1, 2-xor(a(n-1)-n, a(n-1)))-3)` with `a(0)=0`
-/

namespace A105024.P11866400172255936049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (Int.xor 1 (2 - Int.xor (a (n - 1) - (n : ℤ)) (a (n - 1))) - 3)

end

end A105024.P11866400172255936049

/-!
# A105025: Write numbers in binary under each other; to get the next block of 2^k (k >= 0) terms of the sequence, start at 2^k, read diagonals in downward direction and convert to decimal.

The programs for A105025, the canonical program `A105025.P3996598977755789891` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105025 has offset 0).

The definition of A105025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105025.P3996598977755789891

`A103530(A070939(n)+1+n)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105025

/-- `A103530(A070939(n)+1+n)-1` -/
def P3996598977755789891.Spec : Prop :=
  ∀ n, P3996598977755789891.a n = A105025 n

theorem P3996598977755789891.correct : P3996598977755789891.Spec := by
  intro n
  simp only [A105025]

end A105025

/-! ## A105025.P4561364416374156317

`A105033(comp[∑[A000051(n)]])`
-/

namespace A105025.P4561364416374156317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105025.P4561364416374156317

namespace A105025

/-- `A105033(comp[∑[A000051(n)]])` -/
def P4561364416374156317.Spec : Prop :=
  ∀ n, P4561364416374156317.a n = A105025 n

end A105025

/-! ## A105025.P16557047067689191312

`A105033(A070939(n)-1+n)`
-/

namespace A105025.P16557047067689191312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (A070939 n - 1 + (n : ℤ)).toNat

end

end A105025.P16557047067689191312

namespace A105025

/-- `A105033(A070939(n)-1+n)` -/
def P16557047067689191312.Spec : Prop :=
  ∀ n, P16557047067689191312.a n = A105025 n

end A105025

/-! ## A105025.P3352361701933583527

`A105033(n-(1-A070939(n)))`
-/

namespace A105025.P3352361701933583527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 ((n : ℤ) - (1 - A070939 n)).toNat

end

end A105025.P3352361701933583527

namespace A105025

/-- `A105033(n-(1-A070939(n)))` -/
def P3352361701933583527.Spec : Prop :=
  ∀ n, P3352361701933583527.a n = A105025 n

end A105025

/-! ## A105025.P12438604960656812720

`A105033(comp[∑[A000079(n)+1]])`
-/

namespace A105025.P12438604960656812720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105025.P12438604960656812720

namespace A105025

/-- `A105033(comp[∑[A000079(n)+1]])` -/
def P12438604960656812720.Spec : Prop :=
  ∀ n, P12438604960656812720.a n = A105025 n

end A105025

/-! ## A105025.P13966389715943836763

`A105033(comp[A000079(n+1)+n])`
-/

namespace A105025.P13966389715943836763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105025.P13966389715943836763

namespace A105025

/-- `A105033(comp[A000079(n+1)+n])` -/
def P13966389715943836763.Spec : Prop :=
  ∀ n, P13966389715943836763.a n = A105025 n

end A105025

/-! ## A105025.P12356543186484586436

`A105033(lt[n, (A105033(n)+1)²])`
-/

namespace A105025.P12356543186484586436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105033 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A105025.P12356543186484586436

namespace A105025

/-- `A105033(lt[n, (A105033(n)+1)²])` -/
def P12356543186484586436.Spec : Prop :=
  ∀ n, P12356543186484586436.a n = A105025 n

end A105025

/-! ## A105025.P4105904482954691437

`A105033(A023443(A070939(n)+n))`
-/

namespace A105025.P4105904482954691437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (A023443 (A070939 n + (n : ℤ)).toNat).toNat

end

end A105025.P4105904482954691437

namespace A105025

/-- `A105033(A023443(A070939(n)+n))` -/
def P4105904482954691437.Spec : Prop :=
  ∀ n, P4105904482954691437.a n = A105025 n

end A105025

/-! ## A105025.P8940834729610535169

`A105033(n-A024000(A070939(n)))`
-/

namespace A105025.P8940834729610535169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 ((n : ℤ) - A024000 (A070939 n).toNat).toNat

end

end A105025.P8940834729610535169

namespace A105025

/-- `A105033(n-A024000(A070939(n)))` -/
def P8940834729610535169.Spec : Prop :=
  ∀ n, P8940834729610535169.a n = A105025 n

end A105025

/-! ## A105025.P3033201908559130454

`A105033(A070939(n)+abs(A024000(n)))`
-/

namespace A105025.P3033201908559130454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 (A070939 n + |A024000 n|).toNat

end

end A105025.P3033201908559130454

namespace A105025

/-- `A105033(A070939(n)+abs(A024000(n)))` -/
def P3033201908559130454.Spec : Prop :=
  ∀ n, P3033201908559130454.a n = A105025 n

end A105025

/-!
# A105026: Binary equivalents of A105025.

The programs for A105026, the canonical program `A105026.P13435274364244972713` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105026 has offset 0).

The definition of A105026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A105025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105026.P13435274364244972713

`A007088(A105025(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105026

/-- `A007088(A105025(n))` -/
def P13435274364244972713.Spec : Prop :=
  ∀ n, P13435274364244972713.a n = A105026 n

theorem P13435274364244972713.correct : P13435274364244972713.Spec := by
  intro n
  simp only [A105026]

end A105026

/-! ## A105026.P9418851006637924420

`A185544(2*A105025(n))`
-/

namespace A105026.P9418851006637924420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A105025 n).toNat

end

end A105026.P9418851006637924420

namespace A105026

/-- `A185544(2*A105025(n))` -/
def P9418851006637924420.Spec : Prop :=
  ∀ n, P9418851006637924420.a n = A105026 n

end A105026

/-! ## A105026.P1858525013997334733

`A007089(A005836(A105025(n)+1))`
-/

namespace A105026.P1858525013997334733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A105025 n + 1).toNat).toNat

end

end A105026.P1858525013997334733

namespace A105026

/-- `A007089(A005836(A105025(n)+1))` -/
def P1858525013997334733.Spec : Prop :=
  ∀ n, P1858525013997334733.a n = A105026 n

end A105026

/-! ## A105026.P15296772642872157230

`A185544(A105025(n)+A105025(n))`
-/

namespace A105026.P15296772642872157230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A105025 n + A105025 n).toNat

end

end A105026.P15296772642872157230

namespace A105026

/-- `A185544(A105025(n)+A105025(n))` -/
def P15296772642872157230.Spec : Prop :=
  ∀ n, P15296772642872157230.a n = A105026 n

end A105026

/-! ## A105026.P7975526315892996667

`A105034(floor(log2(A002064(n))))`
-/

namespace A105026.P7975526315892996667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105034 (Nat.log 2 (A002064 n).toNat)

end

end A105026.P7975526315892996667

namespace A105026

/-- `A105034(floor(log2(A002064(n))))` -/
def P7975526315892996667.Spec : Prop :=
  ∀ n, P7975526315892996667.a n = A105026 n

end A105026

/-!
# A105027: Write numbers in binary under each other; to get the next block of 2^k (k >= 0) terms of the sequence, start at 2^k, read diagonals in upward direction and convert to decimal.

The programs for A105027, there is no canonical definition to state claims against.
-/

/-! ## A105027.P3716598567785450678

`A102370(A182220(n+1))%A062383(n)`
-/

namespace A105027.P3716598567785450678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102370 (A182220 (n + 1)).toNat) (A062383 n)

end

end A105027.P3716598567785450678

/-! ## A105027.P9385085043457859584

`A028897(ceil(A105028(n)/5))`
-/

namespace A105027.P9385085043457859584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 ⌈(A105028 n : ℚ) / 5⌉.toNat

end

end A105027.P9385085043457859584

/-! ## A105027.P14690304282735064200

`A214417(A214417(A214417(n)%A078862(n+1)))`
-/

namespace A105027.P14690304282735064200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214417 (A214417 (Int.tmod (A214417 n) (A078862 (n + 1))).toNat).toNat

end

end A105027.P14690304282735064200

/-! ## A105027.P9192717783230358276

`A028897(A105028(n))`
-/

namespace A105027.P9192717783230358276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A105028 n).toNat

end

end A105027.P9192717783230358276

/-! ## A105027.P18098314575798123611

`A344511(2*A105028(n))`
-/

namespace A105027.P18098314575798123611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (2 * A105028 n).toNat

end

end A105027.P18098314575798123611

/-!
# A105028: Binary equivalents of A105027.

The programs for A105028, there is no canonical definition to state claims against.
-/

/-! ## A105028.P3091305673372878862

`A007088(A105027(n))`
-/

namespace A105028.P3091305673372878862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105027 n).toNat

end

end A105028.P3091305673372878862

/-! ## A105028.P15670497345828599603

`A185544(2*A105027(n))`
-/

namespace A105028.P15670497345828599603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A105027 n).toNat

end

end A105028.P15670497345828599603

/-! ## A105028.P295139323467136219

`A185544(A105027(n)+A105027(n))`
-/

namespace A105028.P295139323467136219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A105027 n + A105027 n).toNat

end

end A105028.P295139323467136219

/-! ## A105028.P17690075937350542353

`A105026(A214416(A105027(n)%A000079(n)))`
-/

namespace A105028.P17690075937350542353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (A214416 (Int.tmod (A105027 n) (A000079 n)).toNat).toNat

end

end A105028.P17690075937350542353

/-! ## A105028.P13527726267719129875

`A105026(A214416(A214417(A214417(A214417(n)))))`
-/

namespace A105028.P13527726267719129875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (A214416 (A214417 (A214417 (A214417 n).toNat).toNat).toNat).toNat

end

end A105028.P13527726267719129875

/-!
# A105030: Binary equivalents of A105029.

The programs for A105030, there is no canonical definition to state claims against.
-/

/-! ## A105030.P6593084711113272041

`A007088(A105029(n))`
-/

namespace A105030.P6593084711113272041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105029 n).toNat

end

end A105030.P6593084711113272041

/-! ## A105030.P15465252723667637890

`A185544(2*A105029(n))`
-/

namespace A105030.P15465252723667637890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A105029 n).toNat

end

end A105030.P15465252723667637890

/-! ## A105030.P11371755035399442889

`A105026(or(n, A214416(A105029(n))))`
-/

namespace A105030.P11371755035399442889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (Int.lor (n : ℤ) (A214416 (A105029 n).toNat)).toNat

end

end A105030.P11371755035399442889

/-!
# A105031: Binary equivalents of A103185.

The programs for A105031, there is no canonical definition to state claims against.
-/

/-! ## A105031.P15703407363976437894

`A007088(A103185(n))`
-/

namespace A105031.P15703407363976437894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A103185 n).toNat

end

end A105031.P15703407363976437894

/-! ## A105031.P9866211679734282451

`A185544(A105023(n))`
-/

namespace A105031.P9866211679734282451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A105023 n).toNat

end

end A105031.P9866211679734282451

/-! ## A105031.P16283693520091710799

`A185544(2*A103185(n))`
-/

namespace A105031.P16283693520091710799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A103185 n).toNat

end

end A105031.P16283693520091710799

/-! ## A105031.P15621052782548757074

`A007088(A105023(n)/2)`
-/

namespace A105031.P15621052782548757074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A105023 n : ℚ) / 2)).toNat

end

end A105031.P15621052782548757074

/-! ## A105031.P11786491760445001131

`A185544(A102370(n)-n)`
-/

namespace A105031.P11786491760445001131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A102370 n - (n : ℤ)).toNat

end

end A105031.P11786491760445001131

/-! ## A105031.P17597167394038304113

`A007088((A102370(n)-n)/2)`
-/

namespace A105031.P17597167394038304113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A102370 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A105031.P17597167394038304113

/-! ## A105031.P7017731989906643210

`A007088((A105228(n+1)-(n+1))/2)`
-/

namespace A105031.P7017731989906643210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A105228 (n + 1) - (n + 1 : ℤ) : ℚ) / 2)).toNat

end

end A105031.P7017731989906643210

/-! ## A105031.P9888288808868458818

`A185544(A005408(A103185(n))-1)`
-/

namespace A105031.P9888288808868458818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A005408 (A103185 n).toNat - 1).toNat

end

end A105031.P9888288808868458818

/-! ## A105031.P1393175698404727955

`A185544(xor(1, A005408(A103185(n))))`
-/

namespace A105031.P1393175698404727955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.xor 1 (A005408 (A103185 n).toNat)).toNat

end

end A105031.P1393175698404727955

/-! ## A105031.P5921859991070931638

`A007088(A004526(A102370(n)-n))`
-/

namespace A105031.P5921859991070931638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004526 (A102370 n - (n : ℤ)).toNat).toNat

end

end A105031.P5921859991070931638

/-!
# A105032: Binary equivalents of A103745.

The programs for A105032, the canonical program `A105032.P9866371612079488807` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105032 has offset 1).

The definition of A105032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A103745, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105032.P9866371612079488807

`A007088(A103745(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105032

/-- `A007088(A103745(n+1))` -/
def P9866371612079488807.Spec : Prop :=
  ∀ n, P9866371612079488807.a n = A105032 (n + 1)

theorem P9866371612079488807.correct : P9866371612079488807.Spec := by
  intro n
  simp only [A105032, Nat.add_sub_cancel]

end A105032

/-! ## A105032.P12034997084793359375

`A011557(n)+A007088(A103528(n+1))`
-/

namespace A105032.P12034997084793359375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A007088 (A103528 (n + 1)).toNat

end

end A105032.P12034997084793359375

namespace A105032

/-- `A011557(n)+A007088(A103528(n+1))` -/
def P12034997084793359375.Spec : Prop :=
  ∀ n, P12034997084793359375.a n = A105032 (n + 1)

end A105032

/-! ## A105032.P2204385856499989017

`A007088(record[and(2*a(n-1)+1, -(n+1))])` with `a(0)=1, a(1)=1`
-/

namespace A105032.P2204385856499989017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.land (2 * f1 (n - 1) + 1) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105032.P2204385856499989017

namespace A105032

/-- `A007088(record[and(2*a(n-1)+1, -(n+1))])` -/
def P2204385856499989017.Spec : Prop :=
  ∀ n, P2204385856499989017.a n = A105032 (n + 1)

end A105032

/-! ## A105032.P709017360271823851

`A007088(A105024(n+1)/2)`
-/

namespace A105032.P709017360271823851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A105024 (n + 1) : ℚ) / 2)).toNat

end

end A105032.P709017360271823851

namespace A105032

/-- `A007088(A105024(n+1)/2)` -/
def P709017360271823851.Spec : Prop :=
  ∀ n, P709017360271823851.a n = A105032 (n + 1)

end A105032

/-! ## A105032.P17564050343565781939

`A007088(A103528(n+1)+2^n)`
-/

namespace A105032.P17564050343565781939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A103528 (n + 1) + (2 ^ n : ℤ)).toNat

end

end A105032.P17564050343565781939

namespace A105032

/-- `A007088(A103528(n+1)+2^n)` -/
def P17564050343565781939.Spec : Prop :=
  ∀ n, P17564050343565781939.a n = A105032 (n + 1)

end A105032

/-!
# A105033: Read binary numbers downwards to the right.

The programs for A105033, there is no canonical definition to state claims against.
-/

/-! ## A105033.P18437788655632266318

`xor(n-a(n-1), a(n-1))` with `a(0)=0`
-/

namespace A105033.P18437788655632266318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor ((n : ℤ) - a (n - 1)) (a (n - 1))

end

end A105033.P18437788655632266318

/-! ## A105033.P16452326720971511412

`n-2*and(n-a(n-1), a(n-1))` with `a(0)=0`
-/

namespace A105033.P16452326720971511412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 2 * Int.land ((n : ℤ) - a (n - 1)) (a (n - 1))

end

end A105033.P16452326720971511412

/-! ## A105033.P15594017009372979095

`2*or(n-a(n-1), a(n-1))-n` with `a(0)=0`
-/

namespace A105033.P15594017009372979095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * Int.lor ((n : ℤ) - a (n - 1)) (a (n - 1)) - (n : ℤ)

end

end A105033.P15594017009372979095

/-! ## A105033.P16469862851236593700

`A103530(n+2)-1`
-/

namespace A105033.P16469862851236593700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (n + 2) - 1

end

end A105033.P16469862851236593700

/-! ## A105033.P6782754321772306385

`n-2*A103528(n+1)`
-/

namespace A105033.P6782754321772306385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A103528 (n + 1)

end

end A105033.P6782754321772306385

/-! ## A105033.P4002914312773048895

`A023443(A103530(n+2))`
-/

namespace A105033.P4002914312773048895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A103530 (n + 2)).toNat

end

end A105033.P4002914312773048895

/-! ## A105033.P14488086243378929489

`n-A005843(A103528(n+1))`
-/

namespace A105033.P14488086243378929489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A103528 (n + 1)).toNat

end

end A105033.P14488086243378929489

/-! ## A105033.P11738992990913182713

`A126646(n)-A102371(n+1)`
-/

namespace A105033.P11738992990913182713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A102371 (n + 1)

end

end A105033.P11738992990913182713

/-! ## A105033.P2665398136886069384

`A000225(n+1)-A102371(n+1)`
-/

namespace A105033.P2665398136886069384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A102371 (n + 1)

end

end A105033.P2665398136886069384

/-! ## A105033.P10402779673236566066

`A087100(2*n+1)-A102371(n+1)`
-/

namespace A105033.P10402779673236566066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (2 * n + 1) - A102371 (n + 1)

end

end A105033.P10402779673236566066

/-!
# A105034: Binary equivalents of A105033.

The programs for A105034, there is no canonical definition to state claims against.
-/

/-! ## A105034.P19689593492704270

`A007088(A105033(n))`
-/

namespace A105034.P19689593492704270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105033 n).toNat

end

end A105034.P19689593492704270

/-! ## A105034.P165921387930596436

`A185544(2*A105033(n))`
-/

namespace A105034.P165921387930596436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A105033 n).toNat

end

end A105034.P165921387930596436

/-! ## A105034.P12994917081584664317

`A007088(A103530(n+2)-1)`
-/

namespace A105034.P12994917081584664317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A103530 (n + 2) - 1).toNat

end

end A105034.P12994917081584664317

/-! ## A105034.P14743004856207965520

`A185544(2*(A103530(n+2)-1))`
-/

namespace A105034.P14743004856207965520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A103530 (n + 2) - 1)).toNat

end

end A105034.P14743004856207965520

/-! ## A105034.P12556682752398042648

`A007088(n-2*A103528(n+1))`
-/

namespace A105034.P12556682752398042648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) - 2 * A103528 (n + 1)).toNat

end

end A105034.P12556682752398042648

/-!
# A105036: a(n) = 26*a(n-2) - a(n-4) + 12, with a(0) = 0, a(1) = 4, a(2) = 8, a(3) = 116.

The programs for A105036, the canonical program `A105036.P7068265146270782326` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105036 has offset 0).

The definition of A105036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*a(n-2)-a(n-4)+12` (program `A105036.P7068265146270782326`, by `A105036.P7068265146270782326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105036.P7068265146270782326

`26*a(n-2)-a(n-4)+12` with `a(0)=0, a(1)=4, a(2)=8, a(3)=116`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105036

/-- `26*a(n-2)-a(n-4)+12` -/
def P7068265146270782326.Spec : Prop :=
  ∀ n, P7068265146270782326.a n = A105036 n

theorem P7068265146270782326.correct : P7068265146270782326.Spec := by
  intro n
  simp only [A105036]

end A105036

/-!
# A105037: a(n) = 22*a(n-2) - a(n-4) + 10, for n > 3, with a(0) = 0, a(1) = 4, a(2) = 6, a(3) = 98.

The programs for A105037, the canonical program `A105037.P8181965783884941926` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105037 has offset 0).

The definition of A105037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*a(n-2)-a(n-4)+10` (program `A105037.P8181965783884941926`, by `A105037.P8181965783884941926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105037.P8181965783884941926

`22*a(n-2)-a(n-4)+10` with `a(0)=0, a(1)=4, a(2)=6, a(3)=98`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105037

/-- `22*a(n-2)-a(n-4)+10` -/
def P8181965783884941926.Spec : Prop :=
  ∀ n, P8181965783884941926.a n = A105037 n

theorem P8181965783884941926.correct : P8181965783884941926.Spec := by
  intro n
  simp only [A105037]

end A105037

/-!
# A105038: Nonnegative n such that 6*n^2 + 6*n + 1 is a square.

The programs for A105038, the canonical program `A105038.P11189707905644348297` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105038 has offset 0).

The definition of A105038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105038.P11189707905644348297

`11*a(n-1)-11*a(n-2)+a(n-3)` with `a(0)=0, a(1)=4, a(2)=44`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105038

/-- `11*a(n-1)-11*a(n-2)+a(n-3)` -/
def P11189707905644348297.Spec : Prop :=
  ∀ n, P11189707905644348297.a n = A105038 n

theorem P11189707905644348297.correct : P11189707905644348297.Spec := by
  intro n
  simp only [A105038]

end A105038

/-! ## A105038.P14514773546076184794

`(A072256(n+1)-1)/2`
-/

namespace A105038.P14514773546076184794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072256 (n + 1) - 1 : ℚ) / 2

end

end A105038.P14514773546076184794

namespace A105038

/-- `(A072256(n+1)-1)/2` -/
def P14514773546076184794.Spec : Prop :=
  ∀ n, P14514773546076184794.a n = (A105038 n : ℚ)

end A105038

/-! ## A105038.P18178098307023484758

`∑[10*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A105038.P18178098307023484758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105038.P18178098307023484758

namespace A105038

/-- `∑[10*a(n-1)-a(n-2)]` -/
def P18178098307023484758.Spec : Prop :=
  ∀ n, P18178098307023484758.a n = A105038 n

end A105038

/-! ## A105038.P9472523629324629216

`10*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=4`
-/

namespace A105038.P9472523629324629216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  10 * a (n - 1) - a (n - 2) + 4

end

end A105038.P9472523629324629216

namespace A105038

/-- `10*a(n-1)-a(n-2)+4` -/
def P9472523629324629216.Spec : Prop :=
  ∀ n, P9472523629324629216.a n = A105038 n

end A105038

/-! ## A105038.P8429069361677775467

`∑[A122652(n)]`
-/

namespace A105038.P8429069361677775467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105038.P8429069361677775467

namespace A105038

/-- `∑[A122652(n)]` -/
def P8429069361677775467.Spec : Prop :=
  ∀ n, P8429069361677775467.a n = A105038 n

end A105038

/-! ## A105038.P13413775853876697053

`floor(A138288(n)/2)`
-/

namespace A105038.P13413775853876697053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138288 n : ℚ) / 2⌋

end

end A105038.P13413775853876697053

namespace A105038

/-- `floor(A138288(n)/2)` -/
def P13413775853876697053.Spec : Prop :=
  ∀ n, P13413775853876697053.a n = A105038 n

end A105038

/-! ## A105038.P15793383643350607511

`floor(A157085(n)/3)`
-/

namespace A105038.P15793383643350607511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157085 n : ℚ) / 3⌋

end

end A105038.P15793383643350607511

namespace A105038

/-- `floor(A157085(n)/3)` -/
def P15793383643350607511.Spec : Prop :=
  ∀ n, P15793383643350607511.a n = A105038 n

end A105038

/-! ## A105038.P9798581031625437403

`∑[2*A001078(n)]`
-/

namespace A105038.P9798581031625437403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105038.P9798581031625437403

namespace A105038

/-- `∑[2*A001078(n)]` -/
def P9798581031625437403.Spec : Prop :=
  ∀ n, P9798581031625437403.a n = A105038 n

end A105038

/-! ## A105038.P6815618143130049491

`∑[4*A004189(n)]`
-/

namespace A105038.P6815618143130049491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105038.P6815618143130049491

namespace A105038

/-- `∑[4*A004189(n)]` -/
def P6815618143130049491.Spec : Prop :=
  ∀ n, P6815618143130049491.a n = A105038 n

end A105038

/-! ## A105038.P15137249240176095712

`A054318(n+1)-1`
-/

namespace A105038.P15137249240176095712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054318 (n + 1) - 1

end

end A105038.P15137249240176095712

namespace A105038

/-- `A054318(n+1)-1` -/
def P15137249240176095712.Spec : Prop :=
  ∀ n, P15137249240176095712.a n = A105038 n

end A105038

/-! ## A105038.P8727574204905941291

`floor(A072256(n+1)/2)`
-/

namespace A105038.P8727574204905941291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072256 (n + 1) : ℚ) / 2⌋

end

end A105038.P8727574204905941291

namespace A105038

/-- `floor(A072256(n+1)/2)` -/
def P8727574204905941291.Spec : Prop :=
  ∀ n, P8727574204905941291.a n = A105038 n

end A105038

/-! ## A105038.P4608433642701804691

`floor(A041007(2*n)/2)`
-/

namespace A105038.P4608433642701804691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041007 (2 * n) : ℚ) / 2⌋

end

end A105038.P4608433642701804691

namespace A105038

/-- `floor(A041007(2*n)/2)` -/
def P4608433642701804691.Spec : Prop :=
  ∀ n, P4608433642701804691.a n = A105038 n

end A105038

/-! ## A105038.P13194475662981623330

`floor(A041039(2*n)/2)`
-/

namespace A105038.P13194475662981623330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041039 (2 * n) : ℚ) / 2⌋

end

end A105038.P13194475662981623330

namespace A105038

/-- `floor(A041039(2*n)/2)` -/
def P13194475662981623330.Spec : Prop :=
  ∀ n, P13194475662981623330.a n = A105038 n

end A105038

/-! ## A105038.P11791321329345240933

`floor(A142239(2*n)/2)`
-/

namespace A105038.P11791321329345240933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142239 (2 * n) : ℚ) / 2⌋

end

end A105038.P11791321329345240933

namespace A105038

/-- `floor(A142239(2*n)/2)` -/
def P11791321329345240933.Spec : Prop :=
  ∀ n, P11791321329345240933.a n = A105038 n

end A105038

/-! ## A105038.P5930064889463783510

`∑[A204519(3*(n+1))]`
-/

namespace A105038.P5930064889463783510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105038.P5930064889463783510

namespace A105038

/-- `∑[A204519(3*(n+1))]` -/
def P5930064889463783510.Spec : Prop :=
  ∀ n, P5930064889463783510.a n = A105038 n

end A105038

/-! ## A105038.P6067845147859832504

`(A031138(n+1)-1)/3`
-/

namespace A105038.P6067845147859832504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031138 (n + 1) - 1 : ℚ) / 3

end

end A105038.P6067845147859832504

namespace A105038

/-- `(A031138(n+1)-1)/3` -/
def P6067845147859832504.Spec : Prop :=
  ∀ n, P6067845147859832504.a n = (A105038 n : ℚ)

end A105038

/-! ## A105038.P14902744325877266545

`floor(A080872(2*n+1)/2)`
-/

namespace A105038.P14902744325877266545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080872 (2 * n + 1) : ℚ) / 2⌋

end

end A105038.P14902744325877266545

namespace A105038

/-- `floor(A080872(2*n+1)/2)` -/
def P14902744325877266545.Spec : Prop :=
  ∀ n, P14902744325877266545.a n = A105038 n

end A105038

/-! ## A105038.P6772427498537036107

`2*A132596(n)-a(n-1)` with `a(0)=0`
-/

namespace A105038.P6772427498537036107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A132596 n - a (n - 1)

end

end A105038.P6772427498537036107

namespace A105038

/-- `2*A132596(n)-a(n-1)` -/
def P6772427498537036107.Spec : Prop :=
  ∀ n, P6772427498537036107.a n = A105038 n

end A105038

/-!
# A105039: Number of compositions of n with unique smallest part.

The programs for A105039, there is no canonical definition to state claims against.
-/

/-! ## A105039.P2256668324586794328

`2^n-A363224(n+1)`
-/

namespace A105039.P2256668324586794328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A363224 (n + 1)

end

end A105039.P2256668324586794328

/-! ## A105039.P15405117346024290115

`A001792(n)-∑[A323111(n+1)]`
-/

namespace A105039.P15405117346024290115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105039.P15405117346024290115

/-! ## A105039.P14865186379377268354

`∑[A045623(n)-A323111(n+1)]`
-/

namespace A105039.P14865186379377268354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A323111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105039.P14865186379377268354

/-! ## A105039.P10821305061552657878

`A097941(n+1)-A323111(n+1)`
-/

namespace A105039.P10821305061552657878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097941 (n + 1) - A323111 (n + 1)

end

end A105039.P10821305061552657878

/-! ## A105039.P18267919116334455304

`A238342(∑[n+1]+1)`
-/

namespace A105039.P18267919116334455304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A105039.P18267919116334455304

/-! ## A105039.P5434785027100938910

`A097941(n+1)-A214258(A064226(n))`
-/

namespace A105039.P5434785027100938910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097941 (n + 1) - A214258 (A064226 n).toNat

end

end A105039.P5434785027100938910

/-!
# A105040: Nonnegative k such that 7*k^2 + 7*k + 1 is a square.

The programs for A105040, there is no canonical definition to state claims against.
-/

/-! ## A105040.P9783883494035466134

`A253460(n+1)-1`
-/

namespace A105040.P9783883494035466134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253460 (n + 1) - 1

end

end A105040.P9783883494035466134

/-! ## A105040.P1550961602630445705

`A105051(n+2)`
-/

namespace A105040.P1550961602630445705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105051 (n + 2)

end

end A105040.P1550961602630445705

/-! ## A105040.P18050229712826760498

`A305974(A000040(n+1))+A253460(n+1)`
-/

namespace A105040.P18050229712826760498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A000040 (n + 1)).toNat + A253460 (n + 1)

end

end A105040.P18050229712826760498

/-! ## A105040.P576923399613601818

`floor(A294973(2*n)/2)`
-/

namespace A105040.P576923399613601818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294973 (2 * n) : ℚ) / 2⌋

end

end A105040.P576923399613601818

/-! ## A105040.P3083353962860366605

`abs(A253460(n+1)+A008683(A027862(n+1)))`
-/

namespace A105040.P3083353962860366605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253460 (n + 1) + A008683 (A027862 (n + 1)).toNat|

end

end A105040.P3083353962860366605

/-!
# A105041: Positive integers k such that k^7 + 1 is semiprime.

The programs for A105041, there is no canonical definition to state claims against.
-/

/-! ## A105041.P18083707360051194385

`p?[A250174(n+1)+1]-1`
-/

namespace A105041.P18083707360051194385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A105041.P18083707360051194385

/-! ## A105041.P3474993410912743376

`∩[A006093(n+1), A250174(n+1)]`
-/

namespace A105041.P3474993410912743376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105041.P3474993410912743376

/-! ## A105041.P7417337935500555157

`A000010(p?[A250174(n+1)+1])`
-/

namespace A105041.P7417337935500555157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105041.P7417337935500555157

/-! ## A105041.P4267139374315799797

`A003958(p?[A250174(n+1)+1])`
-/

namespace A105041.P4267139374315799797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105041.P4267139374315799797

/-! ## A105041.P5973915777925019255

`A173557(p?[A250174(n+1)+1])`
-/

namespace A105041.P5973915777925019255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105041.P5973915777925019255

/-! ## A105041.P4853650219755206069

`A300718(p?[A250174(n+1)+1])`
-/

namespace A105041.P4853650219755206069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300718 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105041.P4853650219755206069

/-! ## A105041.P3741837286582043001

`A300721(p?[A250174(n+1)+1])`
-/

namespace A105041.P3741837286582043001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105041.P3741837286582043001

/-! ## A105041.P4612275662933481960

`A240828(p?[A250174(n+1)+1])`
-/

namespace A105041.P4612275662933481960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105041.P4612275662933481960

/-! ## A105041.P16557900377257140040

`record[A014963(A250174(n+1)+1)-1]`
-/

namespace A105041.P16557900377257140040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A250174 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105041.P16557900377257140040

/-!
# A105042: Numbers n such that 10n - 1 is prime.

The programs for A105042, the canonical program `A105042.P10666840312701966561` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105042 has offset 1).

The definition of A105042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105042.P10666840312701966561

`floor(p?[abs(1-5*n)]/10)+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105042

/-- `floor(p?[abs(1-5*n)]/10)+1` -/
def P10666840312701966561.Spec : Prop :=
  ∀ n, P10666840312701966561.a n = A105042 (n + 1)

theorem P10666840312701966561.correct : P10666840312701966561.Spec := by
  intro n
  simp only [A105042, Nat.add_sub_cancel]

end A105042

/-! ## A105042.P11742216892398015067

`A102700(n+1)+1`
-/

namespace A105042.P11742216892398015067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) + 1

end

end A105042.P11742216892398015067

namespace A105042

/-- `A102700(n+1)+1` -/
def P11742216892398015067.Spec : Prop :=
  ∀ n, P11742216892398015067.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P11014761291461508205

`A153355(n+1)/2`
-/

namespace A105042.P11014761291461508205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153355 (n + 1) : ℚ) / 2

end

end A105042.P11014761291461508205

namespace A105042

/-- `A153355(n+1)/2` -/
def P11014761291461508205.Spec : Prop :=
  ∀ n, P11014761291461508205.a n = (A105042 (n + 1) : ℚ)

end A105042

/-! ## A105042.P8807444000497626488

`ceil(A024897(n+1)/2)`
-/

namespace A105042.P8807444000497626488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024897 (n + 1) : ℚ) / 2⌉

end

end A105042.P8807444000497626488

namespace A105042

/-- `ceil(A024897(n+1)/2)` -/
def P8807444000497626488.Spec : Prop :=
  ∀ n, P8807444000497626488.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P17661181820660985726

`ceil(A030433(n+1)/10)`
-/

namespace A105042.P17661181820660985726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030433 (n + 1) : ℚ) / 10⌉

end

end A105042.P17661181820660985726

namespace A105042

/-- `ceil(A030433(n+1)/10)` -/
def P17661181820660985726.Spec : Prop :=
  ∀ n, P17661181820660985726.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P13712770328375729403

`(A111230(n+1)+3)/2`
-/

namespace A105042.P13712770328375729403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111230 (n + 1) + 3 : ℚ) / 2

end

end A105042.P13712770328375729403

namespace A105042

/-- `(A111230(n+1)+3)/2` -/
def P13712770328375729403.Spec : Prop :=
  ∀ n, P13712770328375729403.a n = (A105042 (n + 1) : ℚ)

end A105042

/-! ## A105042.P2895127408302521742

`A139367(n+1)+A024914(n+1)`
-/

namespace A105042.P2895127408302521742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139367 (n + 1) + A024914 (n + 1)

end

end A105042.P2895127408302521742

namespace A105042

/-- `A139367(n+1)+A024914(n+1)` -/
def P2895127408302521742.Spec : Prop :=
  ∀ n, P2895127408302521742.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P4691512848575576014

`A108856(n+1)+A023455(n)-n`
-/

namespace A105042.P4691512848575576014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108856 (n + 1) + (A023455 n - (n : ℤ))

end

end A105042.P4691512848575576014

namespace A105042

/-- `A108856(n+1)+A023455(n)-n` -/
def P4691512848575576014.Spec : Prop :=
  ∀ n, P4691512848575576014.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P8939211874541387495

`A102342(n+1)+A139367(n+1)+1`
-/

namespace A105042.P8939211874541387495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1) + (A139367 (n + 1) + 1)

end

end A105042.P8939211874541387495

namespace A105042

/-- `A102342(n+1)+A139367(n+1)+1` -/
def P8939211874541387495.Spec : Prop :=
  ∀ n, P8939211874541387495.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P11339774845123812782

`A078606(A049510(n+1))`
-/

namespace A105042.P11339774845123812782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078606 (A049510 (n + 1)).toNat

end

end A105042.P11339774845123812782

namespace A105042

/-- `A078606(A049510(n+1))` -/
def P11339774845123812782.Spec : Prop :=
  ∀ n, P11339774845123812782.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P9217094025299716272

`eq[2, A000005(abs(1-10*n))]`
-/

namespace A105042.P9217094025299716272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |1 - (10 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105042.P9217094025299716272

namespace A105042

/-- `eq[2, A000005(abs(1-10*n))]` -/
def P9217094025299716272.Spec : Prop :=
  ∀ n, (P9217094025299716272.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P6779215389870336961

`eq[2, A000005(10*n+9)]+1`
-/

namespace A105042.P6779215389870336961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105042.P6779215389870336961

namespace A105042

/-- `eq[2, A000005(10*n+9)]+1` -/
def P6779215389870336961.Spec : Prop :=
  ∀ n, (P6779215389870336961.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P17390935462051792016

`A020725(A102700(n+1))`
-/

namespace A105042.P17390935462051792016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A102700 (n + 1)).toNat

end

end A105042.P17390935462051792016

namespace A105042

/-- `A020725(A102700(n+1))` -/
def P17390935462051792016.Spec : Prop :=
  ∀ n, P17390935462051792016.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P12445458114798629467

`eq[1, A101264(A008706(n)-1)]`
-/

namespace A105042.P12445458114798629467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A008706 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105042.P12445458114798629467

namespace A105042

/-- `eq[1, A101264(A008706(n)-1)]` -/
def P12445458114798629467.Spec : Prop :=
  ∀ n, (P12445458114798629467.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P9393364254670082605

`eq[1, A001222(A017377(n+1))]+2`
-/

namespace A105042.P9393364254670082605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A105042.P9393364254670082605

namespace A105042

/-- `eq[1, A001222(A017377(n+1))]+2` -/
def P9393364254670082605.Spec : Prop :=
  ∀ n, (P9393364254670082605.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P6697455004614782799

`eq[1, A001222(A008592(n)+9)]+1`
-/

namespace A105042.P6697455004614782799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008592 n + 9).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105042.P6697455004614782799

namespace A105042

/-- `eq[1, A001222(A008592(n)+9)]+1` -/
def P6697455004614782799.Spec : Prop :=
  ∀ n, (P6697455004614782799.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P8703895237214796500

`eq[A122072(n+1), A268488(n+1)]+1`
-/

namespace A105042.P8703895237214796500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105042.P8703895237214796500

namespace A105042

/-- `eq[A122072(n+1), A268488(n+1)]+1` -/
def P8703895237214796500.Spec : Prop :=
  ∀ n, (P8703895237214796500.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P3774410506026210443

`lt[A001222(12*n+9-A004277(n)), 2]+1`
-/

namespace A105042.P3774410506026210443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((12 * n : ℤ) + (9 - A004277 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105042.P3774410506026210443

namespace A105042

/-- `lt[A001222(12*n+9-A004277(n)), 2]+1` -/
def P3774410506026210443.Spec : Prop :=
  ∀ n, (P3774410506026210443.a n : ℤ) = A105042 (n + 1)

end A105042

/-! ## A105042.P16940862940973219168

`A023455(A108856(n+1))`
-/

namespace A105042.P16940862940973219168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023455 (A108856 (n + 1)).toNat

end

end A105042.P16940862940973219168

namespace A105042

/-- `A023455(A108856(n+1))` -/
def P16940862940973219168.Spec : Prop :=
  ∀ n, P16940862940973219168.a n = A105042 (n + 1)

end A105042

/-! ## A105042.P16371577095352488621

`A023456(A108856(n+1)+1)`
-/

namespace A105042.P16371577095352488621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A108856 (n + 1) + 1).toNat

end

end A105042.P16371577095352488621

namespace A105042

/-- `A023456(A108856(n+1)+1)` -/
def P16371577095352488621.Spec : Prop :=
  ∀ n, P16371577095352488621.a n = A105042 (n + 1)

end A105042

/-!
# A105043: Numbers n such that 100*n - 1 is prime.

The programs for A105043, there is no canonical definition to state claims against.
-/

/-! ## A105043.P4753102566430397723

`A102703(n+1)+1`
-/

namespace A105043.P4753102566430397723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1) + 1

end

end A105043.P4753102566430397723

/-! ## A105043.P12447058499461117164

`A020725(A102703(n+1))`
-/

namespace A105043.P12447058499461117164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A102703 (n + 1)).toNat

end

end A105043.P12447058499461117164

/-! ## A105043.P8648590795507540076

`eq[1, A001221(10*10*n+99)]+1`
-/

namespace A105043.P8648590795507540076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105043.P8648590795507540076

/-! ## A105043.P2871653647988852853

`eq[1, A001222(10*10*n+99)]+1`
-/

namespace A105043.P2871653647988852853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105043.P2871653647988852853

/-! ## A105043.P13763655401124596024

`eq[2, A000005(10*10*n+99)]+1`
-/

namespace A105043.P13763655401124596024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105043.P13763655401124596024

/-! ## A105043.P3926018702904007562

`eq[2, A000005(A004280(5*10*n+1))]`
-/

namespace A105043.P3926018702904007562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004280 (5 * (10 * n) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105043.P3926018702904007562

/-!
# A105044: Numbers n such that 1000*n - 1 is prime.

The programs for A105044, there is no canonical definition to state claims against.
-/

/-! ## A105044.P16019811015446990730

`A102704(n+1)+1`
-/

namespace A105044.P16019811015446990730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102704 (n + 1) + 1

end

end A105044.P16019811015446990730

/-! ## A105044.P8128858702621074396

`A020725(A102704(n+1))`
-/

namespace A105044.P8128858702621074396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A102704 (n + 1)).toNat

end

end A105044.P8128858702621074396

/-! ## A105044.P2383025033494837017

`(∩[A095995(n+1), A167292(n+1)]+1)/1000`
-/

namespace A105044.P2383025033494837017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1 : ℚ) / 1000

end

end A105044.P2383025033494837017

/-! ## A105044.P12458914719420283442

`A230202(n+1)%A304516(A053501(n))+1`
-/

namespace A105044.P12458914719420283442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230202 (n + 1)) (A304516 (A053501 n).toNat) + 1

end

end A105044.P12458914719420283442

/-!
# A105045: a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=12; for n > 4, a(n) = 8*a(n-2) - a(n-4) - 3.

The programs for A105045, the canonical program `A105045.P17727958157420858603` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105045 has offset 0).

The definition of A105045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)-a(n-4)-3` (program `A105045.P17727958157420858603`, by `A105045.P17727958157420858603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105045.P17727958157420858603

`8*a(n-2)-a(n-4)-3` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=12`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105045

/-- `8*a(n-2)-a(n-4)-3` -/
def P17727958157420858603.Spec : Prop :=
  ∀ n, P17727958157420858603.a n = A105045 n

theorem P17727958157420858603.correct : P17727958157420858603.Spec := by
  intro n
  simp only [A105045]

end A105045

/-! ## A105045.P11267988441360006241

`A105076(A028310(n))+n/A028310(n)`
-/

namespace A105045.P11267988441360006241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105076 (A028310 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A105045.P11267988441360006241

namespace A105045

/-- `A105076(A028310(n))+n/A028310(n)` -/
def P11267988441360006241.Spec : Prop :=
  ∀ n, P11267988441360006241.a n = (A105045 n : ℚ)

end A105045

/-! ## A105045.P14941474723599815735

`A077248(n)%A103200(n+1)`
-/

namespace A105045.P14941474723599815735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077248 n) (A103200 (n + 1))

end

end A105045.P14941474723599815735

namespace A105045

/-- `A077248(n)%A103200(n+1)` -/
def P14941474723599815735.Spec : Prop :=
  ∀ n, P14941474723599815735.a n = A105045 n

end A105045

/-! ## A105045.P3258340651184417288

`A077248(n)-(A103200(n+1)+A000007(n))`
-/

namespace A105045.P3258340651184417288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 n - (A103200 (n + 1) + A000007 n)

end

end A105045.P3258340651184417288

namespace A105045

/-- `A077248(n)-(A103200(n+1)+A000007(n))` -/
def P3258340651184417288.Spec : Prop :=
  ∀ n, P3258340651184417288.a n = A105045 n

end A105045

/-! ## A105045.P11645221755076524129

`(A077248(n)-A103200(n+1))*A057427(n)`
-/

namespace A105045.P11645221755076524129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077248 n - A103200 (n + 1)) * A057427 n

end

end A105045.P11645221755076524129

namespace A105045

/-- `(A077248(n)-A103200(n+1))*A057427(n)` -/
def P11645221755076524129.Spec : Prop :=
  ∀ n, P11645221755076524129.a n = A105045 n

end A105045

/-! ## A105045.P4288928676630580194

`A077248(n)-(A103200(n+1)+A008683((n+1)²))`
-/

namespace A105045.P4288928676630580194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 n - (A103200 (n + 1) + A008683 ((n + 1) ^ 2))

end

end A105045.P4288928676630580194

namespace A105045

/-- `A077248(n)-(A103200(n+1)+A008683((n+1)²))` -/
def P4288928676630580194.Spec : Prop :=
  ∀ n, P4288928676630580194.a n = A105045 n

end A105045

/-! ## A105045.P5624862592232095501

`(A077248(n)-A103200(n+1))*A000931(C(3, n²))`
-/

namespace A105045.P5624862592232095501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077248 n - A103200 (n + 1)) * A000931 (Nat.choose 3 (n ^ 2))

end

end A105045.P5624862592232095501

namespace A105045

/-- `(A077248(n)-A103200(n+1))*A000931(C(3, n²))` -/
def P5624862592232095501.Spec : Prop :=
  ∀ n, P5624862592232095501.a n = A105045 n

end A105045

/-! ## A105045.P5468929586813381286

`(A077248(n)-A103200(n+1))*A001221(A000961(n+1))`
-/

namespace A105045.P5468929586813381286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077248 n - A103200 (n + 1)) * A001221 (A000961 (n + 1)).toNat

end

end A105045.P5468929586813381286

namespace A105045

/-- `(A077248(n)-A103200(n+1))*A001221(A000961(n+1))` -/
def P5468929586813381286.Spec : Prop :=
  ∀ n, P5468929586813381286.a n = A105045 n

end A105045

/-!
# A105046: a(n) = 1298*a(n-3) - a(n-6) - 648, for n>6, with a(0)=0, a(1)=1, a(2)=8, a(3)=145, a(4)=505, a(5)=9728, a(6)=187561.

The programs for A105046, there is no canonical definition to state claims against.
-/

/-! ## A105046.P6815235670822597196

`record[A104240(A004197(n))+A023532(n)]`
-/

namespace A105046.P6815235670822597196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104240 (A004197 n).toNat + A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105046.P6815235670822597196

/-!
# A105047: Form an addition table of the primes; a(n) is the number of even numbers that appear for the first time in column n.

The programs for A105047, there is no canonical definition to state claims against.
-/

/-! ## A105047.P4450146485567426811

`A255402(n)-a(val(n, n+1))` with `a(0)=1`
-/

namespace A105047.P4450146485567426811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255402 n - a (SequenceMachineLib.valuation n (n + 1))

end

end A105047.P4450146485567426811

/-! ## A105047.P1689578381055151557

`A255402((n-1)*ceil(abs(sin(n)))+1)-1`
-/

namespace A105047.P1689578381055151557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (((n : ℤ) - 1) * ⌈|Real.sin (n : ℝ)|⌉ + 1).toNat - 1

end

end A105047.P1689578381055151557

/-! ## A105047.P4498341125693477596

`A255402(A028310(n))-1`
-/

namespace A105047.P4498341125693477596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 (A028310 n).toNat - 1

end

end A105047.P4498341125693477596

/-! ## A105047.P4311141719674513143

`(A255402(A008574(n)-3*n)-1)%A151800(n)`
-/

namespace A105047.P4311141719674513143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255402 (A008574 n - (3 * n : ℤ)).toNat - 1) (A151800 n)

end

end A105047.P4311141719674513143

/-! ## A105047.P4851720180232517571

`A255402(A008574(n)-3*n)%A001248(n+1)-1`
-/

namespace A105047.P4851720180232517571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255402 (A008574 n - (3 * n : ℤ)).toNat) (A001248 (n + 1)) - 1

end

end A105047.P4851720180232517571

/-! ## A105047.P13169827514051096742

`A028310(n)+A061784(A028310(n))-A061784(n+1)`
-/

namespace A105047.P13169827514051096742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A061784 (A028310 n).toNat - A061784 (n + 1))

end

end A105047.P13169827514051096742

/-! ## A105047.P1466462533792761042

`A255402(ceil(log2(2^n-n+1)))-1`
-/

namespace A105047.P1466462533792761042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255402 ⌈Real.logb 2 ((2 ^ n : ℤ) - (n : ℤ) + 1 : ℝ)⌉.toNat - 1

end

end A105047.P1466462533792761042

/-!
# A105048: Numbers n such that prime(n+2) - ( prime(n+1)-prime(n) ) is a semiprime.

The programs for A105048, there is no canonical definition to state claims against.
-/

/-! ## A105048.P17191105692188024160

`eq[2, A001222(A093667(n+1))]+1`
-/

namespace A105048.P17191105692188024160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A093667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105048.P17191105692188024160

/-! ## A105048.P16053038706868744537

`eq[2, A001222(A008578(n+1)+A001223(n+1))]`
-/

namespace A105048.P16053038706868744537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) + A001223 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105048.P16053038706868744537

/-! ## A105048.P7802310250621179457

`eq[2, A001222(A054541(n+2)+A008578(n+1))]`
-/

namespace A105048.P7802310250621179457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054541 (n + 2) + A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105048.P7802310250621179457

/-! ## A105048.P3938603234864444937

`∑[A305936(A139457(2*n+3)+2*n)]`
-/

namespace A105048.P3938603234864444937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A139457 (2 * n + 3) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105048.P3938603234864444937

/-!
# A105049: a(n) is the smallest prime p such that p+n! is prime and p differs from all a(i), i

The programs for A105049, there is no canonical definition to state claims against.
-/

/-! ## A105049.P16461017318673010184

`p?[floor(n/A330098(2*n+3))]`
-/

namespace A105049.P16461017318673010184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A330098 (2 * n + 3) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105049.P16461017318673010184

/-! ## A105049.P11607325661347102584

`p?[A130472(A305926(n))]`
-/

namespace A105049.P11607325661347102584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A305926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105049.P11607325661347102584

/-! ## A105049.P13526544759169479049

`p?[A194907(p?[A305933(n)])]`
-/

namespace A105049.P13526544759169479049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305933 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105049.P13526544759169479049

/-!
# A105051: Define a(1)=0, a(2)=0, a(3)=15, a(4)=111 then a(n) = 254*a(n-2) - a(n-4) + 126 also sequence such that 7*a(n)*(a(n) + 1) + 1 = a square.

The programs for A105051, the canonical program `A105051.P14184223357306771013` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105051 has offset 1).

The definition of A105051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `254*a(n-2)-a(n-4)+126` (program `A105051.P14184223357306771013`, by `A105051.P14184223357306771013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105051.P14184223357306771013

`254*a(n-2)-a(n-4)+126` with `a(0)=0, a(1)=0, a(2)=15, a(3)=111`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105051

/-- `254*a(n-2)-a(n-4)+126` -/
def P14184223357306771013.Spec : Prop :=
  ∀ n, P14184223357306771013.a n = A105051 (n + 1)

theorem P14184223357306771013.correct : P14184223357306771013.Spec := by
  intro n
  simp only [A105051, Nat.add_sub_cancel]

end A105051

/-! ## A105051.P2013652703628781693

`A105040(round(sqrt(n²+1)))`
-/

namespace A105051.P2013652703628781693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A105051.P2013652703628781693

namespace A105051

/-- `A105040(round(sqrt(n²+1)))` -/
def P2013652703628781693.Spec : Prop :=
  ∀ n, P2013652703628781693.a n = A105051 (n + 1)

end A105051

/-! ## A105051.P6126874521273181057

`A253460(round(sqrt(n²+1)))-1`
-/

namespace A105051.P6126874521273181057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253460 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A105051.P6126874521273181057

namespace A105051

/-- `A253460(round(sqrt(n²+1)))-1` -/
def P6126874521273181057.Spec : Prop :=
  ∀ n, P6126874521273181057.a n = A105051 (n + 1)

end A105051

/-! ## A105051.P4552115893760188181

`floor(A294973(abs(1-n)+n-1)/2)`
-/

namespace A105051.P4552115893760188181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294973 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat : ℚ) / 2⌋

end

end A105051.P4552115893760188181

namespace A105051

/-- `floor(A294973(abs(1-n)+n-1)/2)` -/
def P4552115893760188181.Spec : Prop :=
  ∀ n, P4552115893760188181.a n = A105051 (n + 1)

end A105051

/-! ## A105051.P3138839691675176611

`A253460(A028310(n))-A322366(A027862(n+1))+1`
-/

namespace A105051.P3138839691675176611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253460 (A028310 n).toNat - A322366 (A027862 (n + 1)).toNat + 1

end

end A105051.P3138839691675176611

namespace A105051

/-- `A253460(A028310(n))-A322366(A027862(n+1))+1` -/
def P3138839691675176611.Spec : Prop :=
  ∀ n, P3138839691675176611.a n = A105051 (n + 1)

end A105051

/-!
# A105055: a(n) = bitwise AND operation applied between every term of the n-th row of Pascal's triangle, with the stipulation that all bits left of the last significant bit in each element are turned "on" until all elements of a row contain the same number of bits (see example). Results represented in decimal notation.

The programs for A105055, there is no canonical definition to state claims against.
-/

/-! ## A105055.P4471723293015124638

`and(A001405(n), A321046(A102484(n+1)))`
-/

namespace A105055.P4471723293015124638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001405 n) (A321046 (A102484 (n + 1)).toNat)

end

end A105055.P4471723293015124638

/-! ## A105055.P2651848284952496618

`A358024(A057925(n))`
-/

namespace A105055.P2651848284952496618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 (A057925 n).toNat

end

end A105055.P2651848284952496618

/-! ## A105055.P15020194925380931154

`and(A121526(3*n)+3, A178381(n))`
-/

namespace A105055.P15020194925380931154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121526 (3 * n) + 3) (A178381 n)

end

end A105055.P15020194925380931154

/-! ## A105055.P7741724072630823983

`and(A001405(n), A056725(A017984(n)))`
-/

namespace A105055.P7741724072630823983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001405 n) (A056725 (A017984 n).toNat)

end

end A105055.P7741724072630823983

/-! ## A105055.P2648002833970923981

`and(A001405(n), A343987(A005802(n)))`
-/

namespace A105055.P2648002833970923981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001405 n) (A343987 (A005802 n).toNat)

end

end A105055.P2648002833970923981

/-!
# A105056: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->4, 4->{4,4,7,5}, 5->6, 6->7, 7->8, 8->{8,8,3,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105056, there is no canonical definition to state claims against.
-/

/-! ## A105056.P1573721634822125248

`A000120(record[A031285(n)-4])`
-/

namespace A105056.P1573721634822125248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105056.P1573721634822125248

/-! ## A105056.P18336505435397219992

`A000120(A141213(n+2)-4)`
-/

namespace A105056.P18336505435397219992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A141213 (n + 2) - 4).toNat

end

end A105056.P18336505435397219992

/-! ## A105056.P16148058366777038672

`A000120(∑[A034486(n+1)!])`
-/

namespace A105056.P16148058366777038672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105056.P16148058366777038672

/-! ## A105056.P15876950665227846085

`A106487(∑[A034486(n+1)!])`
-/

namespace A105056.P15876950665227846085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105056.P15876950665227846085

/-! ## A105056.P18039568021310131962

`A007088(A141213(n+2)-4)%9`
-/

namespace A105056.P18039568021310131962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A141213 (n + 2) - 4).toNat) 9

end

end A105056.P18039568021310131962

/-!
# A105058: Expansion of g.f. (1+8*x-x^2)/((1+x)*(1-6*x+x^2)).

The programs for A105058, the canonical program `A105058.P1292088914196115128` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105058 has offset 0).

The definition of A105058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105058.P1292088914196115128

`2*A001109(n+1)-(-1)^n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105058

/-- `2*A001109(n+1)-(-1)^n` -/
def P1292088914196115128.Spec : Prop :=
  ∀ n, P1292088914196115128.a n = A105058 n

theorem P1292088914196115128.correct : P1292088914196115128.Spec := by
  intro n
  simp only [A105058]

end A105058

/-! ## A105058.P15884920337184979487

`A000129(2*n+2)-(-1)^n`
-/

namespace A105058.P15884920337184979487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 2) - (-1) ^ n

end

end A105058.P15884920337184979487

namespace A105058

/-- `A000129(2*n+2)-(-1)^n` -/
def P15884920337184979487.Spec : Prop :=
  ∀ n, P15884920337184979487.a n = A105058 n

end A105058

/-! ## A105058.P4822425305848264032

`Δ[A108475(n)]`
-/

namespace A105058.P4822425305848264032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P4822425305848264032

namespace A105058

/-- `Δ[A108475(n)]` -/
def P4822425305848264032.Spec : Prop :=
  ∀ n, P4822425305848264032.a n = A105058 n

end A105058

/-! ## A105058.P15190245399936687771

`Δ[A116404(2*n)]`
-/

namespace A105058.P15190245399936687771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P15190245399936687771

namespace A105058

/-- `Δ[A116404(2*n)]` -/
def P15190245399936687771.Spec : Prop :=
  ∀ n, P15190245399936687771.a n = A105058 n

end A105058

/-! ## A105058.P17699578849019196755

`Δ[A011900(n)+gcd(2, n)]`
-/

namespace A105058.P17699578849019196755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P17699578849019196755

namespace A105058

/-- `Δ[A011900(n)+gcd(2, n)]` -/
def P17699578849019196755.Spec : Prop :=
  ∀ n, P17699578849019196755.a n = A105058 n

end A105058

/-! ## A105058.P11031529317495821957

`Δ[A053141(n)-and(1, n)]`
-/

namespace A105058.P11031529317495821957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P11031529317495821957

namespace A105058

/-- `Δ[A053141(n)-and(1, n)]` -/
def P11031529317495821957.Spec : Prop :=
  ∀ n, P11031529317495821957.a n = A105058 n

end A105058

/-! ## A105058.P1532718122564996299

`or(2, A001542(n+1))-1`
-/

namespace A105058.P1532718122564996299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A001542 (n + 1)) - 1

end

end A105058.P1532718122564996299

namespace A105058

/-- `or(2, A001542(n+1))-1` -/
def P1532718122564996299.Spec : Prop :=
  ∀ n, P1532718122564996299.a n = A105058 n

end A105058

/-! ## A105058.P3126631846929613694

`Δ[A001541(n)]-a(n-1)` with `a(0)=1`
-/

namespace A105058.P3126631846929613694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A105058.P3126631846929613694

namespace A105058

/-- `Δ[A001541(n)]-a(n-1)` -/
def P3126631846929613694.Spec : Prop :=
  ∀ n, P3126631846929613694.a n = A105058 n

end A105058

/-! ## A105058.P9450153510924675569

`or(2, A114647(2*n+1))-1`
-/

namespace A105058.P9450153510924675569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A114647 (2 * n + 1)) - 1

end

end A105058.P9450153510924675569

namespace A105058

/-- `or(2, A114647(2*n+1))-1` -/
def P9450153510924675569.Spec : Prop :=
  ∀ n, P9450153510924675569.a n = A105058 n

end A105058

/-! ## A105058.P9845085433388305158

`or(2, A052937(2*n+1))-2`
-/

namespace A105058.P9845085433388305158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A052937 (2 * n + 1)) - 2

end

end A105058.P9845085433388305158

namespace A105058

/-- `or(2, A052937(2*n+1))-2` -/
def P9845085433388305158.Spec : Prop :=
  ∀ n, P9845085433388305158.a n = A105058 n

end A105058

/-! ## A105058.P15657497646037041087

`A077444(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A105058.P15657497646037041087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077444 (n + 1) - a (n - 1)

end

end A105058.P15657497646037041087

namespace A105058

/-- `A077444(n+1)-a(n-1)` -/
def P15657497646037041087.Spec : Prop :=
  ∀ n, P15657497646037041087.a n = A105058 n

end A105058

/-! ## A105058.P5755817815821999660

`∑[A075870(n+1)]-(-1)^n`
-/

namespace A105058.P5755817815821999660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A105058.P5755817815821999660

namespace A105058

/-- `∑[A075870(n+1)]-(-1)^n` -/
def P5755817815821999660.Spec : Prop :=
  ∀ n, P5755817815821999660.a n = A105058 n

end A105058

/-! ## A105058.P2383430107505486139

`∑[A163271(2*(n+1))]-(-1)^n`
-/

namespace A105058.P2383430107505486139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A105058.P2383430107505486139

namespace A105058

/-- `∑[A163271(2*(n+1))]-(-1)^n` -/
def P2383430107505486139.Spec : Prop :=
  ∀ n, P2383430107505486139.a n = A105058 n

end A105058

/-! ## A105058.P11240323896164131392

`Δ[A090390(n)+A001109(n)]`
-/

namespace A105058.P11240323896164131392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P11240323896164131392

namespace A105058

/-- `Δ[A090390(n)+A001109(n)]` -/
def P11240323896164131392.Spec : Prop :=
  ∀ n, P11240323896164131392.a n = A105058 n

end A105058

/-! ## A105058.P561572500239348169

`Δ[A011900(n)-A000034(n)]`
-/

namespace A105058.P561572500239348169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P561572500239348169

namespace A105058

/-- `Δ[A011900(n)-A000034(n)]` -/
def P561572500239348169.Spec : Prop :=
  ∀ n, P561572500239348169.a n = A105058 n

end A105058

/-! ## A105058.P14627500573800111136

`Δ[A053141(n)-A000034(n)]`
-/

namespace A105058.P14627500573800111136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105058.P14627500573800111136

namespace A105058

/-- `Δ[A053141(n)-A000034(n)]` -/
def P14627500573800111136.Spec : Prop :=
  ∀ n, P14627500573800111136.a n = A105058 n

end A105058

/-! ## A105058.P16413854165900227953

`Δ[lcm(A001333(n), A077985(n))]`
-/

namespace A105058.P16413854165900227953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001333 n) (A077985 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105058.P16413854165900227953

namespace A105058

/-- `Δ[lcm(A001333(n), A077985(n))]` -/
def P16413854165900227953.Spec : Prop :=
  ∀ n, P16413854165900227953.a n = A105058 n

end A105058

/-! ## A105058.P15366692702329972456

`A090390(n+1)+A046729(n)`
-/

namespace A105058.P15366692702329972456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 (n + 1) + A046729 n

end

end A105058.P15366692702329972456

namespace A105058

/-- `A090390(n+1)+A046729(n)` -/
def P15366692702329972456.Spec : Prop :=
  ∀ n, P15366692702329972456.a n = A105058 n

end A105058

/-! ## A105058.P7658800001183541132

`A001542(n+1)-A033999(n)`
-/

namespace A105058.P7658800001183541132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - A033999 n

end

end A105058.P7658800001183541132

namespace A105058

/-- `A001542(n+1)-A033999(n)` -/
def P7658800001183541132.Spec : Prop :=
  ∀ n, P7658800001183541132.a n = A105058 n

end A105058

/-!
# A105059: Numbers n such that 100000n - 1 is prime.

The programs for A105059, there is no canonical definition to state claims against.
-/

/-! ## A105059.P3995438247165512514

`A102386(n+1)+1`
-/

namespace A105059.P3995438247165512514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102386 (n + 1) + 1

end

end A105059.P3995438247165512514

/-! ## A105059.P6993001297947441135

`A020725(A102386(n+1))`
-/

namespace A105059.P6993001297947441135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A102386 (n + 1)).toNat

end

end A105059.P6993001297947441135

/-!
# A105060: Triangle read by rows in which the n-th row consists of the first n nonzero terms of A033312.

The programs for A105060, the canonical program `A105060.P7749975189105000730` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105060 has offset 1).

The definition of A105060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105060.P563352702878144271

`(2-C(∑[char[∑[n]]], 2)+n)!-1`
-/

namespace A105060.P563352702878144271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ) - 1

end

end A105060.P563352702878144271

namespace A105060

/-- `(2-C(∑[char[∑[n]]], 2)+n)!-1` -/
def P563352702878144271.Spec : Prop :=
  ∀ n, P563352702878144271.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P7749975189105000730

`(A002262(n)+2)!-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105060

/-- `(A002262(n)+2)!-1` -/
def P7749975189105000730.Spec : Prop :=
  ∀ n, P7749975189105000730.a n = A105060 (n + 1)

theorem P7749975189105000730.correct : P7749975189105000730.Spec := by
  intro n
  simp only [A105060, Nat.add_sub_cancel]

end A105060

/-! ## A105060.P8187399389244352736

`A131818(n+2)!-1`
-/

namespace A105060.P8187399389244352736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A131818 (n + 2)).toNat : ℤ) - 1

end

end A105060.P8187399389244352736

namespace A105060

/-- `A131818(n+2)!-1` -/
def P8187399389244352736.Spec : Prop :=
  ∀ n, P8187399389244352736.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P2264806778320041357

`(sqrt(A143844(n))+2)!-1`
-/

namespace A105060.P2264806778320041357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 2)).toNat : ℤ) - 1

end

end A105060.P2264806778320041357

namespace A105060

/-- `(sqrt(A143844(n))+2)!-1` -/
def P2264806778320041357.Spec : Prop :=
  ∀ n, P2264806778320041357.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P13098302515726913754

`(log2(A059268(n))+2)!-1`
-/

namespace A105060.P13098302515726913754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 2)).toNat : ℤ) - 1

end

end A105060.P13098302515726913754

namespace A105060

/-- `(log2(A059268(n))+2)!-1` -/
def P13098302515726913754.Spec : Prop :=
  ∀ n, P13098302515726913754.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P10551163631771216035

`(A002260(n+1)+1)!-1`
-/

namespace A105060.P10551163631771216035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1) + 1).toNat : ℤ) - 1

end

end A105060.P10551163631771216035

namespace A105060

/-- `(A002260(n+1)+1)!-1` -/
def P10551163631771216035.Spec : Prop :=
  ∀ n, P10551163631771216035.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P18417834317780213993

`A030494(A158405(n+1))`
-/

namespace A105060.P18417834317780213993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030494 (A158405 (n + 1)).toNat

end

end A105060.P18417834317780213993

namespace A105060

/-- `A030494(A158405(n+1))` -/
def P18417834317780213993.Spec : Prop :=
  ∀ n, P18417834317780213993.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P17435764541887106189

`A033312(A002260(n+1)+1)`
-/

namespace A105060.P17435764541887106189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 (A002260 (n + 1) + 1).toNat

end

end A105060.P17435764541887106189

namespace A105060

/-- `A033312(A002260(n+1)+1)` -/
def P17435764541887106189.Spec : Prop :=
  ∀ n, P17435764541887106189.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P7187174007461960154

`A166350(A132119(n+2))-1`
-/

namespace A105060.P7187174007461960154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A132119 (n + 2)).toNat - 1

end

end A105060.P7187174007461960154

namespace A105060

/-- `A166350(A132119(n+2))-1` -/
def P7187174007461960154.Spec : Prop :=
  ∀ n, P7187174007461960154.a n = A105060 (n + 1)

end A105060

/-! ## A105060.P16896476598187580433

`A085198(A204985(n+1))`
-/

namespace A105060.P16896476598187580433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085198 (A204985 (n + 1)).toNat

end

end A105060.P16896476598187580433

namespace A105060

/-- `A085198(A204985(n+1))` -/
def P16896476598187580433.Spec : Prop :=
  ∀ n, P16896476598187580433.a n = A105060 (n + 1)

end A105060

/-!
# A105061: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->4, 4->5, 5->{5,5,9,6}, 6->7, 7->8, 8->9, 9->10, 10->{10,10,4,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105061, there is no canonical definition to state claims against.
-/

/-! ## A105061.P10344676923042429631

`ceil(sqrt(A341100(n+1)))`
-/

namespace A105061.P10344676923042429631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A341100 (n + 1) : ℝ)⌉

end

end A105061.P10344676923042429631

/-! ## A105061.P15443099179651208518

`A067693(A341100(n+1))`
-/

namespace A105061.P15443099179651208518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A341100 (n + 1)).toNat

end

end A105061.P15443099179651208518

/-! ## A105061.P4633292603616836602

`A280053(A093655(n+2))`
-/

namespace A105061.P4633292603616836602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280053 (A093655 (n + 2)).toNat

end

end A105061.P4633292603616836602

/-! ## A105061.P9278967102672818452

`A105164(A151934(n)+n)`
-/

namespace A105061.P9278967102672818452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105164 (A151934 n + (n : ℤ)).toNat

end

end A105061.P9278967102672818452

/-! ## A105061.P9313506218932874575

`A105164(A151935(n)+n)`
-/

namespace A105061.P9313506218932874575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105164 (A151935 n + (n : ℤ)).toNat

end

end A105061.P9313506218932874575

/-! ## A105061.P10514112617517779973

`A105164(or(n, A151934(n)))`
-/

namespace A105061.P10514112617517779973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105164 (Int.lor (n : ℤ) (A151934 n)).toNat

end

end A105061.P10514112617517779973

/-! ## A105061.P8595073340588253001

`A105164(xor(n, A151934(n)))`
-/

namespace A105061.P8595073340588253001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105164 (Int.xor (n : ℤ) (A151934 n)).toNat

end

end A105061.P8595073340588253001

/-! ## A105061.P9466673233698699431

`A001222(A020639(10*n+5)^A105164(n))`
-/

namespace A105061.P9466673233698699431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A020639 (10 * n + 5) : ℚ) ^ (A105164 n : ℤ))).toNat

end

end A105061.P9466673233698699431

/-! ## A105061.P5650930282780845865

`A008479(A020639(10*n+5)^A105164(n))`
-/

namespace A105061.P5650930282780845865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (SequenceMachineLib.roundAway ((A020639 (10 * n + 5) : ℚ) ^ (A105164 n : ℤ))).toNat

end

end A105061.P5650930282780845865

/-! ## A105061.P8395224402509211839

`A067029(A108951(A124859(A278159(n+1))))`
-/

namespace A105061.P8395224402509211839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A108951 (A124859 (A278159 (n + 1)).toNat).toNat).toNat

end

end A105061.P8395224402509211839

/-!
# A105062: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->4, 4->5, 5->6, 6->{6,6,10,7}, 7->8, 8->9, 9->10, 10->11, 11->12, 12->{12,12,5,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105062, the canonical program `A105062.P5922688254969693888` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105062 has offset 1).

The definition of A105062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105062.P8435477750498389807

`A000120(2*(n+1))-A130716(A271987(3*n+2))`
-/

namespace A105062.P8435477750498389807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * (n + 1)) - A130716 (A271987 (3 * n + 2)).toNat

end

end A105062.P8435477750498389807

namespace A105062

/-- `A000120(2*(n+1))-A130716(A271987(3*n+2))` -/
def P8435477750498389807.Spec : Prop :=
  ∀ n, P8435477750498389807.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P5922688254969693888

`A240857(∑[n])+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A105062

/-- `A240857(∑[n])+1` -/
def P5922688254969693888.Spec : Prop :=
  ∀ n, P5922688254969693888.a n = A105062 (n + 1)

theorem P5922688254969693888.correct : P5922688254969693888.Spec := by
  intro n
  simp only [A105062, Nat.add_sub_cancel]

end A105062

/-! ## A105062.P16715620532311069499

`∑{e}[A019565(n*gcd(2, n)+1), #]`
-/

namespace A105062.P16715620532311069499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n * Nat.gcd 2 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A105062.P16715620532311069499

namespace A105062

/-- `∑{e}[A019565(n*gcd(2, n)+1), #]` -/
def P16715620532311069499.Spec : Prop :=
  ∀ n, (P16715620532311069499.a n : ℤ) = A105062 (n + 1)

end A105062

/-! ## A105062.P1502763128910551491

`A002654(5^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P1502763128910551491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P1502763128910551491

namespace A105062

/-- `A002654(5^(n-∑[val(n+1, 2)]))` -/
def P1502763128910551491.Spec : Prop :=
  ∀ n, P1502763128910551491.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P16746798863257558247

`A035171(5^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P16746798863257558247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P16746798863257558247

namespace A105062

/-- `A035171(5^(n-∑[val(n+1, 2)]))` -/
def P16746798863257558247.Spec : Prop :=
  ∀ n, P16746798863257558247.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P544260383885179062

`A112329(5^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P544260383885179062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P544260383885179062

namespace A105062

/-- `A112329(5^(n-∑[val(n+1, 2)]))` -/
def P544260383885179062.Spec : Prop :=
  ∀ n, P544260383885179062.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P404138592220814423

`A001511(6^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P404138592220814423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P404138592220814423

namespace A105062

/-- `A001511(6^(n-∑[val(n+1, 2)]))` -/
def P404138592220814423.Spec : Prop :=
  ∀ n, P404138592220814423.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P14331252362699568078

`A035210(6^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P14331252362699568078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035210 (SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P14331252362699568078

namespace A105062

/-- `A035210(6^(n-∑[val(n+1, 2)]))` -/
def P14331252362699568078.Spec : Prop :=
  ∀ n, P14331252362699568078.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P16693692425467468932

`A000005(7^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P16693692425467468932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P16693692425467468932

namespace A105062

/-- `A000005(7^(n-∑[val(n+1, 2)]))` -/
def P16693692425467468932.Spec : Prop :=
  ∀ n, P16693692425467468932.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P13945035028644427280

`A091954(5^(n-∑[val(n+1, 2)]))+1`
-/

namespace A105062.P13945035028644427280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat + 1

end

end A105062.P13945035028644427280

namespace A105062

/-- `A091954(5^(n-∑[val(n+1, 2)]))+1` -/
def P13945035028644427280.Spec : Prop :=
  ∀ n, P13945035028644427280.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P15391489695600096025

`A212625(2*2^(n-∑[val(n+1, 2)]))`
-/

namespace A105062.P15391489695600096025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A105062.P15391489695600096025

namespace A105062

/-- `A212625(2*2^(n-∑[val(n+1, 2)]))` -/
def P15391489695600096025.Spec : Prop :=
  ∀ n, P15391489695600096025.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P6354783991535208216

`A001222(7^(n-∑[val(n+1, 2)]))+1`
-/

namespace A105062.P6354783991535208216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat + 1

end

end A105062.P6354783991535208216

namespace A105062

/-- `A001222(7^(n-∑[val(n+1, 2)]))+1` -/
def P6354783991535208216.Spec : Prop :=
  ∀ n, P6354783991535208216.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P3578989292943429983

`A257992(7^(n-∑[val(n+1, 2)]))+1`
-/

namespace A105062.P3578989292943429983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat + 1

end

end A105062.P3578989292943429983

namespace A105062

/-- `A257992(7^(n-∑[val(n+1, 2)]))+1` -/
def P3578989292943429983.Spec : Prop :=
  ∀ n, P3578989292943429983.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P1025041289777492816

`A054844(7^(n-∑[val(n+1, 2)]))/2`
-/

namespace A105062.P1025041289777492816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat : ℚ) / 2

end

end A105062.P1025041289777492816

namespace A105062

/-- `A054844(7^(n-∑[val(n+1, 2)]))/2` -/
def P1025041289777492816.Spec : Prop :=
  ∀ n, P1025041289777492816.a n = (A105062 (n + 1) : ℚ)

end A105062

/-! ## A105062.P2743033549117588070

`A085787(5^(n-∑[val(n+1, 2)]))%(-8)`
-/

namespace A105062.P2743033549117588070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085787 (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat) (-8)

end

end A105062.P2743033549117588070

namespace A105062

/-- `A085787(5^(n-∑[val(n+1, 2)]))%(-8)` -/
def P2743033549117588070.Spec : Prop :=
  ∀ n, P2743033549117588070.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P17688872558160408811

`A035179(A151780(n+1))`
-/

namespace A105062.P17688872558160408811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A151780 (n + 1)).toNat

end

end A105062.P17688872558160408811

namespace A105062

/-- `A035179(A151780(n+1))` -/
def P17688872558160408811.Spec : Prop :=
  ∀ n, P17688872558160408811.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P525728147903086913

`A023416(A196168(n+1))`
-/

namespace A105062.P525728147903086913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A196168 (n + 1)).toNat

end

end A105062.P525728147903086913

namespace A105062

/-- `A023416(A196168(n+1))` -/
def P525728147903086913.Spec : Prop :=
  ∀ n, P525728147903086913.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P13538038248282070084

`A067029(A246037(n+1))`
-/

namespace A105062.P13538038248282070084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A246037 (n + 1)).toNat

end

end A105062.P13538038248282070084

namespace A105062

/-- `A067029(A246037(n+1))` -/
def P13538038248282070084.Spec : Prop :=
  ∀ n, P13538038248282070084.a n = A105062 (n + 1)

end A105062

/-! ## A105062.P10784804958144054373

`A358371(A001316(n+1))`
-/

namespace A105062.P10784804958144054373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A001316 (n + 1)).toNat

end

end A105062.P10784804958144054373

namespace A105062

/-- `A358371(A001316(n+1))` -/
def P10784804958144054373.Spec : Prop :=
  ∀ n, P10784804958144054373.a n = A105062 (n + 1)

end A105062

/-!
# A105063: a(1)=0, a(2)=0, a(3)=8, a(4)=24, a(n) = 32 + 66*a(n-2) - a(n-4) for n > 4.

The programs for A105063, the canonical program `A105063.P14280511210567110649` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105063 has offset 1).

The definition of A105063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32+66*a(n-2)-a(n-4)` (program `A105063.P14280511210567110649`, by `A105063.P14280511210567110649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105063.P14280511210567110649

`32+66*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105063

/-- `32+66*a(n-2)-a(n-4)` -/
def P14280511210567110649.Spec : Prop :=
  ∀ n, P14280511210567110649.a n = A105063 (n + 1)

theorem P14280511210567110649.correct : P14280511210567110649.Spec := by
  intro n
  simp only [A105063, Nat.add_sub_cancel]

end A105063

/-! ## A105063.P1379847703074186507

`∑[∑[A063695(A023001(n))]]`
-/

namespace A105063.P1379847703074186507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A023001 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105063.P1379847703074186507

namespace A105063

/-- `∑[∑[A063695(A023001(n))]]` -/
def P1379847703074186507.Spec : Prop :=
  ∀ n, P1379847703074186507.a n = A105063 (n + 1)

end A105063

/-!
# A105064: Triangle, read by rows, T(n, k) = T(n, k-1) + (k+1)*n!, T(n, 0) = 1.

The programs for A105064, there is no canonical definition to state claims against.
-/

/-! ## A105064.P4070805881770992308

`or(1, A089851(A193091(n)))`
-/

namespace A105064.P4070805881770992308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089851 (A193091 n).toNat)

end

end A105064.P4070805881770992308

/-! ## A105064.P7042851108387204900

`A079168(A157399(n+1)²)+1`
-/

namespace A105064.P7042851108387204900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079168 (A157399 (n + 1) ^ 2).toNat + 1

end

end A105064.P7042851108387204900

/-! ## A105064.P8510941608065647488

`A085392(C(A141214(n), A002262(n)))`
-/

namespace A105064.P8510941608065647488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Nat.choose (A141214 n).toNat (A002262 n).toNat)

end

end A105064.P8510941608065647488

/-! ## A105064.P2645562679342744040

`A006530(C(A141214(n), A180662(n)))`
-/

namespace A105064.P2645562679342744040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A141214 n).toNat (A180662 n).toNat)

end

end A105064.P2645562679342744040

/-! ## A105064.P6246324241151598652

`A006530(C(A182150(n+1), A112367(n)))`
-/

namespace A105064.P6246324241151598652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A182150 (n + 1)).toNat (A112367 n).toNat)

end

end A105064.P6246324241151598652

/-!
# A105066: Positive integers n such that n^8 + 1 is semiprime.

The programs for A105066, the canonical program `A105066.P14854898115589847885` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105066 has offset 1).

The definition of A105066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105066.P14854898115589847885

`eq[2, A194003(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A105066

/-- `eq[2, A194003(n)]` -/
def P14854898115589847885.Spec : Prop :=
  ∀ n, (P14854898115589847885.a n : ℤ) = A105066 (n + 1)

theorem P14854898115589847885.correct : P14854898115589847885.Spec := by
  intro n
  simp only [A105066, Nat.add_sub_cancel]

end A105066

/-! ## A105066.P13063474323089436066

`eq[2, A193929(n²)]`
-/

namespace A105066.P13063474323089436066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105066.P13063474323089436066

namespace A105066

/-- `eq[2, A193929(n²)]` -/
def P13063474323089436066.Spec : Prop :=
  ∀ n, (P13063474323089436066.a n : ℤ) = A105066 (n + 1)

end A105066

/-! ## A105066.P673892716333764661

`eq[4, A193562(n²)]`
-/

namespace A105066.P673892716333764661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105066.P673892716333764661

namespace A105066

/-- `eq[4, A193562(n²)]` -/
def P673892716333764661.Spec : Prop :=
  ∀ n, (P673892716333764661.a n : ℤ) = A105066 (n + 1)

end A105066

/-! ## A105066.P10415808239298845757

`eq[2, A193929(n^2)!]`
-/

namespace A105066.P10415808239298845757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A193929 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105066.P10415808239298845757

namespace A105066

/-- `eq[2, A193929(n^2)!]` -/
def P10415808239298845757.Spec : Prop :=
  ∀ n, (P10415808239298845757.a n : ℤ) = A105066 (n + 1)

end A105066

/-!
# A105067: a(n) = Sum_{j=0..11} n^j.

The programs for A105067, the canonical program `A105067.P15400468049613788373` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105067 has offset 0).

The definition of A105067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105067.P15400468049613788373

`(1+n²)*(1+n^4+n^8)*(1+n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105067

/-- `(1+n²)*(1+n^4+n^8)*(1+n)` -/
def P15400468049613788373.Spec : Prop :=
  ∀ n, (P15400468049613788373.a n : ℤ) = A105067 n

theorem P15400468049613788373.correct : P15400468049613788373.Spec := by
  intro n
  simp only [A105067]

end A105067

/-! ## A105067.P17207798042631705327

`n*A060885(n)+1`
-/

namespace A105067.P17207798042631705327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060885 n + 1

end

end A105067.P17207798042631705327

namespace A105067

/-- `n*A060885(n)+1` -/
def P17207798042631705327.Spec : Prop :=
  ∀ n, P17207798042631705327.a n = A105067 n

end A105067

/-! ## A105067.P13926143430220568335

`n*(A228294(n)+1)+1`
-/

namespace A105067.P13926143430220568335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228294 n + 1) + 1

end

end A105067.P13926143430220568335

namespace A105067

/-- `n*(A228294(n)+1)+1` -/
def P13926143430220568335.Spec : Prop :=
  ∀ n, P13926143430220568335.a n = A105067 n

end A105067

/-! ## A105067.P7196530070784934200

`A060885(n)+A008455(n)`
-/

namespace A105067.P7196530070784934200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n + A008455 n

end

end A105067.P7196530070784934200

namespace A105067

/-- `A060885(n)+A008455(n)` -/
def P7196530070784934200.Spec : Prop :=
  ∀ n, P7196530070784934200.a n = A105067 n

end A105067

/-! ## A105067.P7116666561322436917

`A060887(n)-A008456(n)`
-/

namespace A105067.P7116666561322436917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 n - A008456 n

end

end A105067.P7116666561322436917

namespace A105067

/-- `A060887(n)-A008456(n)` -/
def P7116666561322436917.Spec : Prop :=
  ∀ n, P7116666561322436917.a n = A105067 n

end A105067

/-! ## A105067.P13044245365339054164

`A060887(n)-A001014(n)²`
-/

namespace A105067.P13044245365339054164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 n - A001014 n ^ 2

end

end A105067.P13044245365339054164

namespace A105067

/-- `A060887(n)-A001014(n)²` -/
def P13044245365339054164.Spec : Prop :=
  ∀ n, P13044245365339054164.a n = A105067 n

end A105067

/-! ## A105067.P17410925273277478675

`round(A060887(n)²/A104376(n))`
-/

namespace A105067.P17410925273277478675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060887 n ^ 2 : ℚ) / (A104376 n : ℚ))

end

end A105067.P17410925273277478675

namespace A105067

/-- `round(A060887(n)²/A104376(n))` -/
def P17410925273277478675.Spec : Prop :=
  ∀ n, P17410925273277478675.a n = A105067 n

end A105067

/-!
# A105069: Number of distinct prime divisors of 100^n - 3.

The programs for A105069, there is no canonical definition to state claims against.
-/

/-! ## A105069.P14470675271411023119

`A105068(2*(n+1))`
-/

namespace A105069.P14470675271411023119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105068 (2 * (n + 1))

end

end A105069.P14470675271411023119

/-!
# A105070: T(n,k) = 2^k*binomial(n,2k+1), where 0 <= k <= floor((n-1)/2), n >= 1.

The programs for A105070, the canonical program `A105070.P11783947484136715617` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105070 has offset 1).

The definition of A105070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105070.P554512781294962784

`2^A055087(n)*A034867(n)`
-/

namespace A105070.P554512781294962784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A055087 n : ℤ) * (A034867 n : ℚ)

end

end A105070.P554512781294962784

namespace A105070

/-- `2^A055087(n)*A034867(n)` -/
def P554512781294962784.Spec : Prop :=
  ∀ n, P554512781294962784.a n = (A105070 (n + 1) : ℚ)

end A105070

/-! ## A105070.P11783947484136715617

`A000079(A055087(n))*A034867(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A105070

/-- `A000079(A055087(n))*A034867(n)` -/
def P11783947484136715617.Spec : Prop :=
  ∀ n, P11783947484136715617.a n = A105070 (n + 1)

theorem P11783947484136715617.correct : P11783947484136715617.Spec := by
  intro n
  simp only [A105070, Nat.add_sub_cancel]

end A105070

/-! ## A105070.P7300741366345153854

`A034867(n)*A059268(A091018(n))`
-/

namespace A105070.P7300741366345153854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n * A059268 (A091018 n).toNat

end

end A105070.P7300741366345153854

namespace A105070

/-- `A034867(n)*A059268(A091018(n))` -/
def P7300741366345153854.Spec : Prop :=
  ∀ n, P7300741366345153854.a n = A105070 (n + 1)

end A105070

/-! ## A105070.P11719669489149698109

`A117919(n+1+A000037(n+1))`
-/

namespace A105070.P11719669489149698109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 ((n + 1 : ℤ) + A000037 (n + 1)).toNat

end

end A105070.P11719669489149698109

namespace A105070

/-- `A117919(n+1+A000037(n+1))` -/
def P11719669489149698109.Spec : Prop :=
  ∀ n, P11719669489149698109.a n = A105070 (n + 1)

end A105070

/-! ## A105070.P1865155313773856437

`A117919(A049068(n+1)+A028391(n))`
-/

namespace A105070.P1865155313773856437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (A049068 (n + 1) + A028391 n).toNat

end

end A105070.P1865155313773856437

namespace A105070

/-- `A117919(A049068(n+1)+A028391(n))` -/
def P1865155313773856437.Spec : Prop :=
  ∀ n, P1865155313773856437.a n = A105070 (n + 1)

end A105070

/-! ## A105070.P15029260404580504867

`A117919(eq[A000038(n), A162515(n)])`
-/

namespace A105070.P15029260404580504867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105070.P15029260404580504867

namespace A105070

/-- `A117919(eq[A000038(n), A162515(n)])` -/
def P15029260404580504867.Spec : Prop :=
  ∀ n, P15029260404580504867.a n = A105070 (n + 1)

end A105070

/-! ## A105070.P16167363839249786518

`A117919(A274430(n+1)+A055087(n))`
-/

namespace A105070.P16167363839249786518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (A274430 (n + 1) + A055087 n).toNat

end

end A105070.P16167363839249786518

namespace A105070

/-- `A117919(A274430(n+1)+A055087(n))` -/
def P16167363839249786518.Spec : Prop :=
  ∀ n, P16167363839249786518.a n = A105070 (n + 1)

end A105070

/-!
# A105071: Primes in the triangle defined by T(0,c)=1, T(1,c)=c, T(r,1)=1 and T(r,c) = T(r,c-1) + c*(r-1)!.

The programs for A105071, there is no canonical definition to state claims against.
-/

/-! ## A105071.P12158097869199557677

`record[p?[A105064(A104414(n))]]`
-/

namespace A105071.P12158097869199557677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105064 (A104414 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105071.P12158097869199557677

/-! ## A105071.P7459992876864674799

`filter[A144755(n+2), A380419(#)]`
-/

namespace A105071.P7459992876864674799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380419 (f1 j).toNat = 1) n)

end

end A105071.P7459992876864674799

/-! ## A105071.P14550731973618230367

`p?[record[A105064(A097032(n+1))]]`
-/

namespace A105071.P14550731973618230367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105064 (A097032 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105071.P14550731973618230367

/-!
# A105072: Number of permutations on [n] whose local maxima are in ascending order.

The programs for A105072, there is no canonical definition to state claims against.
-/

/-! ## A105072.P13223000699835665829

`A355167(n)/2^n`
-/

namespace A105072.P13223000699835665829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355167 n : ℚ) / (2 ^ n : ℚ)

end

end A105072.P13223000699835665829

/-! ## A105072.P7848480851944967702

`floor(A355167(n)/A000079(n))`
-/

namespace A105072.P7848480851944967702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A355167 n : ℚ) / (A000079 n : ℚ)⌋

end

end A105072.P7848480851944967702

/-! ## A105072.P17585873850668935299

`(A337040(n+1)+A337040(n))/A000079(n)`
-/

namespace A105072.P17585873850668935299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) + A337040 n : ℚ) / (A000079 n : ℚ)

end

end A105072.P17585873850668935299

/-! ## A105072.P5434642380451080159

`(A337040(n+1)+A337040(n))/Δ[A242475(n)]`
-/

namespace A105072.P5434642380451080159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) + A337040 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A105072.P5434642380451080159

/-! ## A105072.P11704002659783416587

`(A337040(n+1)+A337040(n))/record[A059268(n)]`
-/

namespace A105072.P11704002659783416587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) + A337040 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A105072.P11704002659783416587

/-!
# A105073: Define a(1)=0, a(2)=2 then a(n) = 3*a(n-1) - a(n-2), a(n+1) = 3*a(n)-a(n-1) and a(n+2) = 3*a(n+1) - a(n) + 2.

The programs for A105073, the canonical program `A105073.P4637949737583558919` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105073 has offset 1).

The definition of A105073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105073.P4637949737583558919

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=16, a(4)=44`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105073

/-- `3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` -/
def P4637949737583558919.Spec : Prop :=
  ∀ n, P4637949737583558919.a n = A105073 (n + 1)

theorem P4637949737583558919.correct : P4637949737583558919.Spec := by
  intro n
  simp only [A105073, Nat.add_sub_cancel]

end A105073

/-! ## A105073.P13541915554297617478

`∑[2*A182890(n)]`
-/

namespace A105073.P13541915554297617478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105073.P13541915554297617478

namespace A105073

/-- `∑[2*A182890(n)]` -/
def P13541915554297617478.Spec : Prop :=
  ∀ n, P13541915554297617478.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P13654328912730193915

`A087953(n+1)-1`
-/

namespace A105073.P13654328912730193915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) - 1

end

end A105073.P13654328912730193915

namespace A105073

/-- `A087953(n+1)-1` -/
def P13654328912730193915.Spec : Prop :=
  ∀ n, P13654328912730193915.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P13297120532647554309

`A173434(2*n+3)`
-/

namespace A105073.P13297120532647554309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (2 * n + 3)

end

end A105073.P13297120532647554309

namespace A105073

/-- `A173434(2*n+3)` -/
def P13297120532647554309.Spec : Prop :=
  ∀ n, P13297120532647554309.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P11639142874913536781

`A201864(2*n+3)`
-/

namespace A105073.P11639142874913536781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (2 * n + 3)

end

end A105073.P11639142874913536781

namespace A105073

/-- `A201864(2*n+3)` -/
def P11639142874913536781.Spec : Prop :=
  ∀ n, P11639142874913536781.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P12793777790952048100

`∑[A094686(2*n+1)]`
-/

namespace A105073.P12793777790952048100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105073.P12793777790952048100

namespace A105073

/-- `∑[A094686(2*n+1)]` -/
def P12793777790952048100.Spec : Prop :=
  ∀ n, P12793777790952048100.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P7201530220881578564

`∑[A293505(2*(n+1))]`
-/

namespace A105073.P7201530220881578564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105073.P7201530220881578564

namespace A105073

/-- `∑[A293505(2*(n+1))]` -/
def P7201530220881578564.Spec : Prop :=
  ∀ n, P7201530220881578564.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P10332028450511503873

`∑[A174618(4*n+3)]`
-/

namespace A105073.P10332028450511503873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105073.P10332028450511503873

namespace A105073

/-- `∑[A174618(4*n+3)]` -/
def P10332028450511503873.Spec : Prop :=
  ∀ n, P10332028450511503873.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P16742635979006923705

`A173173(2*n+3)-1`
-/

namespace A105073.P16742635979006923705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (2 * n + 3) - 1

end

end A105073.P16742635979006923705

namespace A105073

/-- `A173173(2*n+3)-1` -/
def P16742635979006923705.Spec : Prop :=
  ∀ n, P16742635979006923705.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P9866930071044909178

`2*A004697(2*n+3)`
-/

namespace A105073.P9866930071044909178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004697 (2 * n + 3)

end

end A105073.P9866930071044909178

namespace A105073

/-- `2*A004697(2*n+3)` -/
def P9866930071044909178.Spec : Prop :=
  ∀ n, P9866930071044909178.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P2422191764933508403

`2*A293553(2*n+3)`
-/

namespace A105073.P2422191764933508403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293553 (2 * n + 3)

end

end A105073.P2422191764933508403

namespace A105073

/-- `2*A293553(2*n+3)` -/
def P2422191764933508403.Spec : Prop :=
  ∀ n, P2422191764933508403.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P4883637649833760824

`or(1, A108479(n+1))-1`
-/

namespace A105073.P4883637649833760824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108479 (n + 1)) - 1

end

end A105073.P4883637649833760824

namespace A105073

/-- `or(1, A108479(n+1))-1` -/
def P4883637649833760824.Spec : Prop :=
  ∀ n, P4883637649833760824.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P1453464296473092702

`or(1, A109961(n+1))-1`
-/

namespace A105073.P1453464296473092702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109961 (n + 1)) - 1

end

end A105073.P1453464296473092702

namespace A105073

/-- `or(1, A109961(n+1))-1` -/
def P1453464296473092702.Spec : Prop :=
  ∀ n, P1453464296473092702.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P10039818133067395479

`floor(∑[A052952(2*n)/2])`
-/

namespace A105073.P10039818133067395479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052952 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A105073.P10039818133067395479

namespace A105073

/-- `floor(∑[A052952(2*n)/2])` -/
def P10039818133067395479.Spec : Prop :=
  ∀ n, P10039818133067395479.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P10329808635823187378

`floor(∑[A000045(2*(n+1))/2])`
-/

namespace A105073.P10329808635823187378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A105073.P10329808635823187378

namespace A105073

/-- `floor(∑[A000045(2*(n+1))/2])` -/
def P10329808635823187378.Spec : Prop :=
  ∀ n, P10329808635823187378.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P7699845352744145514

`A071618(n)+A001906(n)`
-/

namespace A105073.P7699845352744145514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071618 n + A001906 n

end

end A105073.P7699845352744145514

namespace A105073

/-- `A071618(n)+A001906(n)` -/
def P7699845352744145514.Spec : Prop :=
  ∀ n, P7699845352744145514.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P6234569576531728032

`record[A087953(A263390(n))-1]`
-/

namespace A105073.P6234569576531728032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (A263390 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105073.P6234569576531728032

namespace A105073

/-- `record[A087953(A263390(n))-1]` -/
def P6234569576531728032.Spec : Prop :=
  ∀ n, P6234569576531728032.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P17190259694249064499

`A245968(2*n)+A000045(2*n)`
-/

namespace A105073.P17190259694249064499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (2 * n) + A000045 (2 * n)

end

end A105073.P17190259694249064499

namespace A105073

/-- `A245968(2*n)+A000045(2*n)` -/
def P17190259694249064499.Spec : Prop :=
  ∀ n, P17190259694249064499.a n = A105073 (n + 1)

end A105073

/-! ## A105073.P3502664612112198742

`A147600(2*n)-A147997(2*n)`
-/

namespace A105073.P3502664612112198742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) - A147997 (2 * n)

end

end A105073.P3502664612112198742

namespace A105073

/-- `A147600(2*n)-A147997(2*n)` -/
def P3502664612112198742.Spec : Prop :=
  ∀ n, P3502664612112198742.a n = A105073 (n + 1)

end A105073

/-!
# A105074: Number of ways to fill in an n X n grid such that the digits of each row and each column form a square number.

The programs for A105074, there is no canonical definition to state claims against.
-/

/-! ## A105074.P8137423478375514887

`A316857(A282005(n))+A283196(n+3)`
-/

namespace A105074.P8137423478375514887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (A282005 n).toNat + A283196 (n + 3)

end

end A105074.P8137423478375514887

/-!
# A105075: a(1) = 1; a(n) = Sum_{k=1..n-1} phi(a(k)*a(n-k)), where phi(m) is the totient function.

The programs for A105075, there is no canonical definition to state claims against.
-/

/-! ## A105075.P9554299736916891870

`A338283(A384829(n))`
-/

namespace A105075.P9554299736916891870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338283 (A384829 n).toNat

end

end A105075.P9554299736916891870

/-! ## A105075.P14590607407967118779

`A000055(n+2)-A089859(A115981(n))`
-/

namespace A105075.P14590607407967118779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 2) - A089859 (A115981 n).toNat

end

end A105075.P14590607407967118779

/-! ## A105075.P16929953468609972280

`A343040(A356937(n))-A083894(3*n+2)`
-/

namespace A105075.P16929953468609972280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343040 (A356937 n).toNat - A083894 (3 * n + 2)

end

end A105075.P16929953468609972280

/-! ## A105075.P8489021977916529037

`A229546(A238430(n))+A056556(A002212(n)+1)`
-/

namespace A105075.P8489021977916529037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229546 (A238430 n).toNat + A056556 (A002212 n + 1).toNat

end

end A105075.P8489021977916529037

/-!
# A105076: Numbers k such that 60*k^2 + 60*k + 1 is a square.

The programs for A105076, the canonical program `A105076.P8360830396209348555` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105076 has offset 1).

The definition of A105076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105076.P8360830396209348555

`a(n-1)+8*a(n-2)-8*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=11, a(4)=19`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105076

/-- `a(n-1)+8*a(n-2)-8*a(n-3)-a(n-4)+a(n-5)` -/
def P8360830396209348555.Spec : Prop :=
  ∀ n, P8360830396209348555.a n = A105076 (n + 1)

theorem P8360830396209348555.correct : P8360830396209348555.Spec := by
  intro n
  simp only [A105076, Nat.add_sub_cancel]

end A105076

/-! ## A105076.P7994781192421682391

`∑[8*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=9, a(4)=8`
-/

namespace A105076.P7994781192421682391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 9, 8] fun n f1 =>
  8 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105076.P7994781192421682391

namespace A105076

/-- `∑[8*a(n-2)-a(n-4)]` -/
def P7994781192421682391.Spec : Prop :=
  ∀ n, P7994781192421682391.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P10821601249278804302

`A105045(n+1)-1`
-/

namespace A105076.P10821601249278804302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (n + 1) - 1

end

end A105076.P10821601249278804302

namespace A105076

/-- `A105045(n+1)-1` -/
def P10821601249278804302.Spec : Prop :=
  ∀ n, P10821601249278804302.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P13537736667750960515

`∑[abs(Δ[A105045(n)])]-1`
-/

namespace A105076.P13537736667750960515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A105076.P13537736667750960515

namespace A105076

/-- `∑[abs(Δ[A105045(n)])]-1` -/
def P13537736667750960515.Spec : Prop :=
  ∀ n, P13537736667750960515.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P4276648730444508843

`A134824(n+2)+A105045(n+1)`
-/

namespace A105076.P4276648730444508843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A105045 (n + 1)

end

end A105076.P4276648730444508843

namespace A105076

/-- `A134824(n+2)+A105045(n+1)` -/
def P4276648730444508843.Spec : Prop :=
  ∀ n, P4276648730444508843.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P4394122176755339513

`floor(atan(n+1))*A103200(A028310(n))`
-/

namespace A105076.P4394122176755339513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * A103200 (A028310 n).toNat

end

end A105076.P4394122176755339513

namespace A105076

/-- `floor(atan(n+1))*A103200(A028310(n))` -/
def P4394122176755339513.Spec : Prop :=
  ∀ n, P4394122176755339513.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P9024873087091475155

`A103200(A028310(n))-A000007(n)`
-/

namespace A105076.P9024873087091475155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (A028310 n).toNat - A000007 n

end

end A105076.P9024873087091475155

namespace A105076

/-- `A103200(A028310(n))-A000007(n)` -/
def P9024873087091475155.Spec : Prop :=
  ∀ n, P9024873087091475155.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P1186054800455736649

`A057427(n)*A103200(A028310(n))`
-/

namespace A105076.P1186054800455736649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A103200 (A028310 n).toNat

end

end A105076.P1186054800455736649

namespace A105076

/-- `A057427(n)*A103200(A028310(n))` -/
def P1186054800455736649.Spec : Prop :=
  ∀ n, P1186054800455736649.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P4326188332386910244

`A103200(A000007(n)+n)-A000007(n)`
-/

namespace A105076.P4326188332386910244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A105076.P4326188332386910244

namespace A105076

/-- `A103200(A000007(n)+n)-A000007(n)` -/
def P4326188332386910244.Spec : Prop :=
  ∀ n, P4326188332386910244.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P4164155786308231228

`Δ[∑[A105045(n)]-n]`
-/

namespace A105076.P4164155786308231228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105076.P4164155786308231228

namespace A105076

/-- `Δ[∑[A105045(n)]-n]` -/
def P4164155786308231228.Spec : Prop :=
  ∀ n, P4164155786308231228.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P14523638788132700974

`floor(A199336(n+1)/2)`
-/

namespace A105076.P14523638788132700974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199336 (n + 1) : ℚ) / 2⌋

end

end A105076.P14523638788132700974

namespace A105076

/-- `floor(A199336(n+1)/2)` -/
def P14523638788132700974.Spec : Prop :=
  ∀ n, P14523638788132700974.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P14147900535803948848

`Δ[A022960(n)+∑[A105045(n)]]`
-/

namespace A105076.P14147900535803948848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105076.P14147900535803948848

namespace A105076

/-- `Δ[A022960(n)+∑[A105045(n)]]` -/
def P14147900535803948848.Spec : Prop :=
  ∀ n, P14147900535803948848.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P10460819437614941224

`A103200(n+1)-A177187(n+1)`
-/

namespace A105076.P10460819437614941224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) - A177187 (n + 1)

end

end A105076.P10460819437614941224

namespace A105076

/-- `A103200(n+1)-A177187(n+1)` -/
def P10460819437614941224.Spec : Prop :=
  ∀ n, P10460819437614941224.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P15027159023051197197

`A103200(A028310(n))%A103200(n+1)`
-/

namespace A105076.P15027159023051197197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103200 (A028310 n).toNat) (A103200 (n + 1))

end

end A105076.P15027159023051197197

namespace A105076

/-- `A103200(A028310(n))%A103200(n+1)` -/
def P15027159023051197197.Spec : Prop :=
  ∀ n, P15027159023051197197.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P2801678671119485679

`A077248(n+1)-(A103200(n+2)+1)`
-/

namespace A105076.P2801678671119485679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (n + 1) - (A103200 (n + 2) + 1)

end

end A105076.P2801678671119485679

namespace A105076

/-- `A077248(n+1)-(A103200(n+2)+1)` -/
def P2801678671119485679.Spec : Prop :=
  ∀ n, P2801678671119485679.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P5356116407932294472

`A103200(n+4)-A103201(n+2)`
-/

namespace A105076.P5356116407932294472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 4) - A103201 (n + 2)

end

end A105076.P5356116407932294472

namespace A105076

/-- `A103200(n+4)-A103201(n+2)` -/
def P5356116407932294472.Spec : Prop :=
  ∀ n, P5356116407932294472.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P9619063778826362067

`A103200(n+4)-A199338(n+3)`
-/

namespace A105076.P9619063778826362067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 4) - A199338 (n + 3)

end

end A105076.P9619063778826362067

namespace A105076

/-- `A103200(n+4)-A199338(n+3)` -/
def P9619063778826362067.Spec : Prop :=
  ∀ n, P9619063778826362067.a n = A105076 (n + 1)

end A105076

/-! ## A105076.P13206470795712130159

`∑[gcd(A145607(n+1), A145608(n))]`
-/

namespace A105076.P13206470795712130159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145607 (n + 1)) (A145608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105076.P13206470795712130159

namespace A105076

/-- `∑[gcd(A145607(n+1), A145608(n))]` -/
def P13206470795712130159.Spec : Prop :=
  ∀ n, (P13206470795712130159.a n : ℤ) = A105076 (n + 1)

end A105076

/-!
# A105077: Expansion of g.f. -(x^3+5x+5)/((x^2-x+1)*(x+1)^2).

The programs for A105077, the canonical program `A105077.P16929942114565575812` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105077 has offset 0).

The definition of A105077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105077.P16929942114565575812

`(-1)^n-a(n-3)` with `a(0)=-5, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A105077

/-- `(-1)^n-a(n-3)` -/
def P16929942114565575812.Spec : Prop :=
  ∀ n, P16929942114565575812.a n = A105077 n

theorem P16929942114565575812.correct : P16929942114565575812.Spec := by
  intro n
  simp only [A105077]

end A105077

/-! ## A105077.P4508849379297732197

`Δ[and(1, n)-a(n-3)]` with `a(0)=3, a(1)=-2, a(2)=-2`
-/

namespace A105077.P4508849379297732197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, -2] fun n f1 =>
  (Nat.land 1 n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105077.P4508849379297732197

namespace A105077

/-- `Δ[and(1, n)-a(n-3)]` -/
def P4508849379297732197.Spec : Prop :=
  ∀ n, P4508849379297732197.a n = A105077 n

end A105077

/-! ## A105077.P12839119493155888876

`(A008620(n)-gcd(3, n)!)*A033999(n)`
-/

namespace A105077.P12839119493155888876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 n - (Nat.factorial (Nat.gcd 3 n) : ℤ)) * A033999 n

end

end A105077.P12839119493155888876

namespace A105077

/-- `(A008620(n)-gcd(3, n)!)*A033999(n)` -/
def P12839119493155888876.Spec : Prop :=
  ∀ n, P12839119493155888876.a n = A105077 n

end A105077

/-!
# A105078: Positive integers n such that n^10 + 1 is semiprime.

The programs for A105078, there is no canonical definition to state claims against.
-/

/-! ## A105078.P11814706231787685203

`∩[A005574(n+1), A250176(n+1)]`
-/

namespace A105078.P11814706231787685203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105078.P11814706231787685203

/-! ## A105078.P10193952164638662221

`∩[A089593(n+1)+1, A250176(n+1)]`
-/

namespace A105078.P10193952164638662221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105078.P10193952164638662221

/-! ## A105078.P9757691144989204420

`∩[2*A001912(n+1), A250176(n+1)]`
-/

namespace A105078.P9757691144989204420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105078.P9757691144989204420

/-! ## A105078.P4789209998092864506

`∩[A250176(n+1), A214516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A105078.P4789209998092864506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A214516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105078.P4789209998092864506

/-! ## A105078.P15220627065479884792

`filter[A250176(n+1), A295405(#)]`
-/

namespace A105078.P15220627065479884792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A105078.P15220627065479884792

/-! ## A105078.P3002219880476624023

`∩[A005843(A001912(n+1)), A250176(n+1)]`
-/

namespace A105078.P3002219880476624023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001912 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105078.P3002219880476624023

/-! ## A105078.P16408951550242591114

`∩[A181436(n+1), A250176(n+1)]`
-/

namespace A105078.P16408951550242591114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105078.P16408951550242591114

/-! ## A105078.P10253007553703816789

`record[A247339(A250176(n+1))]`
-/

namespace A105078.P10253007553703816789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A250176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105078.P10253007553703816789

/-!
# A105079: Number of distinct prime divisors of 1000^n - 3 where n = 1,2,3,....

The programs for A105079, there is no canonical definition to state claims against.
-/

/-! ## A105079.P458529319362545692

`A105068(3*(n+1))`
-/

namespace A105079.P458529319362545692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105068 (3 * (n + 1))

end

end A105079.P458529319362545692

/-! ## A105079.P16682337693879224864

`A182597(A107996(n+1)-n)`
-/

namespace A105079.P16682337693879224864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182597 (A107996 (n + 1) - (n : ℤ)).toNat

end

end A105079.P16682337693879224864

/-!
# A105080: Number of distinct prime divisors of 10000^n - 3.

The programs for A105080, there is no canonical definition to state claims against.
-/

/-! ## A105080.P16826041838813265429

`A105069(2*(n+1))`
-/

namespace A105080.P16826041838813265429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105069 (2 * (n + 1))

end

end A105080.P16826041838813265429

/-! ## A105080.P16968645342848785837

`A105068(4*(n+1))`
-/

namespace A105080.P16968645342848785837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105068 (4 * (n + 1))

end

end A105080.P16968645342848785837

/-! ## A105080.P9161432923789437056

`A105069(n+2+n)%9`
-/

namespace A105080.P9161432923789437056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105069 (n + 2 + n)) 9

end

end A105080.P9161432923789437056

/-! ## A105080.P879035317591453752

`dr(A105069(comp[A105104(n)]))`
-/

namespace A105080.P879035317591453752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105104 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A105069 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A105080.P879035317591453752

/-! ## A105080.P1641419651656560289

`A105069(n+2+n)/A007318(∑[n])`
-/

namespace A105080.P1641419651656560289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105069 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A105080.P1641419651656560289

/-!
# A105081: a(n) = 1 + A003188(n - 1), n >= 1.

The programs for A105081, the canonical program `A105081.P13201815104131715710` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105081 has offset 1).

The definition of A105081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105081.P13201815104131715710

`1+A003188(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105081

/-- `1+A003188(n)` -/
def P13201815104131715710.Spec : Prop :=
  ∀ n, P13201815104131715710.a n = A105081 (n + 1)

theorem P13201815104131715710.correct : P13201815104131715710.Spec := by
  intro n
  simp only [A105081, Nat.add_sub_cancel]

end A105081

/-! ## A105081.P9014848128838786167

`xor(n, floor(n/2))+1`
-/

namespace A105081.P9014848128838786167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1

end

end A105081.P9014848128838786167

namespace A105081

/-- `xor(n, floor(n/2))+1` -/
def P9014848128838786167.Spec : Prop :=
  ∀ n, P9014848128838786167.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P16305207414668215036

`abs(xor(xor(n, floor(n/2)), -1))`
-/

namespace A105081.P16305207414668215036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) (-1)|

end

end A105081.P16305207414668215036

namespace A105081

/-- `abs(xor(xor(n, floor(n/2)), -1))` -/
def P16305207414668215036.Spec : Prop :=
  ∀ n, P16305207414668215036.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P4291384892234791048

`-xor(xor(n, floor(n/2)), -1)`
-/

namespace A105081.P4291384892234791048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) (-1)

end

end A105081.P4291384892234791048

namespace A105081

/-- `-xor(xor(n, floor(n/2)), -1)` -/
def P4291384892234791048.Spec : Prop :=
  ∀ n, P4291384892234791048.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P12790536541669272584

`ceil((xor(n, 2*n)+1)/2)`
-/

namespace A105081.P12790536541669272584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * n) + 1 : ℚ) / 2⌉

end

end A105081.P12790536541669272584

namespace A105081

/-- `ceil((xor(n, 2*n)+1)/2)` -/
def P12790536541669272584.Spec : Prop :=
  ∀ n, P12790536541669272584.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P17673068202163708827

`round((xor(n, 2*n)+1)/2)`
-/

namespace A105081.P17673068202163708827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (2 * n) + 1 : ℚ) / 2)

end

end A105081.P17673068202163708827

namespace A105081

/-- `round((xor(n, 2*n)+1)/2)` -/
def P17673068202163708827.Spec : Prop :=
  ∀ n, P17673068202163708827.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P14009026411628846238

`-xor(n, -ceil((n+1)/2))`
-/

namespace A105081.P14009026411628846238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-⌈(n + 1 : ℚ) / 2⌉)

end

end A105081.P14009026411628846238

namespace A105081

/-- `-xor(n, -ceil((n+1)/2))` -/
def P14009026411628846238.Spec : Prop :=
  ∀ n, P14009026411628846238.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P4180508885934389659

`ceil(cosh(log(xor(n, 2*n+1))))`
-/

namespace A105081.P4180508885934389659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.xor n (2 * n + 1) : ℝ))⌉

end

end A105081.P4180508885934389659

namespace A105081

/-- `ceil(cosh(log(xor(n, 2*n+1))))` -/
def P4180508885934389659.Spec : Prop :=
  ∀ n, P4180508885934389659.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P3083315163397674555

`∑[gcd(2, n+1)]-and(n, 2*n+1)`
-/

namespace A105081.P3083315163397674555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land n (2 * n + 1) : ℤ)

end

end A105081.P3083315163397674555

namespace A105081

/-- `∑[gcd(2, n+1)]-and(n, 2*n+1)` -/
def P3083315163397674555.Spec : Prop :=
  ∀ n, P3083315163397674555.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P8951122081120828522

`∑[2/a(n-1)]-and(n, 2*n+1)` with `a(0)=1`
-/

namespace A105081.P8951122081120828522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land n (2 * n + 1) : ℚ)

end

end A105081.P8951122081120828522

namespace A105081

/-- `∑[2/a(n-1)]-and(n, 2*n+1)` -/
def P8951122081120828522.Spec : Prop :=
  ∀ n, P8951122081120828522.a n = (A105081 (n + 1) : ℚ)

end A105081

/-! ## A105081.P4152687177614870370

`A286548(n)+1+n`
-/

namespace A105081.P4152687177614870370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n + 1 + (n : ℤ)

end

end A105081.P4152687177614870370

namespace A105081

/-- `A286548(n)+1+n` -/
def P4152687177614870370.Spec : Prop :=
  ∀ n, P4152687177614870370.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P15024696517069735389

`floor(A048724(n)/2)+1`
-/

namespace A105081.P15024696517069735389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048724 n : ℚ) / 2⌋ + 1

end

end A105081.P15024696517069735389

namespace A105081

/-- `floor(A048724(n)/2)+1` -/
def P15024696517069735389.Spec : Prop :=
  ∀ n, P15024696517069735389.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P7000928470554680208

`A055975(n)+a(n-1)` with `a(0)=1`
-/

namespace A105081.P7000928470554680208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055975 n + a (n - 1)

end

end A105081.P7000928470554680208

namespace A105081

/-- `A055975(n)+a(n-1)` -/
def P7000928470554680208.Spec : Prop :=
  ∀ n, P7000928470554680208.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P2657993784986971532

`A063946(A233280(n))+1`
-/

namespace A105081.P2657993784986971532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A233280 n).toNat + 1

end

end A105081.P2657993784986971532

namespace A105081

/-- `A063946(A233280(n))+1` -/
def P2657993784986971532.Spec : Prop :=
  ∀ n, P2657993784986971532.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P16487466123142043579

`A057300(A300838(n))+1`
-/

namespace A105081.P16487466123142043579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A300838 n).toNat + 1

end

end A105081.P16487466123142043579

namespace A105081

/-- `A057300(A300838(n))+1` -/
def P16487466123142043579.Spec : Prop :=
  ∀ n, P16487466123142043579.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P4051207366178314214

`A302844(A163355(n))+1`
-/

namespace A105081.P4051207366178314214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 n).toNat + 1

end

end A105081.P4051207366178314214

namespace A105081

/-- `A302844(A163355(n))+1` -/
def P4051207366178314214.Spec : Prop :=
  ∀ n, P4051207366178314214.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P17848004114897979285

`A302846(A302843(n))+1`
-/

namespace A105081.P17848004114897979285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A302843 n).toNat + 1

end

end A105081.P17848004114897979285

namespace A105081

/-- `A302846(A302843(n))+1` -/
def P17848004114897979285.Spec : Prop :=
  ∀ n, P17848004114897979285.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P7117392964357376163

`A229763(n)+A008619(n)`
-/

namespace A105081.P7117392964357376163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + A008619 n

end

end A105081.P7117392964357376163

namespace A105081

/-- `A229763(n)+A008619(n)` -/
def P7117392964357376163.Spec : Prop :=
  ∀ n, P7117392964357376163.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P14372631138161100349

`A062383(n)-A279645(n)`
-/

namespace A105081.P14372631138161100349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - A279645 n

end

end A105081.P14372631138161100349

namespace A105081

/-- `A062383(n)-A279645(n)` -/
def P14372631138161100349.Spec : Prop :=
  ∀ n, P14372631138161100349.a n = A105081 (n + 1)

end A105081

/-! ## A105081.P9554233661499068543

`A038554(n)+A053644(n)+1`
-/

namespace A105081.P9554233661499068543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n + (A053644 n + 1)

end

end A105081.P9554233661499068543

namespace A105081

/-- `A038554(n)+A053644(n)+1` -/
def P9554233661499068543.Spec : Prop :=
  ∀ n, P9554233661499068543.a n = A105081 (n + 1)

end A105081

/-!
# A105082: Expansion of (5+4x)/(1-2x-x^2).

The programs for A105082, the canonical program `A105082.P2120761273137320325` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105082 has offset 0).

The definition of A105082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105082.P2120761273137320325

`2*A001333(n)+3*A048654(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A105082

/-- `2*A001333(n)+3*A048654(n)` -/
def P2120761273137320325.Spec : Prop :=
  ∀ n, P2120761273137320325.a n = A105082 n

theorem P2120761273137320325.correct : P2120761273137320325.Spec := by
  intro n
  simp only [A105082]

end A105082

/-! ## A105082.P7862908738750157725

`a(n-2)+2*a(n-1)` with `a(0)=5, a(1)=14`
-/

namespace A105082.P7862908738750157725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 14] fun n a =>
  a (n - 2) + 2 * a (n - 1)

end

end A105082.P7862908738750157725

namespace A105082

/-- `a(n-2)+2*a(n-1)` -/
def P7862908738750157725.Spec : Prop :=
  ∀ n, (P7862908738750157725.a n : ℤ) = A105082 n

end A105082

/-! ## A105082.P235793094017083464

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=5, a(1)=14`
-/

namespace A105082.P235793094017083464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 14] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A105082.P235793094017083464

namespace A105082

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P235793094017083464.Spec : Prop :=
  ∀ n, (P235793094017083464.a n : ℤ) = A105082 n

end A105082

/-! ## A105082.P9700699407743750068

`A221173(n+2)`
-/

namespace A105082.P9700699407743750068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 2)

end

end A105082.P9700699407743750068

namespace A105082

/-- `A221173(n+2)` -/
def P9700699407743750068.Spec : Prop :=
  ∀ n, P9700699407743750068.a n = A105082 n

end A105082

/-! ## A105082.P5378066185424181314

`A048772(n)+4`
-/

namespace A105082.P5378066185424181314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048772 n + 4

end

end A105082.P5378066185424181314

namespace A105082

/-- `A048772(n)+4` -/
def P5378066185424181314.Spec : Prop :=
  ∀ n, P5378066185424181314.a n = A105082 n

end A105082

/-! ## A105082.P8722262347159606245

`∑[A048696(n)]+4`
-/

namespace A105082.P8722262347159606245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A105082.P8722262347159606245

namespace A105082

/-- `∑[A048696(n)]+4` -/
def P8722262347159606245.Spec : Prop :=
  ∀ n, P8722262347159606245.a n = A105082 n

end A105082

/-! ## A105082.P11473508879113920960

`record[A221173(abs(2-n))]`
-/

namespace A105082.P11473508879113920960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105082.P11473508879113920960

namespace A105082

/-- `record[A221173(abs(2-n))]` -/
def P11473508879113920960.Spec : Prop :=
  ∀ n, P11473508879113920960.a n = A105082 n

end A105082

/-! ## A105082.P15860780102216562582

`A048655(n)+A048654(n+1)`
-/

namespace A105082.P15860780102216562582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + A048654 (n + 1)

end

end A105082.P15860780102216562582

namespace A105082

/-- `A048655(n)+A048654(n+1)` -/
def P15860780102216562582.Spec : Prop :=
  ∀ n, P15860780102216562582.a n = A105082 n

end A105082

/-! ## A105082.P416652926451628992

`A052542(n+2)+A048654(n)`
-/

namespace A105082.P416652926451628992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 2) + A048654 n

end

end A105082.P416652926451628992

namespace A105082

/-- `A052542(n+2)+A048654(n)` -/
def P416652926451628992.Spec : Prop :=
  ∀ n, P416652926451628992.a n = A105082 n

end A105082

/-! ## A105082.P2411767857493451343

`A135532(n+2)+A000129(n)`
-/

namespace A105082.P2411767857493451343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (n + 2) + A000129 n

end

end A105082.P2411767857493451343

namespace A105082

/-- `A135532(n+2)+A000129(n)` -/
def P2411767857493451343.Spec : Prop :=
  ∀ n, P2411767857493451343.a n = A105082 n

end A105082

/-! ## A105082.P5535629562141816409

`2*A277369(n)-A276849(n)`
-/

namespace A105082.P5535629562141816409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277369 n - A276849 n

end

end A105082.P5535629562141816409

namespace A105082

/-- `2*A277369(n)-A276849(n)` -/
def P5535629562141816409.Spec : Prop :=
  ∀ n, P5535629562141816409.a n = A105082 n

end A105082

/-! ## A105082.P15957928817576626382

`A069306(n+2)+Δ[A001333(n)]`
-/

namespace A105082.P15957928817576626382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 2) + (f1 (n + 1) - f1 n)

end

end A105082.P15957928817576626382

namespace A105082

/-- `A069306(n+2)+Δ[A001333(n)]` -/
def P15957928817576626382.Spec : Prop :=
  ∀ n, P15957928817576626382.a n = A105082 n

end A105082

/-! ## A105082.P13533804822280809143

`A215928(n+3)+Δ[A001333(n)]`
-/

namespace A105082.P13533804822280809143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 3) + (f1 (n + 1) - f1 n)

end

end A105082.P13533804822280809143

namespace A105082

/-- `A215928(n+3)+Δ[A001333(n)]` -/
def P13533804822280809143.Spec : Prop :=
  ∀ n, P13533804822280809143.a n = A105082 n

end A105082

/-! ## A105082.P987717263426685678

`A078343(n+2)+A002203(n+1)`
-/

namespace A105082.P987717263426685678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 2) + A002203 (n + 1)

end

end A105082.P987717263426685678

namespace A105082

/-- `A078343(n+2)+A002203(n+1)` -/
def P987717263426685678.Spec : Prop :=
  ∀ n, P987717263426685678.a n = A105082 n

end A105082

/-! ## A105082.P5720650490477827249

`A111955(n+2)+A051927(n+1)`
-/

namespace A105082.P5720650490477827249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 (n + 2) + A051927 (n + 1)

end

end A105082.P5720650490477827249

namespace A105082

/-- `A111955(n+2)+A051927(n+1)` -/
def P5720650490477827249.Spec : Prop :=
  ∀ n, P5720650490477827249.a n = A105082 n

end A105082

/-! ## A105082.P11137355173094929832

`A221172(n+2)+A001333(n+1)`
-/

namespace A105082.P11137355173094929832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 2) + A001333 (n + 1)

end

end A105082.P11137355173094929832

namespace A105082

/-- `A221172(n+2)+A001333(n+1)` -/
def P11137355173094929832.Spec : Prop :=
  ∀ n, P11137355173094929832.a n = A105082 n

end A105082

/-! ## A105082.P6226778272992806562

`A163271(n+1)+A069306(n+2)`
-/

namespace A105082.P6226778272992806562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A069306 (n + 2)

end

end A105082.P6226778272992806562

namespace A105082

/-- `A163271(n+1)+A069306(n+2)` -/
def P6226778272992806562.Spec : Prop :=
  ∀ n, P6226778272992806562.a n = A105082 n

end A105082

/-! ## A105082.P9894823093202904844

`A078057(n+2)-A078343(n+1)`
-/

namespace A105082.P9894823093202904844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 2) - A078343 (n + 1)

end

end A105082.P9894823093202904844

namespace A105082

/-- `A078057(n+2)-A078343(n+1)` -/
def P9894823093202904844.Spec : Prop :=
  ∀ n, P9894823093202904844.a n = A105082 n

end A105082

/-! ## A105082.P16842935673348391135

`A163271(n+1)+A000129(n+3)`
-/

namespace A105082.P16842935673348391135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A000129 (n + 3)

end

end A105082.P16842935673348391135

namespace A105082

/-- `A163271(n+1)+A000129(n+3)` -/
def P16842935673348391135.Spec : Prop :=
  ∀ n, P16842935673348391135.a n = A105082 n

end A105082

/-!
# A105083: Trajectory of 1 under the morphism 1 -> 12, 2 -> 3, 3 -> 1.

The programs for A105083, the canonical program `A105083.P6544863876120215470` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105083 has offset 0).

The definition of A105083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202340, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105083.P6544863876120215470

`A005374(n+1)-A005374(n)-2*(A202340(n+1)-2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A105083

/-- `A005374(n+1)-A005374(n)-2*(A202340(n+1)-2)` -/
def P6544863876120215470.Spec : Prop :=
  ∀ n, P6544863876120215470.a n = A105083 n

theorem P6544863876120215470.correct : P6544863876120215470.Spec := by
  intro n
  simp only [A105083]

end A105083

/-! ## A105083.P11141474057410962380

`A006336((2-A202340(n+1))*a(n-1)+1)` with `a(0)=1`
-/

namespace A105083.P11141474057410962380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006336 ((2 - A202340 (n + 1)) * a (n - 1) + 1).toNat

end

end A105083.P11141474057410962380

namespace A105083

/-- `A006336((2-A202340(n+1))*a(n-1)+1)` -/
def P11141474057410962380.Spec : Prop :=
  ∀ n, P11141474057410962380.a n = A105083 n

end A105083

/-! ## A105083.P93998450999953736

`A001511(a(n-1)+a(n-1)-A202340(n+1)+1)` with `a(0)=1`
-/

namespace A105083.P93998450999953736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001511 (a (n - 1) + (a (n - 1) - A202340 (n + 1)) + 1).toNat

end

end A105083.P93998450999953736

namespace A105083

/-- `A001511(a(n-1)+a(n-1)-A202340(n+1)+1)` -/
def P93998450999953736.Spec : Prop :=
  ∀ n, P93998450999953736.a n = A105083 n

end A105083

/-! ## A105083.P2927629666068909254

`n+2-A202342(A005374(A005374(n+1)))`
-/

namespace A105083.P2927629666068909254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A202342 (A005374 (A005374 (n + 1)).toNat).toNat

end

end A105083.P2927629666068909254

namespace A105083

/-- `n+2-A202342(A005374(A005374(n+1)))` -/
def P2927629666068909254.Spec : Prop :=
  ∀ n, P2927629666068909254.a n = A105083 n

end A105083

/-! ## A105083.P3598186609680728081

`A007318(A202340(n+1)+A006530(A315834(a(n-1))))` with `a(0)=1`
-/

namespace A105083.P3598186609680728081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (A202340 (n + 1) + A006530 (A315834 (a (n - 1)).toNat).toNat).toNat

end

end A105083.P3598186609680728081

namespace A105083

/-- `A007318(A202340(n+1)+A006530(A315834(a(n-1))))` -/
def P3598186609680728081.Spec : Prop :=
  ∀ n, P3598186609680728081.a n = A105083 n

end A105083

/-! ## A105083.P17626226982539503084

`A002828(Δ[A202342(n+1)]+1)`
-/

namespace A105083.P17626226982539503084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (f1 (n + 1) - f1 n + 1).toNat

end

end A105083.P17626226982539503084

namespace A105083

/-- `A002828(Δ[A202342(n+1)]+1)` -/
def P17626226982539503084.Spec : Prop :=
  ∀ n, P17626226982539503084.a n = A105083 n

end A105083

/-! ## A105083.P827884789131805970

`A001222(10-Δ[A202342(n+1)])`
-/

namespace A105083.P827884789131805970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A105083.P827884789131805970

namespace A105083

/-- `A001222(10-Δ[A202342(n+1)])` -/
def P827884789131805970.Spec : Prop :=
  ∀ n, P827884789131805970.a n = A105083 n

end A105083

/-! ## A105083.P16753114364788066217

`A288724(Δ[A288696(Δ[n²])])`
-/

namespace A105083.P16753114364788066217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288724 (f1 (n + 1) - f1 n).toNat

end

end A105083.P16753114364788066217

namespace A105083

/-- `A288724(Δ[A288696(Δ[n²])])` -/
def P16753114364788066217.Spec : Prop :=
  ∀ n, P16753114364788066217.a n = A105083 n

end A105083

/-! ## A105083.P16074655198605193280

`A078734(A048715(n+1))`
-/

namespace A105083.P16074655198605193280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A048715 (n + 1)).toNat

end

end A105083.P16074655198605193280

namespace A105083

/-- `A078734(A048715(n+1))` -/
def P16074655198605193280.Spec : Prop :=
  ∀ n, P16074655198605193280.a n = A105083 n

end A105083

/-! ## A105083.P17888391811059145639

`A007880(A048715(n))`
-/

namespace A105083.P17888391811059145639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007880 (A048715 n).toNat

end

end A105083.P17888391811059145639

namespace A105083

/-- `A007880(A048715(n))` -/
def P17888391811059145639.Spec : Prop :=
  ∀ n, P17888391811059145639.a n = A105083 n

end A105083

/-! ## A105083.P6528669351975296665

`A003324(A048715(n)+1)`
-/

namespace A105083.P6528669351975296665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A048715 n + 1).toNat

end

end A105083.P6528669351975296665

namespace A105083

/-- `A003324(A048715(n)+1)` -/
def P6528669351975296665.Spec : Prop :=
  ∀ n, P6528669351975296665.a n = A105083 n

end A105083

/-! ## A105083.P13084232369578984983

`(record[A003188(record[A003188(4*n)])]+1)%4`
-/

namespace A105083.P13084232369578984983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 4

end

end A105083.P13084232369578984983

namespace A105083

/-- `(record[A003188(record[A003188(4*n)])]+1)%4` -/
def P13084232369578984983.Spec : Prop :=
  ∀ n, P13084232369578984983.a n = A105083 n

end A105083

/-! ## A105083.P5313039778606978841

`A166238(n+1)%3+1`
-/

namespace A105083.P5313039778606978841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166238 (n + 1)) 3 + 1

end

end A105083.P5313039778606978841

namespace A105083

/-- `A166238(n+1)%3+1` -/
def P5313039778606978841.Spec : Prop :=
  ∀ n, P5313039778606978841.a n = A105083 n

end A105083

/-! ## A105083.P8377204516053961759

`A010882(A166238(n+1))`
-/

namespace A105083.P8377204516053961759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A166238 (n + 1)).toNat

end

end A105083.P8377204516053961759

namespace A105083

/-- `A010882(A166238(n+1))` -/
def P8377204516053961759.Spec : Prop :=
  ∀ n, P8377204516053961759.a n = A105083 n

end A105083

/-!
# A105084: Triangle read by rows: a[n, m] = a[n - 1, m] + binomial[n, m]; n <=m.

The programs for A105084, there is no canonical definition to state claims against.
-/

/-! ## A105084.P2964202237057309266

`and(1, char[∑[n]]+1)*A104712(n+2)+1`
-/

namespace A105084.P2964202237057309266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 ((if ∃ j, f1 j = n then 1 else 0) + 1) : ℤ) * A104712 (n + 2) + 1

end

end A105084.P2964202237057309266

/-! ## A105084.P1575805777971665559

`A104712(n+2)%A167883(n)+1`
-/

namespace A105084.P1575805777971665559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104712 (n + 2)) (A167883 n) + 1

end

end A105084.P1575805777971665559

/-! ## A105084.P3594295422253245009

`A153861(comp[∑[n]])%A019538(n+1)+1`
-/

namespace A105084.P3594295422253245009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153861 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A019538 (n + 1)) + 1

end

end A105084.P3594295422253245009

/-! ## A105084.P15635028162165701194

`ceil(ceil(A025668(n+1)/6)/6)*A104712(n+2)+1`
-/

namespace A105084.P15635028162165701194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A025668 (n + 1) : ℚ) / 6⌉ : ℚ) / 6⌉ * A104712 (n + 2) + 1

end

end A105084.P15635028162165701194

/-! ## A105084.P10611972940046308419

`A206735(A080036(A080036(n)))+1`
-/

namespace A105084.P10611972940046308419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A080036 (A080036 n).toNat).toNat + 1

end

end A105084.P10611972940046308419

/-! ## A105084.P16668918999033743945

`A167407(n)+A153861(A080036(n))`
-/

namespace A105084.P16668918999033743945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n + A153861 (A080036 n).toNat

end

end A105084.P16668918999033743945

/-! ## A105084.P17137809954787299969

`A263017(eq[A079071(n), A324640(n+1)])`
-/

namespace A105084.P17137809954787299969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105084.P17137809954787299969

/-! ## A105084.P8494392407571684394

`A184049(A080036(n))+A001221(A059268(n))`
-/

namespace A105084.P8494392407571684394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184049 (A080036 n).toNat + A001221 (A059268 n).toNat

end

end A105084.P8494392407571684394

/-!
# A105085: Write the terms of A102370 in base 2, read by upward-sloping diagonals and convert to base 10.

The programs for A105085, there is no canonical definition to state claims against.
-/

/-! ## A105085.P8721477305451256946

`4*A103185(floor((sqrt(5)+n)/2))+n+2`
-/

namespace A105085.P8721477305451256946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A103185 ⌊(Real.sqrt (5 : ℝ) + (n : ℝ)) / 2⌋.toNat + (n : ℤ) + 2

end

end A105085.P8721477305451256946

/-! ## A105085.P5962643337967948870

`A016825(A103185(floor(n/2)+1))+n`
-/

namespace A105085.P5962643337967948870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A103185 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat + (n : ℤ)

end

end A105085.P5962643337967948870

/-!
# A105086: Sum of the divisors of n minus the least nontrivial proper divisor of n.

The programs for A105086, there is no canonical definition to state claims against.
-/

/-! ## A105086.P14026249831439516861

`A326146(n+2)+2+n`
-/

namespace A105086.P14026249831439516861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (n + 2) + 2 + (n : ℤ)

end

end A105086.P14026249831439516861

/-! ## A105086.P17420154800361200588

`A000203(n+2)-A020639(n+2)`
-/

namespace A105086.P17420154800361200588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A020639 (n + 2)

end

end A105086.P17420154800361200588

/-! ## A105086.P11936218749369547919

`A000203(n+2)-(A057237(n+2)+1)`
-/

namespace A105086.P11936218749369547919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A057237 (n + 2) + 1)

end

end A105086.P11936218749369547919

/-! ## A105086.P14008042618893922810

`A074400(n+2)/2-A020639(n+2)`
-/

namespace A105086.P14008042618893922810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 2) : ℚ) / 2 - (A020639 (n + 2) : ℚ)

end

end A105086.P14008042618893922810

/-! ## A105086.P4530187660812576083

`A007947(n+2)+A326142(n+2)-A020639(n+2)`
-/

namespace A105086.P4530187660812576083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) + (A326142 (n + 2) - A020639 (n + 2))

end

end A105086.P4530187660812576083

/-! ## A105086.P268639858384574200

`A325817(n+2)+A325818(n+2)-A020639(n+2)`
-/

namespace A105086.P268639858384574200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 2) + (A325818 (n + 2) - A020639 (n + 2))

end

end A105086.P268639858384574200

/-! ## A105086.P10685621642646112647

`A325965(n+2)+A325966(n+2)-A020639(n+2)`
-/

namespace A105086.P10685621642646112647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 2) + (A325966 (n + 2) - A020639 (n + 2))

end

end A105086.P10685621642646112647

/-! ## A105086.P3134616548085965393

`A326065(n+2)+A326066(n+2)-A020639(n+2)`
-/

namespace A105086.P3134616548085965393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (n + 2) + (A326066 (n + 2) - A020639 (n + 2))

end

end A105086.P3134616548085965393

/-! ## A105086.P13844568942444708337

`A326135(n+2)+A326136(n+2)-A020639(n+2)`
-/

namespace A105086.P13844568942444708337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (n + 2) + (A326136 (n + 2) - A020639 (n + 2))

end

end A105086.P13844568942444708337

/-! ## A105086.P8480350389270055412

`A046666(n+2)+A325972(n+2)-A325970(n+2)`
-/

namespace A105086.P8480350389270055412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2) + (A325972 (n + 2) - A325970 (n + 2))

end

end A105086.P8480350389270055412

/-! ## A105086.P14755164230082561305

`A000203(n+2)-(A374197(n+2)+A374196(n+2))`
-/

namespace A105086.P14755164230082561305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A374197 (n + 2) + A374196 (n + 2))

end

end A105086.P14755164230082561305

/-! ## A105086.P11445741355287003001

`A000203(n+2)-A326136(n+2)/A326065(n+2)`
-/

namespace A105086.P11445741355287003001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) - (A326136 (n + 2) : ℚ) / (A326065 (n + 2) : ℚ)

end

end A105086.P11445741355287003001

/-! ## A105086.P17382512805722260512

`A046666(n+2)+A001065(n+2)`
-/

namespace A105086.P17382512805722260512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2) + A001065 (n + 2)

end

end A105086.P17382512805722260512

/-! ## A105086.P6231421125871849785

`abs(A143348(n+2))-A020639(n+2)`
-/

namespace A105086.P6231421125871849785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 2)| - A020639 (n + 2)

end

end A105086.P6231421125871849785

/-! ## A105086.P5865549152797810536

`Δ[A160664(n+1)]-A020639(n+2)`
-/

namespace A105086.P5865549152797810536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A020639 (n + 2)

end

end A105086.P5865549152797810536

/-! ## A105086.P12918600645892035735

`A088580(n+2)-(A020639(n+2)+1)`
-/

namespace A105086.P12918600645892035735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 2) - (A020639 (n + 2) + 1)

end

end A105086.P12918600645892035735

/-! ## A105086.P18084988715036223157

`A079667(n+2)+A117004(n+2)-A020639(n+2)`
-/

namespace A105086.P18084988715036223157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 2) + (A117004 (n + 2) - A020639 (n + 2))

end

end A105086.P18084988715036223157

/-! ## A105086.P1095253505692208610

`A117003(n+2)-(A079667(n+2)+A020639(n+2))`
-/

namespace A105086.P1095253505692208610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 2) - (A079667 (n + 2) + A020639 (n + 2))

end

end A105086.P1095253505692208610

/-! ## A105086.P7815389112317840845

`A092261(n+2)*A295294(n+2)-A020639(n+2)`
-/

namespace A105086.P7815389112317840845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 2) * A295294 (n + 2) - A020639 (n + 2)

end

end A105086.P7815389112317840845

/-!
# A105087: Absolute difference between the sums of the left and right diagonals of ordered 2 X 2 prime squares.

The programs for A105087, there is no canonical definition to state claims against.
-/

/-! ## A105087.P8299724968796780901

`abs(A110854(Δ[n²]))`
-/

namespace A105087.P8299724968796780901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A105087.P8299724968796780901

/-! ## A105087.P15230476895300339719

`abs(A261470(4*n+1))`
-/

namespace A105087.P15230476895300339719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261470 (4 * n + 1)|

end

end A105087.P15230476895300339719

/-! ## A105087.P14878549169440402529

`abs(A110854(2*n+1)%45)`
-/

namespace A105087.P14878549169440402529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A110854 (2 * n + 1)) 45|

end

end A105087.P14878549169440402529

/-! ## A105087.P383036025320479811

`A000196(A110854(2*n+1)²)`
-/

namespace A105087.P383036025320479811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A110854 (2 * n + 1) ^ 2).toNat

end

end A105087.P383036025320479811

/-! ## A105087.P11719656789197601108

`A053615(A261470(4*n+1)²)`
-/

namespace A105087.P11719656789197601108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A261470 (4 * n + 1) ^ 2).toNat

end

end A105087.P11719656789197601108

/-! ## A105087.P10550212139668678710

`gcd(A000038(n), A110854(2*n+1))`
-/

namespace A105087.P10550212139668678710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110854 (2 * n + 1))

end

end A105087.P10550212139668678710

/-! ## A105087.P16993494954531844945

`lcm(A000034(n), A110854(2*n+1))`
-/

namespace A105087.P16993494954531844945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A110854 (2 * n + 1))

end

end A105087.P16993494954531844945

/-! ## A105087.P7386411490204959890

`∑{d}[A110854(2*n+1), A000010(#)]`
-/

namespace A105087.P7386411490204959890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105087.P7386411490204959890

/-! ## A105087.P10402575889242900244

`∑{d}[A261470(4*n+1), A000010(#)]`
-/

namespace A105087.P10402575889242900244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105087.P10402575889242900244

/-! ## A105087.P683496689087582852

`abs(A110854(2*n+1))*A007318(C(2, n))`
-/

namespace A105087.P683496689087582852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110854 (2 * n + 1)| * A007318 (Nat.choose 2 n)

end

end A105087.P683496689087582852

/-!
# A105088: Sum of the sides of ordered 2 X 2 prime squares.

The programs for A105088, there is no canonical definition to state claims against.
-/

/-! ## A105088.P16963629399865175758

`2*A094207(n+1)`
-/

namespace A105088.P16963629399865175758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094207 (n + 1)

end

end A105088.P16963629399865175758

/-! ## A105088.P12210596495111872398

`Δ[2*A109722(2*n)]`
-/

namespace A105088.P12210596495111872398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109722 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105088.P12210596495111872398

/-! ## A105088.P17167279592073228326

`Δ[2*A007504(4*n)]`
-/

namespace A105088.P17167279592073228326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105088.P17167279592073228326

/-! ## A105088.P15813911697610755265

`Δ[2*A262392(4*n)]`
-/

namespace A105088.P15813911697610755265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262392 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105088.P15813911697610755265

/-! ## A105088.P4103790552082771580

`2*A034963(4*n+1)`
-/

namespace A105088.P4103790552082771580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034963 (4 * n + 1)

end

end A105088.P4103790552082771580

/-!
# A105089: Sum of the primes in ordered 3 X 3 prime squares.

The programs for A105089, the canonical program `A105089.P15788366358881064948` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105089 has offset 1).

The definition of A105089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105089.P6893753963837294984

`Δ[A007504(9*n)]`
-/

namespace A105089.P6893753963837294984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105089.P6893753963837294984

namespace A105089

/-- `Δ[A007504(9*n)]` -/
def P6893753963837294984.Spec : Prop :=
  ∀ n, P6893753963837294984.a n = A105089 (n + 1)

end A105089

/-! ## A105089.P1847274117804209458

`A127336(9*n+1)`
-/

namespace A105089.P1847274117804209458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (9 * n + 1)

end

end A105089.P1847274117804209458

namespace A105089

/-- `A127336(9*n+1)` -/
def P1847274117804209458.Spec : Prop :=
  ∀ n, P1847274117804209458.a n = A105089 (n + 1)

end A105089

/-! ## A105089.P12008392663511096383

`Δ[A014284(9*n+1)]`
-/

namespace A105089.P12008392663511096383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (9 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105089.P12008392663511096383

namespace A105089

/-- `Δ[A014284(9*n+1)]` -/
def P12008392663511096383.Spec : Prop :=
  ∀ n, P12008392663511096383.a n = A105089 (n + 1)

end A105089

/-! ## A105089.P9128804241589832028

`Δ[A175965(9*n+2)]`
-/

namespace A105089.P9128804241589832028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (9 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105089.P9128804241589832028

namespace A105089

/-- `Δ[A175965(9*n+2)]` -/
def P9128804241589832028.Spec : Prop :=
  ∀ n, P9128804241589832028.a n = A105089 (n + 1)

end A105089

/-! ## A105089.P4674067575708434911

`abs(Δ[A007504(A008591(n))])`
-/

namespace A105089.P4674067575708434911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A105089.P4674067575708434911

namespace A105089

/-- `abs(Δ[A007504(A008591(n))])` -/
def P4674067575708434911.Spec : Prop :=
  ∀ n, P4674067575708434911.a n = A105089 (n + 1)

end A105089

/-! ## A105089.P15788366358881064948

`Δ[A036439(A016777(3*n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105089

/-- `Δ[A036439(A016777(3*n))]` -/
def P15788366358881064948.Spec : Prop :=
  ∀ n, P15788366358881064948.a n = A105089 (n + 1)

theorem P15788366358881064948.correct : P15788366358881064948.Spec := by
  intro n
  simp only [A105089, Nat.add_sub_cancel]

end A105089

/-!
# A105092: Sum of the sides of ordered 2 prime sided prime triangles.

The programs for A105092, there is no canonical definition to state claims against.
-/

/-! ## A105092.P7382859032768977288

`2*A100500(n+1)`
-/

namespace A105092.P7382859032768977288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100500 (n + 1)

end

end A105092.P7382859032768977288

/-! ## A105092.P11217802951424890266

`Δ[2*A007504(3*n)]`
-/

namespace A105092.P11217802951424890266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105092.P11217802951424890266

/-! ## A105092.P3409563443237749485

`2*A034961(3*n+1)`
-/

namespace A105092.P3409563443237749485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034961 (3 * n + 1)

end

end A105092.P3409563443237749485

/-! ## A105092.P5021729354595542573

`Δ[2*A014284(3*n+1)]`
-/

namespace A105092.P5021729354595542573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014284 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105092.P5021729354595542573

/-! ## A105092.P9189915458879737950

`Δ[2*A036439(3*n+1)]`
-/

namespace A105092.P9189915458879737950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036439 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105092.P9189915458879737950

/-!
# A105093: Numbers n such that n = prime(k) + prime(k+3) = prime(k+1) + prime(k+2) for some k.

The programs for A105093, there is no canonical definition to state claims against.
-/

/-! ## A105093.P7269429692543607178

`2*A263674(n+1)`
-/

namespace A105093.P7269429692543607178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263674 (n + 1)

end

end A105093.P7269429692543607178

/-! ## A105093.P5266570128909932455

`A263674(A000027(n+1))+A263674(n+1)`
-/

namespace A105093.P5266570128909932455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (A000027 (n + 1)).toNat + A263674 (n + 1)

end

end A105093.P5266570128909932455

/-! ## A105093.P1361919629139374344

`A263674(A000007(n+1)+n+1)+A263674(n+1)`
-/

namespace A105093.P1361919629139374344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (A000007 (n + 1) + (n + 1 : ℤ)).toNat + A263674 (n + 1)

end

end A105093.P1361919629139374344

/-! ## A105093.P4514648763414427790

`A001043(A022884(n+1)+1)`
-/

namespace A105093.P4514648763414427790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A022884 (n + 1) + 1).toNat

end

end A105093.P4514648763414427790

/-! ## A105093.P5815962075074788917

`∩[A001043(n+1), A131019(n+1)]`
-/

namespace A105093.P5815962075074788917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105093.P5815962075074788917

/-! ## A105093.P3346541294948976436

`∩[A011974(n+1), A131019(n+1)]`
-/

namespace A105093.P3346541294948976436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105093.P3346541294948976436

/-! ## A105093.P4321125045217332262

`∩[A131019(n+1), A164653(n+1)]`
-/

namespace A105093.P4321125045217332262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105093.P4321125045217332262

/-! ## A105093.P11365930379058140717

`A263674(n+1)+A024675(A022884(n+1))`
-/

namespace A105093.P11365930379058140717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1) + A024675 (A022884 (n + 1)).toNat

end

end A105093.P11365930379058140717

/-! ## A105093.P7630336971785300334

`A022885(n+1)+A000040(A022884(n+1)+3)`
-/

namespace A105093.P7630336971785300334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1) + A000040 (A022884 (n + 1) + 3).toNat

end

end A105093.P7630336971785300334

/-! ## A105093.P6610596293070217947

`A373299(n+1)+A151800(A263674(n+1))`
-/

namespace A105093.P6610596293070217947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1) + A151800 (A263674 (n + 1)).toNat

end

end A105093.P6610596293070217947

/-! ## A105093.P13644335153783998976

`A004277(A263674(n+1))`
-/

namespace A105093.P13644335153783998976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A263674 (n + 1)).toNat

end

end A105093.P13644335153783998976

/-! ## A105093.P5730282595642785564

`A013634(A373299(n+1))`
-/

namespace A105093.P5730282595642785564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A373299 (n + 1)).toNat

end

end A105093.P5730282595642785564

/-!
# A105094: Expansion of 8 * (eta(q^2) / eta(q)^2)^8 in powers of q.

The programs for A105094, there is no canonical definition to state claims against.
-/

/-! ## A105094.P6265307734287463519

`8*A319553(n)`
-/

namespace A105094.P6265307734287463519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A319553 n

end

end A105094.P6265307734287463519

/-! ## A105094.P15933708761967463196

`abs(8*A004409(n))`
-/

namespace A105094.P15933708761967463196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * A004409 n|

end

end A105094.P15933708761967463196

/-! ## A105094.P1483689189085081655

`8*A004409(n)*A033999(n)`
-/

namespace A105094.P1483689189085081655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A004409 n * A033999 n)

end

end A105094.P1483689189085081655

/-! ## A105094.P1823919228796796561

`8*gcd(A000038(n), A004409(n))`
-/

namespace A105094.P1823919228796796561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Int.gcd (A000038 n) (A004409 n)

end

end A105094.P1823919228796796561

/-! ## A105094.P7761679658253212084

`abs(A034998(Δ[n²]))`
-/

namespace A105094.P7761679658253212084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A105094.P7761679658253212084

/-! ## A105094.P1564223396559777332

`record[-A034998(n+1)]`
-/

namespace A105094.P1564223396559777332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A034998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105094.P1564223396559777332

/-! ## A105094.P9670324089979326066

`lcm(2, A034998(2*n+1))`
-/

namespace A105094.P9670324089979326066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A034998 (2 * n + 1))

end

end A105094.P9670324089979326066

/-! ## A105094.P15919724440062919022

`A285125(2*(n+1))-A034998(2*n+1)`
-/

namespace A105094.P15919724440062919022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (2 * (n + 1)) - A034998 (2 * n + 1)

end

end A105094.P15919724440062919022

/-! ## A105094.P3948692192477535048

`1-(A234959(2*n+1)+A034998(2*n+1))`
-/

namespace A105094.P3948692192477535048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A234959 (2 * n + 1) + A034998 (2 * n + 1))

end

end A105094.P3948692192477535048

/-! ## A105094.P9556514336267175979

`2-(A034998(2*n+1)+A020639(2*(n+1)))`
-/

namespace A105094.P9556514336267175979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A034998 (2 * n + 1) + A020639 (2 * (n + 1)))

end

end A105094.P9556514336267175979

/-! ## A105094.P17530712717318260511

`lcm(A034998(A005843(n)+1), A234959(n+1))`
-/

namespace A105094.P17530712717318260511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034998 (A005843 n + 1).toNat) (A234959 (n + 1))

end

end A105094.P17530712717318260511

/-!
# A105095: Expansion of 8*eta(2*tau)^8/eta(tau)^16 + eta(tau/2)^8/eta(tau)^16.

The programs for A105095, there is no canonical definition to state claims against.
-/

/-! ## A105095.P7835420989435604247

`record[A034998(n)]`
-/

namespace A105095.P7835420989435604247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105095.P7835420989435604247

/-! ## A105095.P10801351888972998283

`A034998(2*n)`
-/

namespace A105095.P10801351888972998283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034998 (2 * n)

end

end A105095.P10801351888972998283

/-! ## A105095.P9202032689832937227

`abs(A034998(comp[Δ[n²]]))`
-/

namespace A105095.P9202032689832937227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034998 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A105095.P9202032689832937227

/-! ## A105095.P15135914504656220252

`lcm(A034998(A005843(n)), A234959(n+1))`
-/

namespace A105095.P15135914504656220252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034998 (A005843 n).toNat) (A234959 (n + 1))

end

end A105095.P15135914504656220252

/-! ## A105095.P10795752055535837356

`A285125(A000010(n+1))+A034998(A005843(n))`
-/

namespace A105095.P10795752055535837356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A000010 (n + 1)).toNat + A034998 (A005843 n).toNat

end

end A105095.P10795752055535837356

/-! ## A105095.P5436315346662092379

`A034998(A005843(n))/A351568(A020639(n+1))`
-/

namespace A105095.P5436315346662092379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034998 (A005843 n).toNat : ℚ) / (A351568 (A020639 (n + 1)).toNat : ℚ)

end

end A105095.P5436315346662092379

/-! ## A105095.P10214595298718872083

`A034998(A005843(n))/A007318(∑[n])`
-/

namespace A105095.P10214595298718872083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034998 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A105095.P10214595298718872083

/-! ## A105095.P16726065138644218403

`A034998(A005843(n))%A298767(n+1)`
-/

namespace A105095.P16726065138644218403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034998 (A005843 n).toNat) (A298767 (n + 1))

end

end A105095.P16726065138644218403

/-!
# A105096: Length of shortest Lucas chain for n.

The programs for A105096, there is no canonical definition to state claims against.
-/

/-! ## A105096.P771044338406473679

`A266143(A069530(3*n+1))+A064097(n+1)`
-/

namespace A105096.P771044338406473679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266143 (A069530 (3 * n + 1)).toNat + A064097 (n + 1)

end

end A105096.P771044338406473679

/-! ## A105096.P1295559541000767651

`A056239(A003964(n+1))%A248114(n+9)`
-/

namespace A105096.P1295559541000767651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A003964 (n + 1)).toNat) (A248114 (n + 9))

end

end A105096.P1295559541000767651

/-! ## A105096.P12970983542522499106

`A056239(A003964(n+1)%A248074(n+1))`
-/

namespace A105096.P12970983542522499106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A003964 (n + 1)) (A248074 (n + 1))).toNat

end

end A105096.P12970983542522499106

/-! ## A105096.P14667602432690507173

`A085974(A309326(2*n+3))+A064097(n+1)`
-/

namespace A105096.P14667602432690507173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A309326 (2 * n + 3)).toNat + A064097 (n + 1)

end

end A105096.P14667602432690507173

/-! ## A105096.P6443945076487027874

`A277608(n+1)+A063524(A006983(n+5))`
-/

namespace A105096.P6443945076487027874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277608 (n + 1) + A063524 (A006983 (n + 5)).toNat

end

end A105096.P6443945076487027874

/-!
# A105098: Minimum number of squares (repeated adjacent nonempty subwords) in a binary string of length n.

The programs for A105098, there is no canonical definition to state claims against.
-/

/-! ## A105098.P10161071623551499490

`floor(A056738(n+1)/(n+9))`
-/

namespace A105098.P10161071623551499490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056738 (n + 1) : ℚ) / (n + 9 : ℚ)⌋

end

end A105098.P10161071623551499490

/-! ## A105098.P4062023170275488997

`round(A175777(3*n)/(n+2)²)`
-/

namespace A105098.P4062023170275488997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175777 (3 * n) : ℚ) / ((n + 2) ^ 2 : ℚ))

end

end A105098.P4062023170275488997

/-! ## A105098.P6787682057667651387

`A135661(xor(2, A024513(n+1)))`
-/

namespace A105098.P6787682057667651387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (Int.xor 2 (A024513 (n + 1))).toNat

end

end A105098.P6787682057667651387

/-! ## A105098.P3859040785170880714

`floor(A034887(record[A316020(n)])/4)`
-/

namespace A105098.P3859040785170880714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 4⌋

end

end A105098.P3859040785170880714

/-! ## A105098.P9849866662069085100

`round(A017177(n)/A017164(2*(n+1)))`
-/

namespace A105098.P9849866662069085100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017177 n : ℚ) / (A017164 (2 * (n + 1)) : ℚ))

end

end A105098.P9849866662069085100

