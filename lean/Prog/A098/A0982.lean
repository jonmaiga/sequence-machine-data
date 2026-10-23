import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A098200: Number of distinct terms in iteration-list when cototient-function[=A051953] is iterated and the initial value is even number.

The programs for A098200, the canonical program `A098200.P7699923620318063745` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098200 has offset 1).

The definition of A098200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098200.P7699923620318063745

`A053475(2*(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098200

/-- `A053475(2*(n+1))` -/
def P7699923620318063745.Spec : Prop :=
  ∀ n, P7699923620318063745.a n = A098200 (n + 1)

theorem P7699923620318063745.correct : P7699923620318063745.Spec := by
  intro n
  simp only [A098200, Nat.add_sub_cancel]

end A098200

/-! ## A098200.P4469661576848776764

`A076640(4*(n+1))`
-/

namespace A098200.P4469661576848776764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (4 * (n + 1))

end

end A098200.P4469661576848776764

namespace A098200

/-- `A076640(4*(n+1))` -/
def P4469661576848776764.Spec : Prop :=
  ∀ n, P4469661576848776764.a n = A098200 (n + 1)

end A098200

/-! ## A098200.P7243047835346291383

`A071575(8*(n+1))`
-/

namespace A098200.P7243047835346291383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (8 * (n + 1))

end

end A098200.P7243047835346291383

namespace A098200

/-- `A071575(8*(n+1))` -/
def P7243047835346291383.Spec : Prop :=
  ∀ n, P7243047835346291383.a n = A098200 (n + 1)

end A098200

/-! ## A098200.P7299574847685845883

`A076640(n+2+n)+1`
-/

namespace A098200.P7299574847685845883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (n + 2 + n) + 1

end

end A098200.P7299574847685845883

namespace A098200

/-- `A076640(n+2+n)+1` -/
def P7299574847685845883.Spec : Prop :=
  ∀ n, P7299574847685845883.a n = A098200 (n + 1)

end A098200

/-! ## A098200.P1279573339295279559

`A071575(n+2+n)+2`
-/

namespace A098200.P1279573339295279559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (n + 2 + n) + 2

end

end A098200.P1279573339295279559

namespace A098200

/-- `A071575(n+2+n)+2` -/
def P1279573339295279559.Spec : Prop :=
  ∀ n, P1279573339295279559.a n = A098200 (n + 1)

end A098200

/-! ## A098200.P10002174821608516516

`A053475(n+2+n)%12`
-/

namespace A098200.P10002174821608516516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053475 (n + 2 + n)) 12

end

end A098200.P10002174821608516516

namespace A098200

/-- `A053475(n+2+n)%12` -/
def P10002174821608516516.Spec : Prop :=
  ∀ n, P10002174821608516516.a n = A098200 (n + 1)

end A098200

/-! ## A098200.P14808330866856846809

`a(n-A055034(n+1))+1` with `a(0)=3`
-/

namespace A098200.P14808330866856846809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a ((n : ℤ) - A055034 (n + 1)).toNat + 1

end

end A098200.P14808330866856846809

namespace A098200

/-- `a(n-A055034(n+1))+1` -/
def P14808330866856846809.Spec : Prop :=
  ∀ n, (P14808330866856846809.a n : ℤ) = A098200 (n + 1)

end A098200

/-! ## A098200.P500692282698771685

`a(n-A000010(2*(n+1))/2)+1` with `a(0)=3`
-/

namespace A098200.P500692282698771685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (A000010 (2 * (n + 1)) : ℚ) / 2)).toNat + 1

end

end A098200.P500692282698771685

namespace A098200

/-- `a(n-A000010(2*(n+1))/2)+1` -/
def P500692282698771685.Spec : Prop :=
  ∀ n, (P500692282698771685.a n : ℤ) = A098200 (n + 1)

end A098200

/-! ## A098200.P7403964084952721549

`A053475(A053196(n+1))+1`
-/

namespace A098200.P7403964084952721549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (A053196 (n + 1)).toNat + 1

end

end A098200.P7403964084952721549

namespace A098200

/-- `A053475(A053196(n+1))+1` -/
def P7403964084952721549.Spec : Prop :=
  ∀ n, P7403964084952721549.a n = A098200 (n + 1)

end A098200

/-! ## A098200.P9222148785410675189

`or(A000045(C(2, n+2)), A053475(n+2+n))`
-/

namespace A098200.P9222148785410675189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 (Nat.choose 2 (n + 2))) (A053475 (n + 2 + n))

end

end A098200.P9222148785410675189

namespace A098200

/-- `or(A000045(C(2, n+2)), A053475(n+2+n))` -/
def P9222148785410675189.Spec : Prop :=
  ∀ n, P9222148785410675189.a n = A098200 (n + 1)

end A098200

/-!
# A098201: Number of distinct terms in iteration-list when cototient-function[=A051953] is iterated and the initial value is odd number.

The programs for A098201, the canonical program `A098201.P3345256809965612835` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098201 has offset 1).

The definition of A098201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098201.P10425355864869289422

`A053475(Δ[n²])`
-/

namespace A098201.P10425355864869289422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098201.P10425355864869289422

namespace A098201

/-- `A053475(Δ[n²])` -/
def P10425355864869289422.Spec : Prop :=
  ∀ n, P10425355864869289422.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P8958817049158979153

`A076640(Δ[n²])+1`
-/

namespace A098201.P8958817049158979153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A098201.P8958817049158979153

namespace A098201

/-- `A076640(Δ[n²])+1` -/
def P8958817049158979153.Spec : Prop :=
  ∀ n, P8958817049158979153.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P4308843397365316508

`A071575(Δ[n²])+2`
-/

namespace A098201.P4308843397365316508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A098201.P4308843397365316508

namespace A098201

/-- `A071575(Δ[n²])+2` -/
def P4308843397365316508.Spec : Prop :=
  ∀ n, P4308843397365316508.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P832408666867028572

`dr(A053475(comp[2*n]))`
-/

namespace A098201.P832408666867028572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A053475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A098201.P832408666867028572

namespace A098201

/-- `dr(A053475(comp[2*n]))` -/
def P832408666867028572.Spec : Prop :=
  ∀ n, (P832408666867028572.a n : ℤ) = A098201 (n + 1)

end A098201

/-! ## A098201.P2693309393574848744

`A053475(2*n+1)%8`
-/

namespace A098201.P2693309393574848744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053475 (2 * n + 1)) 8

end

end A098201.P2693309393574848744

namespace A098201

/-- `A053475(2*n+1)%8` -/
def P2693309393574848744.Spec : Prop :=
  ∀ n, P2693309393574848744.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P3345256809965612835

`a(A082023(2*n+1))+1` with `a(0)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098201

/-- `a(A082023(2*n+1))+1` -/
def P3345256809965612835.Spec : Prop :=
  ∀ n, (P3345256809965612835.a n : ℤ) = A098201 (n + 1)

theorem P3345256809965612835.correct : P3345256809965612835.Spec := by
  intro n
  simp only [A098201, Nat.add_sub_cancel]

end A098201

/-! ## A098201.P11213207258229611181

`a(n-A000010(Δ[n²])/2)+1` with `a(0)=2`
-/

namespace A098201.P11213207258229611181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat + 1

end

end A098201.P11213207258229611181

namespace A098201

/-- `a(n-A000010(Δ[n²])/2)+1` -/
def P11213207258229611181.Spec : Prop :=
  ∀ n, (P11213207258229611181.a n : ℤ) = A098201 (n + 1)

end A098201

/-! ## A098201.P17895542177901939819

`A076640(A053194(n+1))`
-/

namespace A098201.P17895542177901939819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (A053194 (n + 1)).toNat

end

end A098201.P17895542177901939819

namespace A098201

/-- `A076640(A053194(n+1))` -/
def P17895542177901939819.Spec : Prop :=
  ∀ n, P17895542177901939819.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P18200050179710450039

`A005496(A076640(2*n+1))`
-/

namespace A098201.P18200050179710450039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A076640 (2 * n + 1)).toNat

end

end A098201.P18200050179710450039

namespace A098201

/-- `A005496(A076640(2*n+1))` -/
def P18200050179710450039.Spec : Prop :=
  ∀ n, P18200050179710450039.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P8420094698143774393

`A030545(A071575(2*n+1))`
-/

namespace A098201.P8420094698143774393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A071575 (2 * n + 1)).toNat

end

end A098201.P8420094698143774393

namespace A098201

/-- `A030545(A071575(2*n+1))` -/
def P8420094698143774393.Spec : Prop :=
  ∀ n, P8420094698143774393.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P11648236228208568010

`A053475(A063507(2*n+1))-1`
-/

namespace A098201.P11648236228208568010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (A063507 (2 * n + 1)).toNat - 1

end

end A098201.P11648236228208568010

namespace A098201

/-- `A053475(A063507(2*n+1))-1` -/
def P11648236228208568010.Spec : Prop :=
  ∀ n, P11648236228208568010.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P2570054346107968707

`A136040(A071575(2*n+1)+2)`
-/

namespace A098201.P2570054346107968707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136040 (A071575 (2 * n + 1) + 2).toNat

end

end A098201.P2570054346107968707

namespace A098201

/-- `A136040(A071575(2*n+1)+2)` -/
def P2570054346107968707.Spec : Prop :=
  ∀ n, P2570054346107968707.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P13467677490953685372

`A316388(2*A053475(2*n+1))`
-/

namespace A098201.P13467677490953685372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316388 (2 * A053475 (2 * n + 1)).toNat

end

end A098201.P13467677490953685372

namespace A098201

/-- `A316388(2*A053475(2*n+1))` -/
def P13467677490953685372.Spec : Prop :=
  ∀ n, P13467677490953685372.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P1726200365010308777

`A001222(2^A053475(2*n+1))`
-/

namespace A098201.P1726200365010308777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A053475 (2 * n + 1) : ℤ))).toNat

end

end A098201.P1726200365010308777

namespace A098201

/-- `A001222(2^A053475(2*n+1))` -/
def P1726200365010308777.Spec : Prop :=
  ∀ n, P1726200365010308777.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P8522403166025183910

`A171524(a(A082023(2*n+1)))` with `a(0)=2`
-/

namespace A098201.P8522403166025183910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A171524 (a (A082023 (2 * n + 1)).toNat).toNat

end

end A098201.P8522403166025183910

namespace A098201

/-- `A171524(a(A082023(2*n+1)))` -/
def P8522403166025183910.Spec : Prop :=
  ∀ n, P8522403166025183910.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P4493096103960211842

`filter[A053475(2*n+1), A070887(#)]`
-/

namespace A098201.P4493096103960211842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A098201.P4493096103960211842

namespace A098201

/-- `filter[A053475(2*n+1), A070887(#)]` -/
def P4493096103960211842.Spec : Prop :=
  ∀ n, P4493096103960211842.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P7127125832354642075

`filter[A053475(2*n+1), A071023(#)]`
-/

namespace A098201.P7127125832354642075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A098201.P7127125832354642075

namespace A098201

/-- `filter[A053475(2*n+1), A071023(#)]` -/
def P7127125832354642075.Spec : Prop :=
  ∀ n, P7127125832354642075.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P7243300249491964765

`filter[A053475(2*n+1), A074481(#)]`
-/

namespace A098201.P7243300249491964765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A074481 (f1 j).toNat = 1) n)

end

end A098201.P7243300249491964765

namespace A098201

/-- `filter[A053475(2*n+1), A074481(#)]` -/
def P7243300249491964765.Spec : Prop :=
  ∀ n, P7243300249491964765.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P429286801424267734

`filter[A053475(2*n+1), A075743(#)]`
-/

namespace A098201.P429286801424267734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075743 (f1 j).toNat = 1) n)

end

end A098201.P429286801424267734

namespace A098201

/-- `filter[A053475(2*n+1), A075743(#)]` -/
def P429286801424267734.Spec : Prop :=
  ∀ n, P429286801424267734.a n = A098201 (n + 1)

end A098201

/-! ## A098201.P6200711323364463856

`filter[A053475(2*n+1), A079421(#)]`
-/

namespace A098201.P6200711323364463856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A098201.P6200711323364463856

namespace A098201

/-- `filter[A053475(2*n+1), A079421(#)]` -/
def P6200711323364463856.Spec : Prop :=
  ∀ n, P6200711323364463856.a n = A098201 (n + 1)

end A098201

/-!
# A098202: a(n) is the length of the iteration trajectory when the cototient function (A051953) is applied to the n-th primorial number (A002110(n)).

The programs for A098202, there is no canonical definition to state claims against.
-/

/-! ## A098202.P4145501686354892666

`A053145(n+1)+1`
-/

namespace A098202.P4145501686354892666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (n + 1) + 1

end

end A098202.P4145501686354892666

/-! ## A098202.P15576730042543738659

`A020725(A053145(n+1))`
-/

namespace A098202.P15576730042543738659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053145 (n + 1)).toNat

end

end A098202.P15576730042543738659

/-! ## A098202.P17103856649443308990

`A053146(n+1)+A053148(n+1)+1`
-/

namespace A098202.P17103856649443308990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053146 (n + 1) + (A053148 (n + 1) + 1)

end

end A098202.P17103856649443308990

/-! ## A098202.P14815792812411409212

`A053146(n+1)+log2(A053147(n+1))+1`
-/

namespace A098202.P14815792812411409212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053146 (n + 1) : ℝ) + (Real.logb 2 (A053147 (n + 1) : ℝ) + 1)

end

end A098202.P14815792812411409212

/-! ## A098202.P6270306876655756189

`A053146(n+1)+A020725(A053148(n+1))`
-/

namespace A098202.P6270306876655756189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053146 (n + 1) + A020725 (A053148 (n + 1)).toNat

end

end A098202.P6270306876655756189

/-!
# A098203: Euler totient function phi values of multiperfect numbers.

The programs for A098203, there is no canonical definition to state claims against.
-/

/-! ## A098203.P10921389512913982299

`A000010(A007691(n+1))`
-/

namespace A098203.P10921389512913982299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007691 (n + 1)).toNat

end

end A098203.P10921389512913982299

/-! ## A098203.P13999050881001865250

`A000010(A089748(n+1))`
-/

namespace A098203.P13999050881001865250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A089748 (n + 1)).toNat

end

end A098203.P13999050881001865250

/-! ## A098203.P10951016623208800957

`A000010(A348031(n+1))`
-/

namespace A098203.P10951016623208800957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A348031 (n + 1)).toNat

end

end A098203.P10951016623208800957

/-! ## A098203.P10792301679403969609

`A300721(A194771(n+1))`
-/

namespace A098203.P10792301679403969609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (A194771 (n + 1)).toNat

end

end A098203.P10792301679403969609

/-! ## A098203.P2256613564479141816

`A000010(A194771(n+1)/2)`
-/

namespace A098203.P2256613564479141816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A194771 (n + 1) : ℚ) / 2)).toNat

end

end A098203.P2256613564479141816

/-!
# A098204: Greatest common divisor of multiperfect numbers and their totient.

The programs for A098204, there is no canonical definition to state claims against.
-/

/-! ## A098204.P13088913219289235177

`gcd(A007691(n+1), A000010(A007691(n+1)))`
-/

namespace A098204.P13088913219289235177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007691 (n + 1)) (A000010 (A007691 (n + 1)).toNat)

end

end A098204.P13088913219289235177

/-! ## A098204.P5668750559602703457

`gcd(A007691(n+1), A098203(n+1))`
-/

namespace A098204.P5668750559602703457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007691 (n + 1)) (A098203 (n + 1))

end

end A098204.P5668750559602703457

/-! ## A098204.P16210264519543599523

`A074389(A007691(n+1))`
-/

namespace A098204.P16210264519543599523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074389 (A007691 (n + 1)).toNat

end

end A098204.P16210264519543599523

/-! ## A098204.P15668216500676949561

`gcd(A000010(A089748(n+1)), A348031(n+1))`
-/

namespace A098204.P15668216500676949561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A089748 (n + 1)).toNat) (A348031 (n + 1))

end

end A098204.P15668216500676949561

/-!
# A098205: A first order iteration: n-th term is obtained from (n-1)-th by adding n-th prime and then multiplying by the n-th prime; initial value is 0.

The programs for A098205, there is no canonical definition to state claims against.
-/

/-! ## A098205.P3251704047594439973

`A098206(n+1)-A070826(n+1)`
-/

namespace A098205.P3251704047594439973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098206 (n + 1) - A070826 (n + 1)

end

end A098205.P3251704047594439973

/-! ## A098205.P2801137738739943976

`(A000040(n+1)+a(n-1))*A000040(n+1)` with `a(0)=0`
-/

namespace A098205.P2801137738739943976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (A000040 (n + 1) + a (n - 1)) * A000040 (n + 1)

end

end A098205.P2801137738739943976

/-! ## A098205.P8858492224297704610

`(a(n-1)+A006093(n+1)+1)*p?[A064429(n)]` with `a(0)=0`
-/

namespace A098205.P8858492224297704610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (A006093 (n + 1) + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098205.P8858492224297704610

/-! ## A098205.P7769926250569283276

`(a(n-1)+A001748(n+1)/3)*A008578(n+2)` with `a(0)=0`
-/

namespace A098205.P7769926250569283276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (A001748 (n + 1) : ℚ) / 3) * (A008578 (n + 2) : ℚ)

end

end A098205.P7769926250569283276

/-! ## A098205.P8401015706402330755

`(a(n-1)+A055670(n+1)-1)*(A055670(n+1)-1)` with `a(0)=0`
-/

namespace A098205.P8401015706402330755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (A055670 (n + 1) - 1)) * (A055670 (n + 1) - 1)

end

end A098205.P8401015706402330755

/-!
# A098206: A first order iteration: n-th term is obtained from (n-1)-th by adding n-th prime and then multiplying by the n-th prime; initial value is 1.

The programs for A098206, there is no canonical definition to state claims against.
-/

/-! ## A098206.P14099249374717989047

`(A040976(n+1)+2)*(p?[comp[n²]]+a(n-1))` with `a(0)=1`
-/

namespace A098206.P14099249374717989047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A040976 (n + 1) + 2) * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + a (n - 1))

end

end A098206.P14099249374717989047

/-! ## A098206.P6680193607212533700

`(A000040(n+1)+a(n-1))*A000040(n+1)` with `a(0)=1`
-/

namespace A098206.P6680193607212533700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000040 (n + 1) + a (n - 1)) * A000040 (n + 1)

end

end A098206.P6680193607212533700

/-! ## A098206.P18375450770555164970

`(A008578(n+2)+a(n-1))*A008578(n+2)` with `a(0)=1`
-/

namespace A098206.P18375450770555164970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A008578 (n + 2) + a (n - 1)) * A008578 (n + 2)

end

end A098206.P18375450770555164970

/-! ## A098206.P14791071062114970093

`(a(n-1)+A006093(n+1)+1)*(A006093(n+1)+1)` with `a(0)=1`
-/

namespace A098206.P14791071062114970093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (A006093 (n + 1) + 1)) * (A006093 (n + 1) + 1)

end

end A098206.P14791071062114970093

/-! ## A098206.P4593865022610743449

`(a(n-1)+A100484(n+1)/2)*A100484(n+1)/2` with `a(0)=1`
-/

namespace A098206.P4593865022610743449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (A100484 (n + 1) : ℚ) / 2) * ((A100484 (n + 1) : ℚ) / 2)

end

end A098206.P4593865022610743449

/-! ## A098206.P5922383731829439353

`(a(n-1)+A001747(n+2)/2)*A001747(n+2)/2` with `a(0)=1`
-/

namespace A098206.P5922383731829439353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (A001747 (n + 2) : ℚ) / 2) * ((A001747 (n + 2) : ℚ) / 2)

end

end A098206.P5922383731829439353

/-!
# A098207: a(n) is the square of near-repdigit number A033175(n).

The programs for A098207, the canonical program `A098207.P13599097460298549418` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098207 has offset 0).

The definition of A098207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098207.P13599097460298549418

`A033175(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098207

/-- `A033175(n)²` -/
def P13599097460298549418.Spec : Prop :=
  ∀ n, P13599097460298549418.a n = A098207 n

theorem P13599097460298549418.correct : P13599097460298549418.Spec := by
  intro n
  simp only [A098207]

end A098207

/-! ## A098207.P7761323820404396130

`(2-∑[3*10^n])²`
-/

namespace A098207.P7761323820404396130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A098207.P7761323820404396130

namespace A098207

/-- `(2-∑[3*10^n])²` -/
def P7761323820404396130.Spec : Prop :=
  ∀ n, P7761323820404396130.a n = A098207 n

end A098207

/-! ## A098207.P12478197964321268856

`(2-A002277(n+1))^2`
-/

namespace A098207.P12478197964321268856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002277 (n + 1)) ^ 2

end

end A098207.P12478197964321268856

namespace A098207

/-- `(2-A002277(n+1))^2` -/
def P12478197964321268856.Spec : Prop :=
  ∀ n, P12478197964321268856.a n = A098207 n

end A098207

/-! ## A098207.P12153259470741443629

`(∑[3*10^n]-2)^A000005(A002476(n+1))`
-/

namespace A098207.P12153259470741443629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 10 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A098207.P12153259470741443629

namespace A098207

/-- `(∑[3*10^n]-2)^A000005(A002476(n+1))` -/
def P12153259470741443629.Spec : Prop :=
  ∀ n, P12153259470741443629.a n = (A098207 n : ℚ)

end A098207

/-! ## A098207.P16369564615522944676

`(∑[3*10^n]-2)^A000005(A038903(n+1))`
-/

namespace A098207.P16369564615522944676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 10 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) ^ (A000005 (A038903 (n + 1)).toNat : ℤ)

end

end A098207.P16369564615522944676

namespace A098207

/-- `(∑[3*10^n]-2)^A000005(A038903(n+1))` -/
def P16369564615522944676.Spec : Prop :=
  ∀ n, P16369564615522944676.a n = (A098207 n : ℚ)

end A098207

/-!
# A098208: 

The programs for A098208, there is no canonical definition to state claims against.
-/

/-! ## A098208.P13789412318011116198

`(∑[3*10^n]-2)^4`
-/

namespace A098208.P13789412318011116198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) ^ 4

end

end A098208.P13789412318011116198

/-! ## A098208.P5004600371063649599

`A098207(n)²`
-/

namespace A098208.P5004600371063649599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098207 n ^ 2

end

end A098208.P5004600371063649599

/-! ## A098208.P4603401793982154582

`A033175(n)²²`
-/

namespace A098208.P4603401793982154582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033175 n ^ 2) ^ 2

end

end A098208.P4603401793982154582

/-! ## A098208.P16034860624876011689

`(2-A002277(n+1))²²`
-/

namespace A098208.P16034860624876011689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A002277 (n + 1)) ^ 2) ^ 2

end

end A098208.P16034860624876011689

/-! ## A098208.P1606726142295438033

`(3-A093137(n+1))²²`
-/

namespace A098208.P1606726142295438033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A093137 (n + 1)) ^ 2) ^ 2

end

end A098208.P1606726142295438033

/-!
# A098209: a(n) = A067275(n+1)^2 - 1.

The programs for A098209, the canonical program `A098209.P11544261485942075249` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098209 has offset 0).

The definition of A098209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098209.P11544261485942075249

`A067275(n+1)²-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098209

/-- `A067275(n+1)²-1` -/
def P11544261485942075249.Spec : Prop :=
  ∀ n, P11544261485942075249.a n = A098209 n

theorem P11544261485942075249.correct : P11544261485942075249.Spec := by
  intro n
  simp only [A098209]

end A098209

/-! ## A098209.P11062921389729585570

`A002280(n)*A073555(n+1)`
-/

namespace A098209.P11062921389729585570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n * A073555 (n + 1)

end

end A098209.P11062921389729585570

namespace A098209

/-- `A002280(n)*A073555(n+1)` -/
def P11062921389729585570.Spec : Prop :=
  ∀ n, P11062921389729585570.a n = A098209 n

end A098209

/-! ## A098209.P2337245072165478967

`4/9*(10^n*(1+10^n)-2)`
-/

namespace A098209.P2337245072165478967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 9 * ((10 ^ n * (1 + 10 ^ n) : ℤ) - 2 : ℚ)

end

end A098209.P2337245072165478967

namespace A098209

/-- `4/9*(10^n*(1+10^n)-2)` -/
def P2337245072165478967.Spec : Prop :=
  ∀ n, P2337245072165478967.a n = (A098209 n : ℚ)

end A098209

/-! ## A098209.P14529270997207344688

`A237424(∑[n+1])²-1`
-/

namespace A098209.P14529270997207344688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A098209.P14529270997207344688

namespace A098209

/-- `A237424(∑[n+1])²-1` -/
def P14529270997207344688.Spec : Prop :=
  ∀ n, P14529270997207344688.a n = A098209 n

end A098209

/-! ## A098209.P15870825561656797735

`A002278(2*n)+A002278(n)`
-/

namespace A098209.P15870825561656797735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (2 * n) + A002278 n

end

end A098209.P15870825561656797735

namespace A098209

/-- `A002278(2*n)+A002278(n)` -/
def P15870825561656797735.Spec : Prop :=
  ∀ n, P15870825561656797735.a n = A098209 n

end A098209

/-!
# A098210: a(n) = -1 + A093137(n)^2.

The programs for A098210, the canonical program `A098210.P7731116327582269962` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098210 has offset 0).

The definition of A098210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1+A093137(n)²` (program `A098210.P7731116327582269962`, by `A098210.P7731116327582269962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098210.P11882682197444761551

`1/9*(10^n-1)*(5+10^n)`
-/

namespace A098210.P11882682197444761551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * ((10 ^ n : ℤ) - 1 : ℚ) * (5 + 10 ^ n : ℚ)

end

end A098210.P11882682197444761551

namespace A098210

/-- `1/9*(10^n-1)*(5+10^n)` -/
def P11882682197444761551.Spec : Prop :=
  ∀ n, P11882682197444761551.a n = (A098210 n : ℚ)

end A098210

/-! ## A098210.P7731116327582269962

`-1+A093137(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098210

/-- `-1+A093137(n)²` -/
def P7731116327582269962.Spec : Prop :=
  ∀ n, P7731116327582269962.a n = A098210 n

theorem P7731116327582269962.correct : P7731116327582269962.Spec := by
  intro n
  simp only [A098210]

end A098210

/-! ## A098210.P8140918636638391547

`A102807(n)-1`
-/

namespace A098210.P8140918636638391547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102807 n - 1

end

end A098210.P8140918636638391547

namespace A098210

/-- `A102807(n)-1` -/
def P8140918636638391547.Spec : Prop :=
  ∀ n, P8140918636638391547.a n = A098210 n

end A098210

/-! ## A098210.P6587698037819328706

`A075412(n)+A002280(n)`
-/

namespace A098210.P6587698037819328706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n + A002280 n

end

end A098210.P6587698037819328706

namespace A098210

/-- `A075412(n)+A002280(n)` -/
def P6587698037819328706.Spec : Prop :=
  ∀ n, P6587698037819328706.a n = A098210 n

end A098210

/-! ## A098210.P5468133721195116877

`A181718(n)+A002277(n)`
-/

namespace A098210.P5468133721195116877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181718 n + A002277 n

end

end A098210.P5468133721195116877

namespace A098210

/-- `A181718(n)+A002277(n)` -/
def P5468133721195116877.Spec : Prop :=
  ∀ n, P5468133721195116877.a n = A098210 n

end A098210

/-! ## A098210.P1457160928809888809

`A002280(n)+A002277(n)²`
-/

namespace A098210.P1457160928809888809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n + A002277 n ^ 2

end

end A098210.P1457160928809888809

namespace A098210

/-- `A002280(n)+A002277(n)²` -/
def P1457160928809888809.Spec : Prop :=
  ∀ n, P1457160928809888809.a n = A098210 n

end A098210

/-! ## A098210.P2368562572449269816

`A002278(n)+A002275(2*n)`
-/

namespace A098210.P2368562572449269816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + A002275 (2 * n)

end

end A098210.P2368562572449269816

namespace A098210

/-- `A002278(n)+A002275(2*n)` -/
def P2368562572449269816.Spec : Prop :=
  ∀ n, P2368562572449269816.a n = A098210 n

end A098210

/-! ## A098210.P3947635038858224820

`A002276(n)+A099814(n)+A002276(n)`
-/

namespace A098210.P3947635038858224820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n + (A099814 n + A002276 n)

end

end A098210.P3947635038858224820

namespace A098210

/-- `A002276(n)+A099814(n)+A002276(n)` -/
def P3947635038858224820.Spec : Prop :=
  ∀ n, P3947635038858224820.a n = A098210 n

end A098210

/-! ## A098210.P6804127363281315746

`A002281(n)+A099814(n)-A002277(n)`
-/

namespace A098210.P6804127363281315746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + (A099814 n - A002277 n)

end

end A098210.P6804127363281315746

namespace A098210

/-- `A002281(n)+A099814(n)-A002277(n)` -/
def P6804127363281315746.Spec : Prop :=
  ∀ n, P6804127363281315746.a n = A098210 n

end A098210

/-! ## A098210.P8882082247686943260

`A002277(n)+A002277(n)*A093137(n)`
-/

namespace A098210.P8882082247686943260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n + A002277 n * A093137 n

end

end A098210.P8882082247686943260

namespace A098210

/-- `A002277(n)+A002277(n)*A093137(n)` -/
def P8882082247686943260.Spec : Prop :=
  ∀ n, P8882082247686943260.a n = A098210 n

end A098210

/-!
# A098211: Start with the first n, which means: "Prolong the sequence with n digits, all having their parity opposite to that of n". Then read and obey the second n, then the third n, etc. The digits produced by the rule are concatenated so to build the slowest increasing sequence.

The programs for A098211, there is no canonical definition to state claims against.
-/

/-! ## A098211.P16396775222493252206

`∑[A050493(A152431(n+1)!)]`
-/

namespace A098211.P16396775222493252206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050493 (Nat.factorial (A152431 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098211.P16396775222493252206

/-! ## A098211.P13292151203837459847

`A318962(A355734(2*n+5))+A002229(n+1)`
-/

namespace A098211.P13292151203837459847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 (A355734 (2 * n + 5)).toNat + A002229 (n + 1)

end

end A098211.P13292151203837459847

/-! ## A098211.P16751817670223257575

`A318962(A355734(2*n+5))+A046145(A002230(n+1))`
-/

namespace A098211.P16751817670223257575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 (A355734 (2 * n + 5)).toNat + A046145 (A002230 (n + 1)).toNat

end

end A098211.P16751817670223257575

/-!
# A098212: Expansion of (5-x^2)/((1+x)*(1-6*x+x^2)).

The programs for A098212, the canonical program `A098212.P17312895477303926178` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098212 has offset 0).

The definition of A098212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-x^2)/(1-5x-5x^2+x^3))` (program `A098212.P17312895477303926178`, by `A098212.P17312895477303926178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098212.P17312895477303926178

`ogf((5-x^2)/(1-5x-5x^2+x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098212

/-- `ogf((5-x^2)/(1-5x-5x^2+x^3))` -/
def P17312895477303926178.Spec : Prop :=
  ∀ n, P17312895477303926178.a n = A098212 n

theorem P17312895477303926178.correct : P17312895477303926178.Spec := by
  intro n
  simp only [A098212]

end A098212

/-! ## A098212.P17007929119237847927

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=5, a(1)=25, a(2)=149`
-/

namespace A098212.P17007929119237847927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 25, 149] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - a (n - 3)

end

end A098212.P17007929119237847927

namespace A098212

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P17007929119237847927.Spec : Prop :=
  ∀ n, P17007929119237847927.a n = A098212 n

end A098212

/-! ## A098212.P15260947916517275282

`A001541(n+1)+2*A079291(n+1)`
-/

namespace A098212.P15260947916517275282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) + 2 * A079291 (n + 1)

end

end A098212.P15260947916517275282

namespace A098212

/-- `A001541(n+1)+2*A079291(n+1)` -/
def P15260947916517275282.Spec : Prop :=
  ∀ n, P15260947916517275282.a n = A098212 n

end A098212

/-! ## A098212.P8433477736703463903

`4*A079291(n+1)+A090390(n+1)`
-/

namespace A098212.P8433477736703463903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A079291 (n + 1) + A090390 (n + 1)

end

end A098212.P8433477736703463903

namespace A098212

/-- `4*A079291(n+1)+A090390(n+1)` -/
def P8433477736703463903.Spec : Prop :=
  ∀ n, P8433477736703463903.a n = A098212 n

end A098212

/-! ## A098212.P16304785401941803799

`4*A000129(n+1)²+A001333(n+1)²`
-/

namespace A098212.P16304785401941803799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000129 (n + 1) ^ 2 + A001333 (n + 1) ^ 2

end

end A098212.P16304785401941803799

namespace A098212

/-- `4*A000129(n+1)²+A001333(n+1)²` -/
def P16304785401941803799.Spec : Prop :=
  ∀ n, P16304785401941803799.a n = A098212 n

end A098212

/-! ## A098212.P11563649513976503411

`or(1, A072221(n+1))`
-/

namespace A098212.P11563649513976503411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072221 (n + 1))

end

end A098212.P11563649513976503411

namespace A098212

/-- `or(1, A072221(n+1))` -/
def P11563649513976503411.Spec : Prop :=
  ∀ n, P11563649513976503411.a n = A098212 n

end A098212

/-! ## A098212.P3186627540731801949

`or(1, A125651(n+2)+1)`
-/

namespace A098212.P3186627540731801949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A125651 (n + 2) + 1)

end

end A098212.P3186627540731801949

namespace A098212

/-- `or(1, A125651(n+2)+1)` -/
def P3186627540731801949.Spec : Prop :=
  ∀ n, P3186627540731801949.a n = A098212 n

end A098212

/-! ## A098212.P18103811048346266400

`Δ[ceil((A301383(n)-1)/2)]`
-/

namespace A098212.P18103811048346266400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301383 n - 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098212.P18103811048346266400

namespace A098212

/-- `Δ[ceil((A301383(n)-1)/2)]` -/
def P18103811048346266400.Spec : Prop :=
  ∀ n, P18103811048346266400.a n = A098212 n

end A098212

/-! ## A098212.P8582438721361231343

`A090390(n)+Δ[A182190(n)]`
-/

namespace A098212.P8582438721361231343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + (f1 (n + 1) - f1 n)

end

end A098212.P8582438721361231343

namespace A098212

/-- `A090390(n)+Δ[A182190(n)]` -/
def P8582438721361231343.Spec : Prop :=
  ∀ n, P8582438721361231343.a n = A098212 n

end A098212

/-! ## A098212.P4191748743072777050

`A090390(n)+A005319(n+1)`
-/

namespace A098212.P4191748743072777050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + A005319 (n + 1)

end

end A098212.P4191748743072777050

namespace A098212

/-- `A090390(n)+A005319(n+1)` -/
def P4191748743072777050.Spec : Prop :=
  ∀ n, P4191748743072777050.a n = A098212 n

end A098212

/-! ## A098212.P10440132440035437754

`A111766(n+2)+A079291(n)`
-/

namespace A098212.P10440132440035437754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111766 (n + 2) + A079291 n

end

end A098212.P10440132440035437754

namespace A098212

/-- `A111766(n+2)+A079291(n)` -/
def P10440132440035437754.Spec : Prop :=
  ∀ n, P10440132440035437754.a n = A098212 n

end A098212

/-! ## A098212.P13694054736466275067

`A001653(n+2)-A046729(n)`
-/

namespace A098212.P13694054736466275067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) - A046729 n

end

end A098212.P13694054736466275067

namespace A098212

/-- `A001653(n+2)-A046729(n)` -/
def P13694054736466275067.Spec : Prop :=
  ∀ n, P13694054736466275067.a n = A098212 n

end A098212

/-! ## A098212.P8648831573156757497

`A100525(n)+Δ[A000129(n)²]`
-/

namespace A098212.P8648831573156757497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100525 n + (f1 (n + 1) - f1 n)

end

end A098212.P8648831573156757497

namespace A098212

/-- `A100525(n)+Δ[A000129(n)²]` -/
def P8648831573156757497.Spec : Prop :=
  ∀ n, P8648831573156757497.a n = A098212 n

end A098212

/-! ## A098212.P17333890336880040648

`Δ[A002315(n)]-A078057(n)²`
-/

namespace A098212.P17333890336880040648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078057 n ^ 2

end

end A098212.P17333890336880040648

namespace A098212

/-- `Δ[A002315(n)]-A078057(n)²` -/
def P17333890336880040648.Spec : Prop :=
  ∀ n, P17333890336880040648.a n = A098212 n

end A098212

/-! ## A098212.P8407921319154461036

`A090390(n)+Δ[Δ[A001109(n)]]`
-/

namespace A098212.P8407921319154461036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + (f1 (n + 1) - f1 n)

end

end A098212.P8407921319154461036

namespace A098212

/-- `A090390(n)+Δ[Δ[A001109(n)]]` -/
def P8407921319154461036.Spec : Prop :=
  ∀ n, P8407921319154461036.a n = A098212 n

end A098212

/-! ## A098212.P8803140520145321468

`A005319(n+1)+A001333(n)²`
-/

namespace A098212.P8803140520145321468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 (n + 1) + A001333 n ^ 2

end

end A098212.P8803140520145321468

namespace A098212

/-- `A005319(n+1)+A001333(n)²` -/
def P8803140520145321468.Spec : Prop :=
  ∀ n, P8803140520145321468.a n = A098212 n

end A098212

/-! ## A098212.P11691643191464142933

`A111766(n+2)+A000129(n)²`
-/

namespace A098212.P11691643191464142933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111766 (n + 2) + A000129 n ^ 2

end

end A098212.P11691643191464142933

namespace A098212

/-- `A111766(n+2)+A000129(n)²` -/
def P11691643191464142933.Spec : Prop :=
  ∀ n, P11691643191464142933.a n = A098212 n

end A098212

/-! ## A098212.P105332379321500288

`A090390(n)+∑[A077445(n+1)]`
-/

namespace A098212.P105332379321500288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098212.P105332379321500288

namespace A098212

/-- `A090390(n)+∑[A077445(n+1)]` -/
def P105332379321500288.Spec : Prop :=
  ∀ n, P105332379321500288.a n = A098212 n

end A098212

/-! ## A098212.P3334161573141468344

`A090390(n)+Δ[A001653(n+1)]`
-/

namespace A098212.P3334161573141468344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + (f1 (n + 1) - f1 n)

end

end A098212.P3334161573141468344

namespace A098212

/-- `A090390(n)+Δ[A001653(n+1)]` -/
def P3334161573141468344.Spec : Prop :=
  ∀ n, P3334161573141468344.a n = A098212 n

end A098212

/-!
# A098213: The values of some algorithm.

The programs for A098213, there is no canonical definition to state claims against.
-/

/-! ## A098213.P7026789681032368782

`A000720(A099640(n+1))`
-/

namespace A098213.P7026789681032368782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A099640 (n + 1)).toNat

end

end A098213.P7026789681032368782

/-! ## A098213.P15332195021822171610

`A061395(p?[A099640(n+1)])`
-/

namespace A098213.P15332195021822171610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098213.P15332195021822171610

/-! ## A098213.P4471781971338749951

`∑{d}[A099640(n+1), A061395(#)]`
-/

namespace A098213.P4471781971338749951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A098213.P4471781971338749951

/-! ## A098213.P16678834356374378777

`A061395(∏{d}[A099640(n+1), #])`
-/

namespace A098213.P16678834356374378777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A098213.P16678834356374378777

/-! ## A098213.P17559525276458821199

`A061395(∑{p}[A099640(n+1), #])`
-/

namespace A098213.P17559525276458821199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A098213.P17559525276458821199

/-!
# A098217: Cototients of terms from A098216. By definitions these cototient values are decimal repdigits.

The programs for A098217, there is no canonical definition to state claims against.
-/

/-! ## A098217.P16407343755748193717

`A051953(A098216(n+1))`
-/

namespace A098217.P16407343755748193717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A098216 (n + 1)).toNat

end

end A098217.P16407343755748193717

/-! ## A098217.P6045118266558560320

`A319700(2*A098216(n+1))`
-/

namespace A098217.P6045118266558560320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * A098216 (n + 1)).toNat

end

end A098217.P6045118266558560320

/-! ## A098217.P5313636629036259412

`A319700(A098216(n+1)+A098216(n+1))`
-/

namespace A098217.P5313636629036259412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (A098216 (n + 1) + A098216 (n + 1)).toNat

end

end A098217.P5313636629036259412

/-!
# A098219: a(n) = floor(sigma(sigma(n))/n) = floor(A051027(n)/n).

The programs for A098219, the canonical program `A098219.P11141698969919353704` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098219 has offset 1).

The definition of A098219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098219.P11141698969919353704

`floor(A051027(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098219

/-- `floor(A051027(n+1)/(n+1))` -/
def P11141698969919353704.Spec : Prop :=
  ∀ n, P11141698969919353704.a n = A098219 (n + 1)

theorem P11141698969919353704.correct : P11141698969919353704.Spec := by
  intro n
  simp only [A098219, Nat.add_sub_cancel]

end A098219

/-! ## A098219.P9034939539381260109

`floor(∑{d}[∑{d}[n+1, #], #]/(n+1))`
-/

namespace A098219.P9034939539381260109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A098219.P9034939539381260109

namespace A098219

/-- `floor(∑{d}[∑{d}[n+1, #], #]/(n+1))` -/
def P9034939539381260109.Spec : Prop :=
  ∀ n, P9034939539381260109.a n = A098219 (n + 1)

end A098219

/-! ## A098219.P16030023538910131196

`ceil((∑{d}[∑{d}[n+1, #], #]-n)/(n+1))`
-/

namespace A098219.P16030023538910131196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A098219.P16030023538910131196

namespace A098219

/-- `ceil((∑{d}[∑{d}[n+1, #], #]-n)/(n+1))` -/
def P16030023538910131196.Spec : Prop :=
  ∀ n, P16030023538910131196.a n = A098219 (n + 1)

end A098219

/-! ## A098219.P1735173910461569238

`floor(A000203(A000203(n+1))/(n+1))`
-/

namespace A098219.P1735173910461569238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (A000203 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A098219.P1735173910461569238

namespace A098219

/-- `floor(A000203(A000203(n+1))/(n+1))` -/
def P1735173910461569238.Spec : Prop :=
  ∀ n, P1735173910461569238.a n = A098219 (n + 1)

end A098219

/-! ## A098219.P17946235837121502547

`floor(A318059(n+1)/A318060(n+1))`
-/

namespace A098219.P17946235837121502547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318059 (n + 1) : ℚ) / (A318060 (n + 1) : ℚ)⌋

end

end A098219.P17946235837121502547

namespace A098219

/-- `floor(A318059(n+1)/A318060(n+1))` -/
def P17946235837121502547.Spec : Prop :=
  ∀ n, P17946235837121502547.a n = A098219 (n + 1)

end A098219

/-!
# A098220: a(n) = floor(sigma(sigma(p))/p) = floor(sigma(p+1)/p) = floor(A008333(n)/p), where p is the n-th prime number.

The programs for A098220, the canonical program `A098220.P2076552491029807430` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098220 has offset 1).

The definition of A098220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098220.P2076552491029807430

`A098219(p?[xor(1, n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098220

/-- `A098219(p?[xor(1, n)])` -/
def P2076552491029807430.Spec : Prop :=
  ∀ n, P2076552491029807430.a n = A098220 (n + 1)

theorem P2076552491029807430.correct : P2076552491029807430.Spec := by
  intro n
  simp only [A098220, Nat.add_sub_cancel]

end A098220

/-! ## A098220.P6921261908221145349

`A098219(Δ[A007504(n)])`
-/

namespace A098220.P6921261908221145349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (n + 1) - f1 n).toNat

end

end A098220.P6921261908221145349

namespace A098220

/-- `A098219(Δ[A007504(n)])` -/
def P6921261908221145349.Spec : Prop :=
  ∀ n, P6921261908221145349.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P4276793662232858275

`A098219(record[A051698(n)])`
-/

namespace A098220.P4276793662232858275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098220.P4276793662232858275

namespace A098220

/-- `A098219(record[A051698(n)])` -/
def P4276793662232858275.Spec : Prop :=
  ∀ n, P4276793662232858275.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P4178725066974176725

`A098219(p?[A153152(n)])`
-/

namespace A098220.P4178725066974176725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098220.P4178725066974176725

namespace A098220

/-- `A098219(p?[A153152(n)])` -/
def P4178725066974176725.Spec : Prop :=
  ∀ n, P4178725066974176725.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P18088668777713118246

`A098219(A000040(n+1))`
-/

namespace A098220.P18088668777713118246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A000040 (n + 1)).toNat

end

end A098220.P18088668777713118246

namespace A098220

/-- `A098219(A000040(n+1))` -/
def P18088668777713118246.Spec : Prop :=
  ∀ n, P18088668777713118246.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P16159100105919986628

`A098219(A063884(n+1))`
-/

namespace A098220.P16159100105919986628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A063884 (n + 1)).toNat

end

end A098220.P16159100105919986628

namespace A098220

/-- `A098219(A063884(n+1))` -/
def P16159100105919986628.Spec : Prop :=
  ∀ n, P16159100105919986628.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P16451703171872249795

`A098219(A063904(n+1))`
-/

namespace A098220.P16451703171872249795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A063904 (n + 1)).toNat

end

end A098220.P16451703171872249795

namespace A098220

/-- `A098219(A063904(n+1))` -/
def P16451703171872249795.Spec : Prop :=
  ∀ n, P16451703171872249795.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P13322813279173853598

`A098219(A008578(n+2))`
-/

namespace A098220.P13322813279173853598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A008578 (n + 2)).toNat

end

end A098220.P13322813279173853598

namespace A098220

/-- `A098219(A008578(n+2))` -/
def P13322813279173853598.Spec : Prop :=
  ∀ n, P13322813279173853598.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P1739500747728576953

`A098219(A083190(n+2))`
-/

namespace A098220.P1739500747728576953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A083190 (n + 2)).toNat

end

end A098220.P1739500747728576953

namespace A098220

/-- `A098219(A083190(n+2))` -/
def P1739500747728576953.Spec : Prop :=
  ∀ n, P1739500747728576953.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P17882020536803780448

`A098219(A175787(n+2))`
-/

namespace A098220.P17882020536803780448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A175787 (n + 2)).toNat

end

end A098220.P17882020536803780448

namespace A098220

/-- `A098219(A175787(n+2))` -/
def P17882020536803780448.Spec : Prop :=
  ∀ n, P17882020536803780448.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P13201359948568565144

`A098219(A182986(n+2))`
-/

namespace A098220.P13201359948568565144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A182986 (n + 2)).toNat

end

end A098220.P13201359948568565144

namespace A098220

/-- `A098219(A182986(n+2))` -/
def P13201359948568565144.Spec : Prop :=
  ∀ n, P13201359948568565144.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P18096504358489326550

`A098219(eq[1, A003415(n)])`
-/

namespace A098220.P18096504358489326550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098220.P18096504358489326550

namespace A098220

/-- `A098219(eq[1, A003415(n)])` -/
def P18096504358489326550.Spec : Prop :=
  ∀ n, P18096504358489326550.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P6694367123087570200

`A098219(record[A006530(n+2)])`
-/

namespace A098220.P6694367123087570200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098220.P6694367123087570200

namespace A098220

/-- `A098219(record[A006530(n+2)])` -/
def P6694367123087570200.Spec : Prop :=
  ∀ n, P6694367123087570200.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P16538230847201204901

`A098219(record[A014963(n+2)])`
-/

namespace A098220.P16538230847201204901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098220.P16538230847201204901

namespace A098220

/-- `A098219(record[A014963(n+2)])` -/
def P16538230847201204901.Spec : Prop :=
  ∀ n, P16538230847201204901.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P1345058463842308010

`A098219(record[A020639(n+2)])`
-/

namespace A098220.P1345058463842308010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098220.P1345058463842308010

namespace A098220

/-- `A098219(record[A020639(n+2)])` -/
def P1345058463842308010.Spec : Prop :=
  ∀ n, P1345058463842308010.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P298312910783316999

`A098219(A008864(n+1)-1)`
-/

namespace A098220.P298312910783316999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A008864 (n + 1) - 1).toNat

end

end A098220.P298312910783316999

namespace A098220

/-- `A098219(A008864(n+1)-1)` -/
def P298312910783316999.Spec : Prop :=
  ∀ n, P298312910783316999.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P627608768044376581

`floor(A008333(n+1)/A000040(n+1))`
-/

namespace A098220.P627608768044376581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008333 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A098220.P627608768044376581

namespace A098220

/-- `floor(A008333(n+1)/A000040(n+1))` -/
def P627608768044376581.Spec : Prop :=
  ∀ n, P627608768044376581.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P11260024906824396298

`floor(A008333(n+1)/record[A020639(n+2)])`
-/

namespace A098220.P11260024906824396298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008333 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A098220.P11260024906824396298

namespace A098220

/-- `floor(A008333(n+1)/record[A020639(n+2)])` -/
def P11260024906824396298.Spec : Prop :=
  ∀ n, P11260024906824396298.a n = A098220 (n + 1)

end A098220

/-! ## A098220.P8687542071366233225

`A098219(A007504(n+1)-A007504(n))`
-/

namespace A098220.P8687542071366233225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A007504 (n + 1) - A007504 n).toNat

end

end A098220.P8687542071366233225

namespace A098220

/-- `A098219(A007504(n+1)-A007504(n))` -/
def P8687542071366233225.Spec : Prop :=
  ∀ n, P8687542071366233225.a n = A098220 (n + 1)

end A098220

/-!
# A098223: Integer quotients when sigma(sigma(x))/x is an integer.

The programs for A098223, there is no canonical definition to state claims against.
-/

/-! ## A098223.P12514995714828029651

`A000203(A000203(A019278(n+1)))/A019278(n+1)`
-/

namespace A098223.P12514995714828029651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (A019278 (n + 1)).toNat).toNat : ℚ) / (A019278 (n + 1) : ℚ)

end

end A098223.P12514995714828029651

/-! ## A098223.P7744798443303473950

`A098219(A019278(n+1))`
-/

namespace A098223.P7744798443303473950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A019278 (n + 1)).toNat

end

end A098223.P7744798443303473950

/-! ## A098223.P12591643178905410821

`A318059(and(-1, A019278(n+1)))`
-/

namespace A098223.P12591643178905410821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318059 (Int.land (-1) (A019278 (n + 1))).toNat

end

end A098223.P12591643178905410821

/-! ## A098223.P3705161113602177734

`A318059(root(A019278(n+1), 2)²)`
-/

namespace A098223.P3705161113602177734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318059 (SequenceMachineLib.roundAway (((A019278 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A098223.P3705161113602177734

/-! ## A098223.P1193009854172531312

`A318059(or(char[4], A019278(n+1)))`
-/

namespace A098223.P1193009854172531312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318059 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A019278 (n + 1))).toNat

end

end A098223.P1193009854172531312

/-!
# A098224: Number of primes <=10^n in which decimal digits are all distinct.

The programs for A098224, there is no canonical definition to state claims against.
-/

/-! ## A098224.P9654977272901529975

`A073532(n+1)+a(n-1)` with `a(0)=4`
-/

namespace A098224.P9654977272901529975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A073532 (n + 1) + a (n - 1)

end

end A098224.P9654977272901529975

/-!
# A098226: Number of primes <= 10^n which have repeated decimal digits.

The programs for A098226, there is no canonical definition to state claims against.
-/

/-! ## A098226.P16234396595350970273

`A006880(n+1)-A098224(n+1)`
-/

namespace A098226.P16234396595350970273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A098224 (n + 1)

end

end A098226.P16234396595350970273

/-! ## A098226.P16455182354371976154

`∑[Δ[A006880(n)]-A073532(n+1)]`
-/

namespace A098226.P16455182354371976154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A073532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098226.P16455182354371976154

/-! ## A098226.P18186508519271971584

`∑[A006879(n+1)-A073532(n+1)]`
-/

namespace A098226.P18186508519271971584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A073532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098226.P18186508519271971584

/-! ## A098226.P6277767052510077969

`∑[A006879(n+1)]-A098224(n+1)`
-/

namespace A098226.P6277767052510077969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098224 (n + 1)

end

end A098226.P6277767052510077969

/-! ## A098226.P5377056793404427886

`∑[A098227(n+1)]`
-/

namespace A098226.P5377056793404427886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098226.P5377056793404427886

/-!
# A098227: Number of primes with exactly n decimal digits which have repeated digits.

The programs for A098227, there is no canonical definition to state claims against.
-/

/-! ## A098227.P3145133061132977289

`Δ[A098226(A028310(n))]`
-/

namespace A098227.P3145133061132977289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098226 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098227.P3145133061132977289

/-! ## A098227.P18361689891871548790

`record[Δ[A098226(A008619(n))]]`
-/

namespace A098227.P18361689891871548790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098226 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098227.P18361689891871548790

/-! ## A098227.P11741232619526987124

`record[Δ[A098226(A065033(n))]]`
-/

namespace A098227.P11741232619526987124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098226 (A065033 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098227.P11741232619526987124

/-! ## A098227.P16448081767546375965

`Δ[A098226(A065033(2*n))]`
-/

namespace A098227.P16448081767546375965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098226 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098227.P16448081767546375965

/-! ## A098227.P2996030754565300652

`record[Δ[A098226(A093878(n+1))]]`
-/

namespace A098227.P2996030754565300652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098226 (A093878 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098227.P2996030754565300652

/-!
# A098228: a(n) = floor(n/(n-phi(n))) = floor(n/cototient(n)).

The programs for A098228, the canonical program `A098228.P18298445085309649262` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098228 has offset 2).

The definition of A098228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098228.P7736359421694167290

`floor((n+2)/(2-A000010(n+2)+n))`
-/

namespace A098228.P7736359421694167290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (2 - A000010 (n + 2) + (n : ℤ) : ℚ)⌋

end

end A098228.P7736359421694167290

namespace A098228

/-- `floor((n+2)/(2-A000010(n+2)+n))` -/
def P7736359421694167290.Spec : Prop :=
  ∀ n, P7736359421694167290.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P11800993180103581029

`floor((n+2)/A051953(n+2))`
-/

namespace A098228.P11800993180103581029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A051953 (n + 2) : ℚ)⌋

end

end A098228.P11800993180103581029

namespace A098228

/-- `floor((n+2)/A051953(n+2))` -/
def P11800993180103581029.Spec : Prop :=
  ∀ n, P11800993180103581029.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P18298445085309649262

`floor((n+2)²/A053650(n+2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098228

/-- `floor((n+2)²/A053650(n+2))` -/
def P18298445085309649262.Spec : Prop :=
  ∀ n, P18298445085309649262.a n = A098228 (n + 2)

theorem P18298445085309649262.correct : P18298445085309649262.Spec := by
  intro n
  simp only [A098228, Nat.add_sub_cancel]

end A098228

/-! ## A098228.P2143252998070797146

`floor((n+2)/Δ[A063985(n+1)])`
-/

namespace A098228.P2143252998070797146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A098228.P2143252998070797146

namespace A098228

/-- `floor((n+2)/Δ[A063985(n+1)])` -/
def P2143252998070797146.Spec : Prop :=
  ∀ n, P2143252998070797146.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P9583558190927747688

`floor((n+2)/(A016035(n+2)+1))`
-/

namespace A098228.P9583558190927747688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A016035 (n + 2) + 1 : ℚ)⌋

end

end A098228.P9583558190927747688

namespace A098228

/-- `floor((n+2)/(A016035(n+2)+1))` -/
def P9583558190927747688.Spec : Prop :=
  ∀ n, P9583558190927747688.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P15076162591711006044

`floor((n+2)/(A062830(n+2)-1))`
-/

namespace A098228.P15076162591711006044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A062830 (n + 2) - 1 : ℚ)⌋

end

end A098228.P15076162591711006044

namespace A098228

/-- `floor((n+2)/(A062830(n+2)-1))` -/
def P15076162591711006044.Spec : Prop :=
  ∀ n, P15076162591711006044.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P9996177291185878486

`floor((n+2)/A319700(2*(n+2)))`
-/

namespace A098228.P9996177291185878486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A319700 (2 * (n + 2)) : ℚ)⌋

end

end A098228.P9996177291185878486

namespace A098228

/-- `floor((n+2)/A319700(2*(n+2)))` -/
def P9996177291185878486.Spec : Prop :=
  ∀ n, P9996177291185878486.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P17170616659957248636

`floor(A077662(n+2)/(n+2))`
-/

namespace A098228.P17170616659957248636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077662 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A098228.P17170616659957248636

namespace A098228

/-- `floor(A077662(n+2)/(n+2))` -/
def P17170616659957248636.Spec : Prop :=
  ∀ n, P17170616659957248636.a n = A098228 (n + 2)

end A098228

/-! ## A098228.P15755920645197929083

`floor(A081518(n+2)/(n+1))`
-/

namespace A098228.P15755920645197929083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081518 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A098228.P15755920645197929083

namespace A098228

/-- `floor(A081518(n+2)/(n+1))` -/
def P15755920645197929083.Spec : Prop :=
  ∀ n, P15755920645197929083.a n = A098228 (n + 2)

end A098228

/-!
# A098229: a(n) = 6*c(m,1) where m = A003586(n) is the n-th 3-smooth number, c(m,k) = {(m^(2*k)-1)*B(2*k)}, {x} denotes the fractional part of x and B(k) is the k-th Bernoulli number.

The programs for A098229, there is no canonical definition to state claims against.
-/

/-! ## A098229.P9798735824160219941

`(A033031(n+1)²-1)%6`
-/

namespace A098229.P9798735824160219941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033031 (n + 1) ^ 2 - 1) 6

end

end A098229.P9798735824160219941

/-! ## A098229.P5951328298676878323

`(A025620(n+1)-1)%6`
-/

namespace A098229.P5951328298676878323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025620 (n + 1) - 1) 6

end

end A098229.P5951328298676878323

/-! ## A098229.P13112782902854877284

`A086418(A372744(n+1))`
-/

namespace A098229.P13112782902854877284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086418 (A372744 (n + 1)).toNat

end

end A098229.P13112782902854877284

/-! ## A098229.P11735173315933395906

`∑{p}[A003586(n+1), 5-#]`
-/

namespace A098229.P11735173315933395906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (5 - (p : ℤ))

end

end A098229.P11735173315933395906

/-! ## A098229.P17698517165784762846

`∑{p}[A007694(n+2)/2, 5-#]`
-/

namespace A098229.P17698517165784762846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (5 - (p : ℤ))

end

end A098229.P17698517165784762846

/-! ## A098229.P16120581694995153026

`∑{p}[Δ[A259823(n)], A000705(#)]`
-/

namespace A098229.P16120581694995153026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000705 p

end

end A098229.P16120581694995153026

/-! ## A098229.P78359681451263097

`∑{p}[Δ[A259823(n)], A002350(#)]`
-/

namespace A098229.P78359681451263097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002350 p

end

end A098229.P78359681451263097

/-! ## A098229.P18379519099044036155

`∑{p}[Δ[A259823(n)], A003188(#)]`
-/

namespace A098229.P18379519099044036155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003188 p

end

end A098229.P18379519099044036155

/-! ## A098229.P16843357893140984627

`∑{p}[Δ[A259823(n)], A003589(#)]`
-/

namespace A098229.P16843357893140984627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003589 p

end

end A098229.P16843357893140984627

/-! ## A098229.P11872594475097840302

`∑{p}[Δ[A259823(n)], A004442(#)]`
-/

namespace A098229.P11872594475097840302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004442 p

end

end A098229.P11872594475097840302

/-! ## A098229.P4608954213090635780

`∑{p}[Δ[A259823(n)], A053669(#)]`
-/

namespace A098229.P4608954213090635780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053669 p

end

end A098229.P4608954213090635780

/-! ## A098229.P1331907923182370725

`∑{p}[Δ[A259823(n)], A054546(#)]`
-/

namespace A098229.P1331907923182370725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054546 p

end

end A098229.P1331907923182370725

/-! ## A098229.P8414367737836732051

`∑{p}[∑[A061987(n)], A006530(#+1)]`
-/

namespace A098229.P8414367737836732051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 (p + 1)

end

end A098229.P8414367737836732051

/-! ## A098229.P15139934395646035819

`∑{p}[A065119(n+1)/3, A154456(#)]`
-/

namespace A098229.P15139934395646035819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A154456 p

end

end A098229.P15139934395646035819

/-! ## A098229.P123228389856904797

`∑{p}[∏{p}[A003586(n+1), A000203(#)], #]`
-/

namespace A098229.P123228389856904797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000203 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A098229.P123228389856904797

/-! ## A098229.P4681774251563421897

`∑{p}[sqrt(A025620(n+1)), 4-A000010(#)]`
-/

namespace A098229.P4681774251563421897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (4 - A000010 p)

end

end A098229.P4681774251563421897

/-! ## A098229.P14040699948814255016

`∑{p}[A000423(n+3)/6, A006530(#+1)]`
-/

namespace A098229.P14040699948814255016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000423 (n + 3) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A006530 (p + 1)

end

end A098229.P14040699948814255016

/-! ## A098229.P5966345593588723726

`A001222(∏{p}[A003586(n+1), A000754(#)])`
-/

namespace A098229.P5966345593588723726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000754 p).toNat

end

end A098229.P5966345593588723726

/-!
# A098230: 75-gonal numbers: a(n) = n*(73*n-71)/2.

The programs for A098230, the canonical program `A098230.P13136546891317126791` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098230 has offset 0).

The definition of A098230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098230.P13136546891317126791

`n*(73*n-71)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098230

/-- `n*(73*n-71)/2` -/
def P13136546891317126791.Spec : Prop :=
  ∀ n, P13136546891317126791.a n = (A098230 n : ℚ)

end A098230

/-! ## A098230.P5478104002632972631

`∑[a(n-1)+73]` with `a(0)=0, a(1)=1`
-/

namespace A098230.P5478104002632972631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 73

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098230.P5478104002632972631

namespace A098230

/-- `∑[a(n-1)+73]` -/
def P5478104002632972631.Spec : Prop :=
  ∀ n, (P5478104002632972631.a n : ℤ) = A098230 n

end A098230

/-! ## A098230.P5469232858478670904

`A263231(n)+A153808(n)`
-/

namespace A098230.P5469232858478670904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A153808 n

end

end A098230.P5469232858478670904

namespace A098230

/-- `A263231(n)+A153808(n)` -/
def P5469232858478670904.Spec : Prop :=
  ∀ n, P5469232858478670904.a n = A098230 n

end A098230

/-! ## A098230.P6852415934924540094

`A277978(n)+A263227(n)`
-/

namespace A098230.P6852415934924540094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + A263227 n

end

end A098230.P6852415934924540094

namespace A098230

/-- `A277978(n)+A263227(n)` -/
def P6852415934924540094.Spec : Prop :=
  ∀ n, P6852415934924540094.a n = A098230 n

end A098230

/-! ## A098230.P8203679235226321879

`A261343(n)+A261343(n)-A255184(n)`
-/

namespace A098230.P8203679235226321879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261343 n + (A261343 n - A255184 n)

end

end A098230.P8203679235226321879

namespace A098230

/-- `A261343(n)+A261343(n)-A255184(n)` -/
def P8203679235226321879.Spec : Prop :=
  ∀ n, P8203679235226321879.a n = A098230 n

end A098230

/-! ## A098230.P10564080967032224132

`A255186(2*n)-A303815(2*n)`
-/

namespace A098230.P10564080967032224132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 (2 * n) - A303815 (2 * n)

end

end A098230.P10564080967032224132

namespace A098230

/-- `A255186(2*n)-A303815(2*n)` -/
def P10564080967032224132.Spec : Prop :=
  ∀ n, P10564080967032224132.a n = A098230 n

end A098230

/-! ## A098230.P5738244698977968277

`∑[record[and(n, A240356(n))]]`
-/

namespace A098230.P5738244698977968277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A240356 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098230.P5738244698977968277

namespace A098230

/-- `∑[record[and(n, A240356(n))]]` -/
def P5738244698977968277.Spec : Prop :=
  ∀ n, P5738244698977968277.a n = A098230 n

end A098230

/-!
# A098231: 2^p - 11 for p prime.

The programs for A098231, there is no canonical definition to state claims against.
-/

/-! ## A098231.P14381664472523260419

`Δ[A076793(n)]-11`
-/

namespace A098231.P14381664472523260419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 11

end

end A098231.P14381664472523260419

/-! ## A098231.P12869632736671658526

`A098815(n+1)-4`
-/

namespace A098231.P12869632736671658526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098815 (n + 1) - 4

end

end A098231.P12869632736671658526

/-! ## A098231.P8559360557311661081

`A241678(n+1)-6`
-/

namespace A098231.P8559360557311661081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241678 (n + 1) - 6

end

end A098231.P8559360557311661081

/-! ## A098231.P15290309809946444789

`A241676(n+1)-8`
-/

namespace A098231.P15290309809946444789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1) - 8

end

end A098231.P15290309809946444789

/-! ## A098231.P11769522618136244573

`A001348(n+1)-10`
-/

namespace A098231.P11769522618136244573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) - 10

end

end A098231.P11769522618136244573

/-! ## A098231.P2366668202627513724

`A241573(n+1)-14`
-/

namespace A098231.P2366668202627513724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1) - 14

end

end A098231.P2366668202627513724

/-! ## A098231.P13393896204481639992

`2^A000040(n+1)-11`
-/

namespace A098231.P13393896204481639992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) : ℤ) - 11

end

end A098231.P13393896204481639992

/-! ## A098231.P17654053862121232109

`record[2^A006530(n+2)]-11`
-/

namespace A098231.P17654053862121232109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 11

end

end A098231.P17654053862121232109

/-! ## A098231.P17656627335465843950

`record[2^A020639(n+2)-11]`
-/

namespace A098231.P17656627335465843950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 2) : ℤ) - 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098231.P17656627335465843950

/-! ## A098231.P8404513136679980487

`abs(2*record[2^A000010(n+1)]-1)-10`
-/

namespace A098231.P8404513136679980487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1| - 10

end

end A098231.P8404513136679980487

/-!
# A098232: Largest power of 2 <= 3^n.

The programs for A098232, the canonical program `A098232.P17209619986284950664` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098232 has offset 0).

The definition of A098232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098232.P11434157390053544067

`2^floor(n*log2(3))`
-/

namespace A098232.P11434157390053544067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ : ℤ)

end

end A098232.P11434157390053544067

namespace A098232

/-- `2^floor(n*log2(3))` -/
def P11434157390053544067.Spec : Prop :=
  ∀ n, P11434157390053544067.a n = (A098232 n : ℚ)

end A098232

/-! ## A098232.P17209619986284950664

`A000079(A056576(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098232

/-- `A000079(A056576(n))` -/
def P17209619986284950664.Spec : Prop :=
  ∀ n, P17209619986284950664.a n = A098232 n

theorem P17209619986284950664.correct : P17209619986284950664.Spec := by
  intro n
  simp only [A098232]

end A098232

/-! ## A098232.P6678955217655377405

`A000244(n)-A056577(n)`
-/

namespace A098232.P6678955217655377405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A056577 n

end

end A098232.P6678955217655377405

namespace A098232

/-- `A000244(n)-A056577(n)` -/
def P6678955217655377405.Spec : Prop :=
  ∀ n, P6678955217655377405.a n = A098232 n

end A098232

/-! ## A098232.P14779642700631952053

`record[(Δ[floor(n/log2(3))]+1)^n]`
-/

namespace A098232.P14779642700631952053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098232.P14779642700631952053

namespace A098232

/-- `record[(Δ[floor(n/log2(3))]+1)^n]` -/
def P14779642700631952053.Spec : Prop :=
  ∀ n, P14779642700631952053.a n = A098232 n

end A098232

/-! ## A098232.P11599865688677427956

`A011782(A020914(n))`
-/

namespace A098232.P11599865688677427956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A020914 n).toNat

end

end A098232.P11599865688677427956

namespace A098232

/-- `A011782(A020914(n))` -/
def P11599865688677427956.Spec : Prop :=
  ∀ n, P11599865688677427956.a n = A098232 n

end A098232

/-! ## A098232.P246714643709054503

`A011782(A204399(n))`
-/

namespace A098232.P246714643709054503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A204399 n).toNat

end

end A098232.P246714643709054503

namespace A098232

/-- `A011782(A204399(n))` -/
def P246714643709054503.Spec : Prop :=
  ∀ n, P246714643709054503.a n = A098232 n

end A098232

/-! ## A098232.P11921529447203168737

`A000079(A020914(n)-1)`
-/

namespace A098232.P11921529447203168737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A020914 n - 1).toNat

end

end A098232.P11921529447203168737

namespace A098232

/-- `A000079(A020914(n)-1)` -/
def P11921529447203168737.Spec : Prop :=
  ∀ n, P11921529447203168737.a n = A098232 n

end A098232

/-! ## A098232.P14654459005140907666

`A000079(A122437(n+1)-(n+1))`
-/

namespace A098232.P14654459005140907666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A122437 (n + 1) - (n + 1 : ℤ)).toNat

end

end A098232.P14654459005140907666

namespace A098232

/-- `A000079(A122437(n+1)-(n+1))` -/
def P14654459005140907666.Spec : Prop :=
  ∀ n, P14654459005140907666.a n = A098232 n

end A098232

/-! ## A098232.P12409136752982766057

`A306044(A226722(A122437(n+1)-n))`
-/

namespace A098232.P12409136752982766057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306044 (A226722 (A122437 (n + 1) - (n : ℤ)).toNat).toNat

end

end A098232.P12409136752982766057

namespace A098232

/-- `A306044(A226722(A122437(n+1)-n))` -/
def P12409136752982766057.Spec : Prop :=
  ∀ n, P12409136752982766057.a n = A098232 n

end A098232

/-! ## A098232.P4072253195361847415

`and(6*a(n-1), 3^n)` with `a(0)=1`
-/

namespace A098232.P4072253195361847415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (6 * a (n - 1)) (3 ^ n)

end

end A098232.P4072253195361847415

namespace A098232

/-- `and(6*a(n-1), 3^n)` -/
def P4072253195361847415.Spec : Prop :=
  ∀ n, (P4072253195361847415.a n : ℤ) = A098232 n

end A098232

/-! ## A098232.P44948757577955774

`lcm(2^floor(log2(3^n)), a(n-1))` with `a(0)=1`
-/

namespace A098232.P44948757577955774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (2 ^ Nat.log 2 (3 ^ n)) (a (n - 1))

end

end A098232.P44948757577955774

namespace A098232

/-- `lcm(2^floor(log2(3^n)), a(n-1))` -/
def P44948757577955774.Spec : Prop :=
  ∀ n, (P44948757577955774.a n : ℤ) = A098232 n

end A098232

/-! ## A098232.P18052535616379253935

`(A063005(A020914(n))+A000244(n))/2`
-/

namespace A098232.P18052535616379253935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063005 (A020914 n).toNat + A000244 n : ℚ) / 2

end

end A098232.P18052535616379253935

namespace A098232

/-- `(A063005(A020914(n))+A000244(n))/2` -/
def P18052535616379253935.Spec : Prop :=
  ∀ n, P18052535616379253935.a n = (A098232 n : ℚ)

end A098232

/-! ## A098232.P11755566712141941255

`A003586(A022331(A020914(n))-(n+1))`
-/

namespace A098232.P11755566712141941255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A022331 (A020914 n).toNat - (n + 1 : ℤ)).toNat

end

end A098232.P11755566712141941255

namespace A098232

/-- `A003586(A022331(A020914(n))-(n+1))` -/
def P11755566712141941255.Spec : Prop :=
  ∀ n, P11755566712141941255.a n = A098232 n

end A098232

/-!
# A098235: Number of ways to write n as a sum of two ordered positive squarefree numbers.

The programs for A098235, there is no canonical definition to state claims against.
-/

/-! ## A098235.P13701616657231446329

`A013928(n+1)-A294101(n+1)`
-/

namespace A098235.P13701616657231446329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A294101 (n + 1)

end

end A098235.P13701616657231446329

/-! ## A098235.P291509192295342212

`2*A071068(n+1)-A151934(A285736(n+1))`
-/

namespace A098235.P291509192295342212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071068 (n + 1) - A151934 (A285736 (n + 1)).toNat

end

end A098235.P291509192295342212

/-! ## A098235.P18120335818069937890

`A013928(n+1)-(A294233(n+1)+A294232(n+1))`
-/

namespace A098235.P18120335818069937890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - (A294233 (n + 1) + A294232 (n + 1))

end

end A098235.P18120335818069937890

/-! ## A098235.P17118279175439132091

`A005843(A071068(n+1))-A151934(A285736(n+1))`
-/

namespace A098235.P17118279175439132091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A071068 (n + 1)).toNat - A151934 (A285736 (n + 1)).toNat

end

end A098235.P17118279175439132091

/-! ## A098235.P11166364698555175734

`A262869(2*n+1)-A294101(n+1)`
-/

namespace A098235.P11166364698555175734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A294101 (n + 1)

end

end A098235.P11166364698555175734

/-! ## A098235.P4013448806338135376

`A098236(n+1)+A071068(n+1)`
-/

namespace A098235.P4013448806338135376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (n + 1) + A071068 (n + 1)

end

end A098235.P4013448806338135376

/-! ## A098235.P3716578673002554933

`A098236(n+1)+A262351(n+1)/(n+1)`
-/

namespace A098235.P3716578673002554933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098236 (n + 1) : ℚ) + (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A098235.P3716578673002554933

/-! ## A098235.P13089109964990715377

`A151934(A285736(n+1))+2*A098236(n+1)`
-/

namespace A098235.P13089109964990715377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A285736 (n + 1)).toNat + 2 * A098236 (n + 1)

end

end A098235.P13089109964990715377

/-! ## A098235.P15042175398112807447

`A098236(n+1)+A262868(n+1)-A294233(n+1)`
-/

namespace A098235.P15042175398112807447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (n + 1) + (A262868 (n + 1) - A294233 (n + 1))

end

end A098235.P15042175398112807447

/-! ## A098235.P10941534869340723102

`A098236(n+1)+A262869(n+1)-A294232(n+1)`
-/

namespace A098235.P10941534869340723102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (n + 1) + (A262869 (n + 1) - A294232 (n + 1))

end

end A098235.P10941534869340723102

/-! ## A098235.P6865430250612953923

`A098236(n+1)+(2*A262351(n+1))%record[A093178(n)]`
-/

namespace A098235.P6865430250612953923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (n + 1) + Int.tmod (2 * A262351 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A098235.P6865430250612953923

/-! ## A098235.P9029958402141640628

`A151934(A285736(n+1))+A005843(A098236(n+1))`
-/

namespace A098235.P9029958402141640628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A285736 (n + 1)).toNat + A005843 (A098236 (n + 1)).toNat

end

end A098235.P9029958402141640628

/-!
# A098236: Number of ways to write n as the sum of two positive distinct squarefree numbers.

The programs for A098236, there is no canonical definition to state claims against.
-/

/-! ## A098236.P18198398104248843021

`floor(A098235(n+1)/2)`
-/

namespace A098236.P18198398104248843021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098235 (n + 1) : ℚ) / 2⌋

end

end A098236.P18198398104248843021

/-! ## A098236.P1613822227607081142

`A294247(n+1)/(n+1)`
-/

namespace A098236.P1613822227607081142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294247 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A098236.P1613822227607081142

/-! ## A098236.P12640574644477162550

`A004526(A098235(n+1))`
-/

namespace A098236.P12640574644477162550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098235 (n + 1)).toNat

end

end A098236.P12640574644477162550

/-! ## A098236.P9724661460376029194

`A140106(A098235(n+1)+2)`
-/

namespace A098236.P9724661460376029194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A098235 (n + 1) + 2).toNat

end

end A098236.P9724661460376029194

/-! ## A098236.P6012785032713333258

`A002265(2*A098235(n+1))`
-/

namespace A098236.P6012785032713333258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A098235 (n + 1)).toNat

end

end A098236.P6012785032713333258

/-! ## A098236.P8652094908307211575

`A008615(3*A098235(n+1))`
-/

namespace A098236.P8652094908307211575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A098235 (n + 1)).toNat

end

end A098236.P8652094908307211575

/-! ## A098236.P507242732946126237

`A004524(or(1, A098235(n+1)))`
-/

namespace A098236.P507242732946126237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A098235 (n + 1))).toNat

end

end A098236.P507242732946126237

/-! ## A098236.P8530355006057158830

`A028242(or(1, A098235(n+1)))`
-/

namespace A098236.P8530355006057158830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A098235 (n + 1))).toNat

end

end A098236.P8530355006057158830

/-! ## A098236.P13969874575141799339

`A123108(or(1, A098235(n+1)))`
-/

namespace A098236.P13969874575141799339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lor 1 (A098235 (n + 1))).toNat

end

end A098236.P13969874575141799339

/-! ## A098236.P2216752438510258944

`A294247(n+1)%A028310(n)`
-/

namespace A098236.P2216752438510258944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294247 (n + 1)) (A028310 n)

end

end A098236.P2216752438510258944

/-! ## A098236.P17487957817888389386

`A110654(A098235(n+1)+1)-1`
-/

namespace A098236.P17487957817888389386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098235 (n + 1) + 1).toNat - 1

end

end A098236.P17487957817888389386

/-! ## A098236.P2288889908306451804

`A123108(A098235(n+1)+2)-1`
-/

namespace A098236.P2288889908306451804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A098235 (n + 1) + 2).toNat - 1

end

end A098236.P2288889908306451804

/-! ## A098236.P9591705080876777444

`A004524(2*A098235(n+1))/2`
-/

namespace A098236.P9591705080876777444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * A098235 (n + 1)).toNat : ℚ) / 2

end

end A098236.P9591705080876777444

/-! ## A098236.P15209268087421544890

`A098235(n+1)-A071068(n+1)`
-/

namespace A098236.P15209268087421544890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (n + 1) - A071068 (n + 1)

end

end A098236.P15209268087421544890

/-! ## A098236.P16841221850683785129

`A013928(n+1)-A351833(n+1)`
-/

namespace A098236.P16841221850683785129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A351833 (n + 1)

end

end A098236.P16841221850683785129

/-! ## A098236.P7952314036887155138

`A351834(n+1)-A294101(n+1)`
-/

namespace A098236.P7952314036887155138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351834 (n + 1) - A294101 (n + 1)

end

end A098236.P7952314036887155138

/-! ## A098236.P13661737897218687420

`A262869(2*n+1)-A351833(n+1)`
-/

namespace A098236.P13661737897218687420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * n + 1) - A351833 (n + 1)

end

end A098236.P13661737897218687420

/-! ## A098236.P8498549561457158048

`A071068(n+1)-A151934(A285736(n+1))`
-/

namespace A098236.P8498549561457158048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (n + 1) - A151934 (A285736 (n + 1)).toNat

end

end A098236.P8498549561457158048

/-! ## A098236.P4217875506890426434

`A002265(A098235(n+1)+A098235(n+1)+1)`
-/

namespace A098236.P4217875506890426434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A098235 (n + 1) + (A098235 (n + 1) + 1)).toNat

end

end A098236.P4217875506890426434

/-! ## A098236.P1575452549419760704

`A013928(n+1)+A071068(n+1)-A262991(n+1)`
-/

namespace A098236.P1575452549419760704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) + (A071068 (n + 1) - A262991 (n + 1))

end

end A098236.P1575452549419760704

/-!
# A098237: Composite de Polignac numbers (A006285).

The programs for A098237, there is no canonical definition to state claims against.
-/

/-! ## A098237.P17809249064720574279

`filter[A006285(n+1), A066247(#)]`
-/

namespace A098237.P17809249064720574279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A098237.P17809249064720574279

/-! ## A098237.P2329497060824908176

`filter[A133122(n+1), A066247(#)]`
-/

namespace A098237.P2329497060824908176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A098237.P2329497060824908176

/-! ## A098237.P18074701376576286687

`filter[A006285(n+1), A202238(#)]`
-/

namespace A098237.P18074701376576286687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A098237.P18074701376576286687

/-! ## A098237.P14774005389776990967

`filter[A006285(n+1), A323162(#)]`
-/

namespace A098237.P14774005389776990967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A098237.P14774005389776990967

/-! ## A098237.P7788589628777112431

`filter[A133122(n+1), A202238(#)]`
-/

namespace A098237.P7788589628777112431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A098237.P7788589628777112431

/-! ## A098237.P12235292829400396133

`filter[A133122(n+1), A323162(#)]`
-/

namespace A098237.P12235292829400396133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A098237.P12235292829400396133

/-! ## A098237.P15433997791241593618

`filter[A006285(n+2), A005171(#)]`
-/

namespace A098237.P15433997791241593618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A098237.P15433997791241593618

/-! ## A098237.P2384833570783683141

`filter[A133122(n+2), A005171(#)]`
-/

namespace A098237.P2384833570783683141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A098237.P2384833570783683141

/-! ## A098237.P4299893338490557216

`filter[A006285(n+2), A292438(#)]`
-/

namespace A098237.P4299893338490557216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A098237.P4299893338490557216

/-! ## A098237.P1588611173916708163

`filter[A133122(n+2), A292438(#)]`
-/

namespace A098237.P1588611173916708163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A098237.P1588611173916708163

/-! ## A098237.P12664312299899876601

`∩[A133122(A065475(n+1)), A164376(n+5)]`
-/

namespace A098237.P12664312299899876601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (A065475 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098237.P12664312299899876601

/-! ## A098237.P8534893147921476718

`∩[A133122(2-A000007(n)+n), A164376(n+5)]`
-/

namespace A098237.P8534893147921476718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (2 - A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098237.P8534893147921476718

/-! ## A098237.P15968435317007186778

`filter[A006285(n+1), A174898(#)]`
-/

namespace A098237.P15968435317007186778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A098237.P15968435317007186778

/-! ## A098237.P7179272260246684027

`filter[A133122(n+1), A174898(#)]`
-/

namespace A098237.P7179272260246684027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A098237.P7179272260246684027

/-! ## A098237.P11518034930699907590

`∩[A006285(n+1), A002808(n+1)]`
-/

namespace A098237.P11518034930699907590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098237.P11518034930699907590

/-! ## A098237.P12342986899208035343

`filter[A006285(n+1), A143731(#)]`
-/

namespace A098237.P12342986899208035343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A098237.P12342986899208035343

/-! ## A098237.P3154850413753892957

`filter[A133122(n+1), A143731(#)]`
-/

namespace A098237.P3154850413753892957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A098237.P3154850413753892957

/-!
# A098238: Number of ordered ways of writing n as sum of three primes.

The programs for A098238, there is no canonical definition to state claims against.
-/

/-! ## A098238.P5790601926019782928

`A347740(n)-A347739(n)`
-/

namespace A098238.P5790601926019782928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 n - A347739 n

end

end A098238.P5790601926019782928

/-! ## A098238.P11172623396926140403

`A347740(n)+A024000(A347739(n)+1)`
-/

namespace A098238.P11172623396926140403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 n + A024000 (A347739 n + 1).toNat

end

end A098238.P11172623396926140403

/-! ## A098238.P876905304107155149

`A347740(n)-(A347550(n)+A061358(n))`
-/

namespace A098238.P876905304107155149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 n - (A347550 n + A061358 n)

end

end A098238.P876905304107155149

/-! ## A098238.P11544915410297245564

`char[A007918(n)]+A347740(n)-A002126(n)`
-/

namespace A098238.P11544915410297245564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347740 n - A002126 n)

end

end A098238.P11544915410297245564

/-! ## A098238.P12271017828791912940

`char[A000040(n+1)]+A347740(n)-A002126(n)`
-/

namespace A098238.P12271017828791912940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347740 n - A002126 n)

end

end A098238.P12271017828791912940

/-! ## A098238.P13151515239281157757

`A347740(n)-(A002126(n)-char[A006530(n+2)])`
-/

namespace A098238.P13151515239281157757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 n - (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A098238.P13151515239281157757

/-! ## A098238.P6333847803422753483

`A347740(n)-(A002126(n)-char[A020639(n+2)])`
-/

namespace A098238.P6333847803422753483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 n - (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A098238.P6333847803422753483

/-! ## A098238.P4063567101271799936

`A347740(n)-(A002126(n)-char[p?[A014963(n+1)]])`
-/

namespace A098238.P4063567101271799936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347740 n - (A002126 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A098238.P4063567101271799936

/-!
# A098239: Numbers n such that n^3 differs from smallest k > n that makes n^6+1 divide k^6+1.

The programs for A098239, there is no canonical definition to state claims against.
-/

/-! ## A098239.P9976691116168519283

`A327968(2*n+1)+A000041(A322468(n+1))`
-/

namespace A098239.P9976691116168519283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327968 (2 * n + 1) + A000041 (A322468 (n + 1)).toNat

end

end A098239.P9976691116168519283

/-! ## A098239.P17693377234706181088

`A322530(A099243(n+1))`
-/

namespace A098239.P17693377234706181088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (A099243 (n + 1)).toNat

end

end A098239.P17693377234706181088

/-!
# A098240: Numbers k such that gcd(2k+1, numerator(Bernoulli(4k+2))) is squarefree.

The programs for A098240, there is no canonical definition to state claims against.
-/

/-! ## A098240.P11534119755789772563

`comp[A098242(n+1)-1]+1`
-/

namespace A098240.P11534119755789772563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098242 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A098240.P11534119755789772563

/-! ## A098240.P819551117874493548

`lt[A023416(A105306(n+5)), A007913(2*n+1)]`
-/

namespace A098240.P819551117874493548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A105306 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098240.P819551117874493548

/-! ## A098240.P12386536142237708053

`lt[A276086(A345940(2*n+1)), A324704(n+1)]`
-/

namespace A098240.P12386536142237708053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A345940 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098240.P12386536142237708053

/-! ## A098240.P2126511563876633039

`eq[A058281(A008833(2*n+1)), A178489(n)]`
-/

namespace A098240.P2126511563876633039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A008833 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098240.P2126511563876633039

/-! ## A098240.P12010392469669632357

`lt[A027750(A276884(n+1)), A007947(2*n+1)]`
-/

namespace A098240.P12010392469669632357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A276884 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098240.P12010392469669632357

/-! ## A098240.P2044737491190824319

`lt[A124733(A035316(2*n+1)), A276886(n+1)]`
-/

namespace A098240.P2044737491190824319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A035316 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098240.P2044737491190824319

/-! ## A098240.P10352984697489087068

`lt[A146326(A075936(n+4)), A318511(2*n+1)]`
-/

namespace A098240.P10352984697489087068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A075936 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318511 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098240.P10352984697489087068

/-! ## A098240.P2904844133398812603

`lt[A000034(A000695(2*(n+2))), A318653(2*n+1)]`
-/

namespace A098240.P2904844133398812603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000695 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318653 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098240.P2904844133398812603

/-! ## A098240.P14070783293445406991

`lt[A293520(A335324(2*n+1)), n]`
-/

namespace A098240.P14070783293445406991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293520 (A335324 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A098240.P14070783293445406991

/-!
# A098242: Numbers k such that gcd(2k+1, numerator(Bernoulli(4k+2))) is not squarefree.

The programs for A098242, there is no canonical definition to state claims against.
-/

/-! ## A098242.P11957660814708644075

`record[A057979(A067778(n+1))]`
-/

namespace A098242.P11957660814708644075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A067778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098242.P11957660814708644075

/-! ## A098242.P7669353823334628192

`eq[0, A008683(A300711(2*n+1))]`
-/

namespace A098242.P7669353823334628192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A300711 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098242.P7669353823334628192

/-! ## A098242.P5802589266965131943

`A004524(record[A000265(A067778(n+1))])`
-/

namespace A098242.P5802589266965131943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098242.P5802589266965131943

/-! ## A098242.P3093091723512369561

`A004526(record[A000265(A067778(n+1))])`
-/

namespace A098242.P3093091723512369561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098242.P3093091723512369561

/-! ## A098242.P13693686744469236953

`eq[0, A008683(A300330(4*n+2))]`
-/

namespace A098242.P13693686744469236953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A300330 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098242.P13693686744469236953

/-!
# A098243: Numbers having the same number of primitive roots that are primes == 1 or 2 (mod 4) as primes == 3 (mod 4).

The programs for A098243, there is no canonical definition to state claims against.
-/

/-! ## A098243.P17240010247256676551

`A196393(A167614(n+1))+A053828(n)`
-/

namespace A098243.P17240010247256676551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A167614 (n + 1)).toNat + A053828 n

end

end A098243.P17240010247256676551

/-!
# A098244: First differences of Chebyshev polynomials S(n,171) = A097844(n) with Diophantine property.

The programs for A098244, the canonical program `A098244.P15066488777879009765` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098244 has offset 0).

The definition of A098244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098244.P15066488777879009765

`171*a(n-1)-a(n-2)` with `a(0)=1, a(1)=170`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098244

/-- `171*a(n-1)-a(n-2)` -/
def P15066488777879009765.Spec : Prop :=
  ∀ n, P15066488777879009765.a n = A098244 n

theorem P15066488777879009765.correct : P15066488777879009765.Spec := by
  intro n
  simp only [A098244]

end A098244

/-! ## A098244.P2722329737814689206

`A140455(Δ[n²])`
-/

namespace A098244.P2722329737814689206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098244.P2722329737814689206

namespace A098244

/-- `A140455(Δ[n²])` -/
def P2722329737814689206.Spec : Prop :=
  ∀ n, P2722329737814689206.a n = A098244 n

end A098244

/-! ## A098244.P11004323615905685013

`record[A140455(n^(n%2))]`
-/

namespace A098244.P11004323615905685013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140455 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098244.P11004323615905685013

namespace A098244

/-- `record[A140455(n^(n%2))]` -/
def P11004323615905685013.Spec : Prop :=
  ∀ n, P11004323615905685013.a n = A098244 n

end A098244

/-! ## A098244.P16281332972451291026

`record[A140455((n+1)/and(n+1, -(n+1)))]`
-/

namespace A098244.P16281332972451291026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098244.P16281332972451291026

namespace A098244

/-- `record[A140455((n+1)/and(n+1, -(n+1)))]` -/
def P16281332972451291026.Spec : Prop :=
  ∀ n, P16281332972451291026.a n = A098244 n

end A098244

/-! ## A098244.P9865960756729174962

`record[A140455(A004442(n))]`
-/

namespace A098244.P9865960756729174962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140455 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098244.P9865960756729174962

namespace A098244

/-- `record[A140455(A004442(n))]` -/
def P9865960756729174962.Spec : Prop :=
  ∀ n, P9865960756729174962.a n = A098244 n

end A098244

/-!
# A098245: Chebyshev polynomials S(n,227).

The programs for A098245, the canonical program `A098245.P9653090317324793767` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098245 has offset 0).

The definition of A098245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098245.P9653090317324793767

`227*a(n-1)-a(n-2)` with `a(0)=1, a(1)=227`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098245

/-- `227*a(n-1)-a(n-2)` -/
def P9653090317324793767.Spec : Prop :=
  ∀ n, P9653090317324793767.a n = A098245 n

theorem P9653090317324793767.correct : P9653090317324793767.Spec := by
  intro n
  simp only [A098245]

end A098245

/-! ## A098245.P2594440475845287656

`∑[A098247(n)]`
-/

namespace A098245.P2594440475845287656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098245.P2594440475845287656

namespace A098245

/-- `∑[A098247(n)]` -/
def P2594440475845287656.Spec : Prop :=
  ∀ n, P2594440475845287656.a n = A098245 n

end A098245

/-! ## A098245.P3445400445754125987

`∑[A154597(Δ[n²])]`
-/

namespace A098245.P3445400445754125987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154597 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098245.P3445400445754125987

namespace A098245

/-- `∑[A154597(Δ[n²])]` -/
def P3445400445754125987.Spec : Prop :=
  ∀ n, P3445400445754125987.a n = A098245 n

end A098245

/-! ## A098245.P261446061461366691

`A098246(n)-a(n-1)` with `a(0)=1`
-/

namespace A098245.P261446061461366691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098246 n - a (n - 1)

end

end A098245.P261446061461366691

namespace A098245

/-- `A098246(n)-a(n-1)` -/
def P261446061461366691.Spec : Prop :=
  ∀ n, P261446061461366691.a n = A098245 n

end A098245

/-! ## A098245.P1853131376884107233

`∑[record[A154597(A004442(n))]]`
-/

namespace A098245.P1853131376884107233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154597 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098245.P1853131376884107233

namespace A098245

/-- `∑[record[A154597(A004442(n))]]` -/
def P1853131376884107233.Spec : Prop :=
  ∀ n, P1853131376884107233.a n = A098245 n

end A098245

/-!
# A098246: Chebyshev polynomials S(n,227) + S(n-1,227) with Diophantine property.

The programs for A098246, the canonical program `A098246.P2413303290896401093` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098246 has offset 0).

The definition of A098246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098246.P2413303290896401093

`227*a(n-1)-a(n-2)` with `a(0)=1, a(1)=228`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098246

/-- `227*a(n-1)-a(n-2)` -/
def P2413303290896401093.Spec : Prop :=
  ∀ n, P2413303290896401093.a n = A098246 n

theorem P2413303290896401093.correct : P2413303290896401093.Spec := by
  intro n
  simp only [A098246]

end A098246

/-! ## A098246.P2379322571438808173

`∑[A090301(2*n)]-1`
-/

namespace A098246.P2379322571438808173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090301 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098246.P2379322571438808173

namespace A098246

/-- `∑[A090301(2*n)]-1` -/
def P2379322571438808173.Spec : Prop :=
  ∀ n, P2379322571438808173.a n = A098246 n

end A098246

/-! ## A098246.P4049088439280764885

`2*A098245(n)-A098247(n)`
-/

namespace A098246.P4049088439280764885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098245 n - A098247 n

end

end A098246.P4049088439280764885

namespace A098246

/-- `2*A098245(n)-A098247(n)` -/
def P4049088439280764885.Spec : Prop :=
  ∀ n, P4049088439280764885.a n = A098246 n

end A098246

/-! ## A098246.P12883175423455750247

`∑[A090301(2*n)^A178334(n)]`
-/

namespace A098246.P12883175423455750247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090301 (2 * n) : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098246.P12883175423455750247

namespace A098246

/-- `∑[A090301(2*n)^A178334(n)]` -/
def P12883175423455750247.Spec : Prop :=
  ∀ n, P12883175423455750247.a n = (A098246 n : ℚ)

end A098246

/-! ## A098246.P12598345034536805198

`A057428(n+1)+∑[A090301(2*n)]`
-/

namespace A098246.P12598345034536805198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090301 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098246.P12598345034536805198

namespace A098246

/-- `A057428(n+1)+∑[A090301(2*n)]` -/
def P12598345034536805198.Spec : Prop :=
  ∀ n, P12598345034536805198.a n = A098246 n

end A098246

/-!
# A098247: First differences of Chebyshev polynomials S(n,227) = A098245(n) with Diophantine property.

The programs for A098247, the canonical program `A098247.P13068911461208040336` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098247 has offset 0).

The definition of A098247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098247.P13068911461208040336

`227*a(n-1)-a(n-2)` with `a(0)=1, a(1)=226`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098247

/-- `227*a(n-1)-a(n-2)` -/
def P13068911461208040336.Spec : Prop :=
  ∀ n, P13068911461208040336.a n = A098247 n

theorem P13068911461208040336.correct : P13068911461208040336.Spec := by
  intro n
  simp only [A098247]

end A098247

/-! ## A098247.P3711101265415085958

`A154597(Δ[n²])`
-/

namespace A098247.P3711101265415085958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154597 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098247.P3711101265415085958

namespace A098247

/-- `A154597(Δ[n²])` -/
def P3711101265415085958.Spec : Prop :=
  ∀ n, P3711101265415085958.a n = A098247 n

end A098247

/-! ## A098247.P11064305327959550861

`record[A154597(A004442(n))]`
-/

namespace A098247.P11064305327959550861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154597 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098247.P11064305327959550861

namespace A098247

/-- `record[A154597(A004442(n))]` -/
def P11064305327959550861.Spec : Prop :=
  ∀ n, P11064305327959550861.a n = A098247 n

end A098247

/-! ## A098247.P10087656042641012880

`record[A154597(A000265(n+1))]`
-/

namespace A098247.P10087656042641012880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154597 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098247.P10087656042641012880

namespace A098247

/-- `record[A154597(A000265(n+1))]` -/
def P10087656042641012880.Spec : Prop :=
  ∀ n, P10087656042641012880.a n = A098247 n

end A098247

/-! ## A098247.P9251879560932540977

`record[A154597(A065190(n+1))]`
-/

namespace A098247.P9251879560932540977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154597 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098247.P9251879560932540977

namespace A098247

/-- `record[A154597(A065190(n+1))]` -/
def P9251879560932540977.Spec : Prop :=
  ∀ n, P9251879560932540977.a n = A098247 n

end A098247

/-!
# A098248: Chebyshev polynomials S(n,291).

The programs for A098248, the canonical program `A098248.P3156529764900924120` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098248 has offset 0).

The definition of A098248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098248.P3156529764900924120

`291*a(n-1)-a(n-2)` with `a(0)=1, a(1)=291`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098248

/-- `291*a(n-1)-a(n-2)` -/
def P3156529764900924120.Spec : Prop :=
  ∀ n, P3156529764900924120.a n = A098248 n

theorem P3156529764900924120.correct : P3156529764900924120.Spec := by
  intro n
  simp only [A098248]

end A098248

/-! ## A098248.P14901964902602520547

`∑[A098250(n)]`
-/

namespace A098248.P14901964902602520547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098248.P14901964902602520547

namespace A098248

/-- `∑[A098250(n)]` -/
def P14901964902602520547.Spec : Prop :=
  ∀ n, P14901964902602520547.a n = A098248 n

end A098248

/-! ## A098248.P16759491057338373383

`A098249(n)-a(n-1)` with `a(0)=1`
-/

namespace A098248.P16759491057338373383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098249 n - a (n - 1)

end

end A098248.P16759491057338373383

namespace A098248

/-- `A098249(n)-a(n-1)` -/
def P16759491057338373383.Spec : Prop :=
  ∀ n, P16759491057338373383.a n = A098248 n

end A098248

/-!
# A098249: Chebyshev polynomials S(n,291) + S(n-1,291) with Diophantine property.

The programs for A098249, the canonical program `A098249.P9205450370090552461` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098249 has offset 0).

The definition of A098249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098249.P9205450370090552461

`291*a(n-1)-a(n-2)` with `a(0)=1, a(1)=292`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098249

/-- `291*a(n-1)-a(n-2)` -/
def P9205450370090552461.Spec : Prop :=
  ∀ n, P9205450370090552461.a n = A098249 n

theorem P9205450370090552461.correct : P9205450370090552461.Spec := by
  intro n
  simp only [A098249]

end A098249

/-! ## A098249.P11436171572387820549

`∑[A090306(2*n)]-1`
-/

namespace A098249.P11436171572387820549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090306 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098249.P11436171572387820549

namespace A098249

/-- `∑[A090306(2*n)]-1` -/
def P11436171572387820549.Spec : Prop :=
  ∀ n, P11436171572387820549.a n = A098249 n

end A098249

/-! ## A098249.P292378492317554044

`A090306(2*n+1)/17`
-/

namespace A098249.P292378492317554044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090306 (2 * n + 1) : ℚ) / 17

end

end A098249.P292378492317554044

namespace A098249

/-- `A090306(2*n+1)/17` -/
def P292378492317554044.Spec : Prop :=
  ∀ n, P292378492317554044.a n = (A098249 n : ℚ)

end A098249

/-! ## A098249.P1101244889084656460

`2*A098248(n)-A098250(n)`
-/

namespace A098249.P1101244889084656460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098248 n - A098250 n

end

end A098249.P1101244889084656460

namespace A098249

/-- `2*A098248(n)-A098250(n)` -/
def P1101244889084656460.Spec : Prop :=
  ∀ n, P1101244889084656460.a n = A098249 n

end A098249

/-! ## A098249.P13401345490500633690

`∑[A090306(2*n)^A328672(n)]`
-/

namespace A098249.P13401345490500633690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090306 (2 * n) : ℚ) ^ (A328672 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098249.P13401345490500633690

namespace A098249

/-- `∑[A090306(2*n)^A328672(n)]` -/
def P13401345490500633690.Spec : Prop :=
  ∀ n, P13401345490500633690.a n = (A098249 n : ℚ)

end A098249

/-!
# A098250: First differences of Chebyshev polynomials S(n,291) = A098248(n) with Diophantine property.

The programs for A098250, the canonical program `A098250.P6387502797944477487` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098250 has offset 0).

The definition of A098250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098250.P6387502797944477487

`291*a(n-1)-a(n-2)` with `a(0)=1, a(1)=290`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098250

/-- `291*a(n-1)-a(n-2)` -/
def P6387502797944477487.Spec : Prop :=
  ∀ n, P6387502797944477487.a n = A098250 n

theorem P6387502797944477487.correct : P6387502797944477487.Spec := by
  intro n
  simp only [A098250]

end A098250

/-!
# A098251: Chebyshev polynomials S(n,363).

The programs for A098251, the canonical program `A098251.P2114839368997196415` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098251 has offset 0).

The definition of A098251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098251.P2114839368997196415

`363*a(n-1)-a(n-2)` with `a(0)=1, a(1)=363`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098251

/-- `363*a(n-1)-a(n-2)` -/
def P2114839368997196415.Spec : Prop :=
  ∀ n, P2114839368997196415.a n = A098251 n

theorem P2114839368997196415.correct : P2114839368997196415.Spec := by
  intro n
  simp only [A098251]

end A098251

/-! ## A098251.P7585925480472797901

`∑[A098253(n)]`
-/

namespace A098251.P7585925480472797901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098251.P7585925480472797901

namespace A098251

/-- `∑[A098253(n)]` -/
def P7585925480472797901.Spec : Prop :=
  ∀ n, P7585925480472797901.a n = A098251 n

end A098251

/-! ## A098251.P982565766026079533

`∑[A243399(2*n)]`
-/

namespace A098251.P982565766026079533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243399 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098251.P982565766026079533

namespace A098251

/-- `∑[A243399(2*n)]` -/
def P982565766026079533.Spec : Prop :=
  ∀ n, P982565766026079533.a n = A098251 n

end A098251

/-! ## A098251.P12409296767465990388

`A098252(n)-a(n-1)` with `a(0)=1`
-/

namespace A098251.P12409296767465990388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098252 n - a (n - 1)

end

end A098251.P12409296767465990388

namespace A098251

/-- `A098252(n)-a(n-1)` -/
def P12409296767465990388.Spec : Prop :=
  ∀ n, P12409296767465990388.a n = A098251 n

end A098251

/-! ## A098251.P7543081493268348878

`A243399(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A098251.P7543081493268348878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243399 (n + n) + a (n - 1)

end

end A098251.P7543081493268348878

namespace A098251

/-- `A243399(n+n)+a(n-1)` -/
def P7543081493268348878.Spec : Prop :=
  ∀ n, P7543081493268348878.a n = A098251 n

end A098251

/-!
# A098252: Chebyshev polynomials S(n,363) + S(n-1,363) with Diophantine property.

The programs for A098252, the canonical program `A098252.P2887093598701480723` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098252 has offset 0).

The definition of A098252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098252.P2887093598701480723

`363*a(n-1)-a(n-2)` with `a(0)=1, a(1)=364`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098252

/-- `363*a(n-1)-a(n-2)` -/
def P2887093598701480723.Spec : Prop :=
  ∀ n, P2887093598701480723.a n = A098252 n

theorem P2887093598701480723.correct : P2887093598701480723.Spec := by
  intro n
  simp only [A098252]

end A098252

/-! ## A098252.P14149734525404228344

`∑[A090308(2*n)]-1`
-/

namespace A098252.P14149734525404228344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090308 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098252.P14149734525404228344

namespace A098252

/-- `∑[A090308(2*n)]-1` -/
def P14149734525404228344.Spec : Prop :=
  ∀ n, P14149734525404228344.a n = A098252 n

end A098252

/-! ## A098252.P9943880601330255916

`A098251(n)+A098251(n)-A098253(n)`
-/

namespace A098252.P9943880601330255916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098251 n + (A098251 n - A098253 n)

end

end A098252.P9943880601330255916

namespace A098252

/-- `A098251(n)+A098251(n)-A098253(n)` -/
def P9943880601330255916.Spec : Prop :=
  ∀ n, P9943880601330255916.a n = A098252 n

end A098252

/-! ## A098252.P14706403977459811490

`A090308(2*n+1)/19`
-/

namespace A098252.P14706403977459811490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090308 (2 * n + 1) : ℚ) / 19

end

end A098252.P14706403977459811490

namespace A098252

/-- `A090308(2*n+1)/19` -/
def P14706403977459811490.Spec : Prop :=
  ∀ n, P14706403977459811490.a n = (A098252 n : ℚ)

end A098252

/-! ## A098252.P12611279300201005560

`2*A098251(n)-A098253(n)`
-/

namespace A098252.P12611279300201005560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098251 n - A098253 n

end

end A098252.P12611279300201005560

namespace A098252

/-- `2*A098251(n)-A098253(n)` -/
def P12611279300201005560.Spec : Prop :=
  ∀ n, P12611279300201005560.a n = A098252 n

end A098252

/-!
# A098253: First differences of Chebyshev polynomials S(n,363) = A098251(n) with Diophantine property.

The programs for A098253, the canonical program `A098253.P9906465840591388870` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098253 has offset 0).

The definition of A098253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098253.P9906465840591388870

`363*a(n-1)-a(n-2)` with `a(0)=1, a(1)=362`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098253

/-- `363*a(n-1)-a(n-2)` -/
def P9906465840591388870.Spec : Prop :=
  ∀ n, P9906465840591388870.a n = A098253 n

theorem P9906465840591388870.correct : P9906465840591388870.Spec := by
  intro n
  simp only [A098253]

end A098253

/-! ## A098253.P1759938069821248807

`A243399(2*n)`
-/

namespace A098253.P1759938069821248807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243399 (2 * n)

end

end A098253.P1759938069821248807

namespace A098253

/-- `A243399(2*n)` -/
def P1759938069821248807.Spec : Prop :=
  ∀ n, P1759938069821248807.a n = A098253 n

end A098253

/-! ## A098253.P11392878186693005094

`record[A243399(n+1)^(n%2)]`
-/

namespace A098253.P11392878186693005094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243399 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098253.P11392878186693005094

namespace A098253

/-- `record[A243399(n+1)^(n%2)]` -/
def P11392878186693005094.Spec : Prop :=
  ∀ n, P11392878186693005094.a n = A098253 n

end A098253

/-! ## A098253.P7535421791846298418

`record[gcd(val(n+1, 2), A243399(n))]`
-/

namespace A098253.P7535421791846298418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A243399 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098253.P7535421791846298418

namespace A098253

/-- `record[gcd(val(n+1, 2), A243399(n))]` -/
def P7535421791846298418.Spec : Prop :=
  ∀ n, (P7535421791846298418.a n : ℤ) = A098253 n

end A098253

/-! ## A098253.P7667224437507480271

`record[A243399(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A098253.P7667224437507480271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A243399 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098253.P7667224437507480271

namespace A098253

/-- `record[A243399(C(n, a(n-1)))]` -/
def P7667224437507480271.Spec : Prop :=
  ∀ n, P7667224437507480271.a n = A098253 n

end A098253

/-!
# A098254: Chebyshev polynomials S(n,443).

The programs for A098254, the canonical program `A098254.P3298531236531634069` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098254 has offset 0).

The definition of A098254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098254.P3298531236531634069

`443*a(n-1)-a(n-2)` with `a(0)=1, a(1)=443`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098254

/-- `443*a(n-1)-a(n-2)` -/
def P3298531236531634069.Spec : Prop :=
  ∀ n, P3298531236531634069.a n = A098254 n

theorem P3298531236531634069.correct : P3298531236531634069.Spec := by
  intro n
  simp only [A098254]

end A098254

/-! ## A098254.P3124425813704685208

`∑[A098256(n)]`
-/

namespace A098254.P3124425813704685208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098254.P3124425813704685208

namespace A098254

/-- `∑[A098256(n)]` -/
def P3124425813704685208.Spec : Prop :=
  ∀ n, P3124425813704685208.a n = A098254 n

end A098254

/-! ## A098254.P12591838761808531607

`A098255(n)-a(n-1)` with `a(0)=1`
-/

namespace A098254.P12591838761808531607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098255 n - a (n - 1)

end

end A098254.P12591838761808531607

namespace A098254

/-- `A098255(n)-a(n-1)` -/
def P12591838761808531607.Spec : Prop :=
  ∀ n, P12591838761808531607.a n = A098254 n

end A098254

/-! ## A098254.P2447853173401272708

`(A098256(n)+A098255(n))/2`
-/

namespace A098254.P2447853173401272708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098256 n + A098255 n : ℚ) / 2

end

end A098254.P2447853173401272708

namespace A098254

/-- `(A098256(n)+A098255(n))/2` -/
def P2447853173401272708.Spec : Prop :=
  ∀ n, P2447853173401272708.a n = (A098254 n : ℚ)

end A098254

/-! ## A098254.P11810856668314386857

`A098256(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A098254.P11810856668314386857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098256 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A098254.P11810856668314386857

namespace A098254

/-- `A098256(A000038(n)+n)+a(n-1)` -/
def P11810856668314386857.Spec : Prop :=
  ∀ n, P11810856668314386857.a n = A098254 n

end A098254

/-!
# A098255: Chebyshev polynomials S(n,443) + S(n-1,443) with Diophantine property.

The programs for A098255, the canonical program `A098255.P18407093103437376662` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098255 has offset 0).

The definition of A098255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098255.P18407093103437376662

`443*a(n-1)-a(n-2)` with `a(0)=1, a(1)=444`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098255

/-- `443*a(n-1)-a(n-2)` -/
def P18407093103437376662.Spec : Prop :=
  ∀ n, P18407093103437376662.a n = A098255 n

theorem P18407093103437376662.correct : P18407093103437376662.Spec := by
  intro n
  simp only [A098255]

end A098255

/-! ## A098255.P605256612763338747

`∑[A090310(2*n)]-1`
-/

namespace A098255.P605256612763338747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098255.P605256612763338747

namespace A098255

/-- `∑[A090310(2*n)]-1` -/
def P605256612763338747.Spec : Prop :=
  ∀ n, P605256612763338747.a n = A098255 n

end A098255

/-! ## A098255.P10030300682292902931

`A090310(2*n+1)/21`
-/

namespace A098255.P10030300682292902931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090310 (2 * n + 1) : ℚ) / 21

end

end A098255.P10030300682292902931

namespace A098255

/-- `A090310(2*n+1)/21` -/
def P10030300682292902931.Spec : Prop :=
  ∀ n, P10030300682292902931.a n = (A098255 n : ℚ)

end A098255

/-! ## A098255.P4749304547273022467

`2*A098254(n)-A098256(n)`
-/

namespace A098255.P4749304547273022467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098254 n - A098256 n

end

end A098255.P4749304547273022467

namespace A098255

/-- `2*A098254(n)-A098256(n)` -/
def P4749304547273022467.Spec : Prop :=
  ∀ n, P4749304547273022467.a n = A098255 n

end A098255

/-! ## A098255.P3973470015461342866

`A057428(n+1)+∑[A090310(2*n)]`
-/

namespace A098255.P3973470015461342866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098255.P3973470015461342866

namespace A098255

/-- `A057428(n+1)+∑[A090310(2*n)]` -/
def P3973470015461342866.Spec : Prop :=
  ∀ n, P3973470015461342866.a n = A098255 n

end A098255

/-!
# A098256: First differences of Chebyshev polynomials S(n,443) = A098254(n) with Diophantine property.

The programs for A098256, the canonical program `A098256.P625887769665560110` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098256 has offset 0).

The definition of A098256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098256.P625887769665560110

`443*a(n-1)-a(n-2)` with `a(0)=1, a(1)=442`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098256

/-- `443*a(n-1)-a(n-2)` -/
def P625887769665560110.Spec : Prop :=
  ∀ n, P625887769665560110.a n = A098256 n

theorem P625887769665560110.correct : P625887769665560110.Spec := by
  intro n
  simp only [A098256]

end A098256

/-! ## A098256.P12471510183862063075

`2*A098254(n)-A098255(n)`
-/

namespace A098256.P12471510183862063075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098254 n - A098255 n

end

end A098256.P12471510183862063075

namespace A098256

/-- `2*A098254(n)-A098255(n)` -/
def P12471510183862063075.Spec : Prop :=
  ∀ n, P12471510183862063075.a n = A098256 n

end A098256

/-! ## A098256.P2982996299484236903

`Δ[A098255(n)-A098254(n)]`
-/

namespace A098256.P2982996299484236903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098255 n - A098254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098256.P2982996299484236903

namespace A098256

/-- `Δ[A098255(n)-A098254(n)]` -/
def P2982996299484236903.Spec : Prop :=
  ∀ n, P2982996299484236903.a n = A098256 n

end A098256

/-! ## A098256.P4953676081091326153

`Δ[A090310(A005408(n))/21-A098254(n)]`
-/

namespace A098256.P4953676081091326153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090310 (A005408 n).toNat : ℚ) / 21 - (A098254 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098256.P4953676081091326153

namespace A098256

/-- `Δ[A090310(A005408(n))/21-A098254(n)]` -/
def P4953676081091326153.Spec : Prop :=
  ∀ n, P4953676081091326153.a n = (A098256 n : ℚ)

end A098256

/-! ## A098256.P4282605512874216094

`Δ[A098254(n+1)]%A098255(n+1)`
-/

namespace A098256.P4282605512874216094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A098255 (n + 1))

end

end A098256.P4282605512874216094

namespace A098256

/-- `Δ[A098254(n+1)]%A098255(n+1)` -/
def P4282605512874216094.Spec : Prop :=
  ∀ n, P4282605512874216094.a n = A098256 n

end A098256

/-!
# A098257: Chebyshev polynomials S(n,531).

The programs for A098257, the canonical program `A098257.P996974283201700165` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098257 has offset 0).

The definition of A098257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098257.P996974283201700165

`531*a(n-1)-a(n-2)` with `a(0)=1, a(1)=531`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098257

/-- `531*a(n-1)-a(n-2)` -/
def P996974283201700165.Spec : Prop :=
  ∀ n, P996974283201700165.a n = A098257 n

theorem P996974283201700165.correct : P996974283201700165.Spec := by
  intro n
  simp only [A098257]

end A098257

/-! ## A098257.P4153893004501703529

`∑[A098259(n)]`
-/

namespace A098257.P4153893004501703529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098257.P4153893004501703529

namespace A098257

/-- `∑[A098259(n)]` -/
def P4153893004501703529.Spec : Prop :=
  ∀ n, P4153893004501703529.a n = A098257 n

end A098257

/-! ## A098257.P4252761636215819349

`A098258(n)-a(n-1)` with `a(0)=1`
-/

namespace A098257.P4252761636215819349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098258 n - a (n - 1)

end

end A098257.P4252761636215819349

namespace A098257

/-- `A098258(n)-a(n-1)` -/
def P4252761636215819349.Spec : Prop :=
  ∀ n, P4252761636215819349.a n = A098257 n

end A098257

/-!
# A098258: Chebyshev polynomials S(n,531) + S(n-1,531) with Diophantine property.

The programs for A098258, the canonical program `A098258.P4023733121870847273` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098258 has offset 0).

The definition of A098258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098258.P4023733121870847273

`531*a(n-1)-a(n-2)` with `a(0)=1, a(1)=532`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098258

/-- `531*a(n-1)-a(n-2)` -/
def P4023733121870847273.Spec : Prop :=
  ∀ n, P4023733121870847273.a n = A098258 n

theorem P4023733121870847273.correct : P4023733121870847273.Spec := by
  intro n
  simp only [A098258]

end A098258

/-! ## A098258.P16399703421243946034

`∑[A090314(2*n)]-1`
-/

namespace A098258.P16399703421243946034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090314 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098258.P16399703421243946034

namespace A098258

/-- `∑[A090314(2*n)]-1` -/
def P16399703421243946034.Spec : Prop :=
  ∀ n, P16399703421243946034.a n = A098258 n

end A098258

/-! ## A098258.P12148061631799210779

`∑[2*A098259(n)]-A098259(n)`
-/

namespace A098258.P12148061631799210779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098259 n

end

end A098258.P12148061631799210779

namespace A098258

/-- `∑[2*A098259(n)]-A098259(n)` -/
def P12148061631799210779.Spec : Prop :=
  ∀ n, P12148061631799210779.a n = A098258 n

end A098258

/-! ## A098258.P8429764343084826445

`A098257(2*n)/A098259(n)`
-/

namespace A098258.P8429764343084826445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098257 (2 * n) : ℚ) / (A098259 n : ℚ)

end

end A098258.P8429764343084826445

namespace A098258

/-- `A098257(2*n)/A098259(n)` -/
def P8429764343084826445.Spec : Prop :=
  ∀ n, P8429764343084826445.a n = (A098258 n : ℚ)

end A098258

/-!
# A098259: First differences of Chebyshev polynomials S(n,531) = A098257(n) with Diophantine property.

The programs for A098259, the canonical program `A098259.P13874055713567301778` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098259 has offset 0).

The definition of A098259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098259.P13874055713567301778

`531*a(n-1)-a(n-2)` with `a(0)=1, a(1)=530`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098259

/-- `531*a(n-1)-a(n-2)` -/
def P13874055713567301778.Spec : Prop :=
  ∀ n, P13874055713567301778.a n = A098259 n

theorem P13874055713567301778.correct : P13874055713567301778.Spec := by
  intro n
  simp only [A098259]

end A098259

/-! ## A098259.P2719227863221027262

`2*A098257(n)-A098258(n)`
-/

namespace A098259.P2719227863221027262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098257 n - A098258 n

end

end A098259.P2719227863221027262

namespace A098259

/-- `2*A098257(n)-A098258(n)` -/
def P2719227863221027262.Spec : Prop :=
  ∀ n, P2719227863221027262.a n = A098259 n

end A098259

/-! ## A098259.P16147602917719249497

`Δ[A098258(n)-A098257(n)]`
-/

namespace A098259.P16147602917719249497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098258 n - A098257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098259.P16147602917719249497

namespace A098259

/-- `Δ[A098258(n)-A098257(n)]` -/
def P16147602917719249497.Spec : Prop :=
  ∀ n, P16147602917719249497.a n = A098259 n

end A098259

/-! ## A098259.P2072884498859586630

`Δ[∑[A090314(2*n)]-1-A098257(n)]`
-/

namespace A098259.P2072884498859586630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090314 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1 - A098257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098259.P2072884498859586630

namespace A098259

/-- `Δ[∑[A090314(2*n)]-1-A098257(n)]` -/
def P2072884498859586630.Spec : Prop :=
  ∀ n, P2072884498859586630.a n = A098259 n

end A098259

/-! ## A098259.P16133920649937848727

`A098257(2*n)/A098258(n)`
-/

namespace A098259.P16133920649937848727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098257 (2 * n) : ℚ) / (A098258 n : ℚ)

end

end A098259.P16133920649937848727

namespace A098259

/-- `A098257(2*n)/A098258(n)` -/
def P16133920649937848727.Spec : Prop :=
  ∀ n, P16133920649937848727.a n = (A098259 n : ℚ)

end A098259

/-!
# A098260: Chebyshev polynomials S(n,627).

The programs for A098260, the canonical program `A098260.P3983427837256292027` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098260 has offset 0).

The definition of A098260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098260.P3983427837256292027

`627*a(n-1)-a(n-2)` with `a(0)=1, a(1)=627`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098260

/-- `627*a(n-1)-a(n-2)` -/
def P3983427837256292027.Spec : Prop :=
  ∀ n, P3983427837256292027.a n = A098260 n

theorem P3983427837256292027.correct : P3983427837256292027.Spec := by
  intro n
  simp only [A098260]

end A098260

/-! ## A098260.P2408231568787323640

`∑[A098262(n)]`
-/

namespace A098260.P2408231568787323640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098260.P2408231568787323640

namespace A098260

/-- `∑[A098262(n)]` -/
def P2408231568787323640.Spec : Prop :=
  ∀ n, P2408231568787323640.a n = A098260 n

end A098260

/-! ## A098260.P17620186281361713045

`A098261(n)-a(n-1)` with `a(0)=1`
-/

namespace A098260.P17620186281361713045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098261 n - a (n - 1)

end

end A098260.P17620186281361713045

namespace A098260

/-- `A098261(n)-a(n-1)` -/
def P17620186281361713045.Spec : Prop :=
  ∀ n, P17620186281361713045.a n = A098260 n

end A098260

/-!
# A098261: Chebyshev polynomials S(n,627) + S(n-1,627) with Diophantine property.

The programs for A098261, the canonical program `A098261.P12818020530011837209` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098261 has offset 0).

The definition of A098261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098261.P12818020530011837209

`627*a(n-1)-a(n-2)` with `a(0)=1, a(1)=628`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098261

/-- `627*a(n-1)-a(n-2)` -/
def P12818020530011837209.Spec : Prop :=
  ∀ n, P12818020530011837209.a n = A098261 n

theorem P12818020530011837209.correct : P12818020530011837209.Spec := by
  intro n
  simp only [A098261]

end A098261

/-! ## A098261.P17306082729927689695

`∑[A330767(2*n)]-1`
-/

namespace A098261.P17306082729927689695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330767 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098261.P17306082729927689695

namespace A098261

/-- `∑[A330767(2*n)]-1` -/
def P17306082729927689695.Spec : Prop :=
  ∀ n, P17306082729927689695.a n = A098261 n

end A098261

/-! ## A098261.P16092254264169984156

`∑[2*A098262(n)]-A098262(n)`
-/

namespace A098261.P16092254264169984156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098262 n

end

end A098261.P16092254264169984156

namespace A098261

/-- `∑[2*A098262(n)]-A098262(n)` -/
def P16092254264169984156.Spec : Prop :=
  ∀ n, P16092254264169984156.a n = A098261 n

end A098261

/-!
# A098262: First differences of Chebyshev polynomials S(n,627) = A098260(n) with Diophantine property.

The programs for A098262, the canonical program `A098262.P539042054027791187` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098262 has offset 0).

The definition of A098262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098262.P539042054027791187

`627*a(n-1)-a(n-2)` with `a(0)=1, a(1)=626`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098262

/-- `627*a(n-1)-a(n-2)` -/
def P539042054027791187.Spec : Prop :=
  ∀ n, P539042054027791187.a n = A098262 n

theorem P539042054027791187.correct : P539042054027791187.Spec := by
  intro n
  simp only [A098262]

end A098262

/-! ## A098262.P677435350230506076

`2*A098260(n)-A098261(n)`
-/

namespace A098262.P677435350230506076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098260 n - A098261 n

end

end A098262.P677435350230506076

namespace A098262

/-- `2*A098260(n)-A098261(n)` -/
def P677435350230506076.Spec : Prop :=
  ∀ n, P677435350230506076.a n = A098262 n

end A098262

/-! ## A098262.P17045397952224219157

`Δ[A098261(n)-A098260(n)]`
-/

namespace A098262.P17045397952224219157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098261 n - A098260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098262.P17045397952224219157

namespace A098262

/-- `Δ[A098261(n)-A098260(n)]` -/
def P17045397952224219157.Spec : Prop :=
  ∀ n, P17045397952224219157.a n = A098262 n

end A098262

/-!
# A098263: Chebyshev polynomials S(n,731).

The programs for A098263, the canonical program `A098263.P6581845623962197592` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098263 has offset 0).

The definition of A098263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098263.P6581845623962197592

`731*a(n-1)-a(n-2)` with `a(0)=1, a(1)=731`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098263

/-- `731*a(n-1)-a(n-2)` -/
def P6581845623962197592.Spec : Prop :=
  ∀ n, P6581845623962197592.a n = A098263 n

theorem P6581845623962197592.correct : P6581845623962197592.Spec := by
  intro n
  simp only [A098263]

end A098263

/-! ## A098263.P16723763806388241976

`∑[A098292(n)]`
-/

namespace A098263.P16723763806388241976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098263.P16723763806388241976

namespace A098263

/-- `∑[A098292(n)]` -/
def P16723763806388241976.Spec : Prop :=
  ∀ n, P16723763806388241976.a n = A098263 n

end A098263

/-! ## A098263.P12802816402219923280

`A098291(n)-a(n-1)` with `a(0)=1`
-/

namespace A098263.P12802816402219923280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098291 n - a (n - 1)

end

end A098263.P12802816402219923280

namespace A098263

/-- `A098291(n)-a(n-1)` -/
def P12802816402219923280.Spec : Prop :=
  ∀ n, P12802816402219923280.a n = A098263 n

end A098263

/-!
# A098264: G.f.: 1/(1-2x-19x^2)^(1/2).

The programs for A098264, there is no canonical definition to state claims against.
-/

/-! ## A098264.P12408614629585909931

`A110180(A000124(n+6)-(n+2))`
-/

namespace A098264.P12408614629585909931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A098264.P12408614629585909931

/-! ## A098264.P11910792206818627610

`A110180(A161680(n+7)-(n+1))`
-/

namespace A098264.P11910792206818627610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A098264.P11910792206818627610

/-! ## A098264.P6462902300938785452

`A307855(A055999(n+3))`
-/

namespace A098264.P6462902300938785452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A055999 (n + 3)).toNat

end

end A098264.P6462902300938785452

/-! ## A098264.P1734204185798815514

`A307855(A000096(n+5)-5)`
-/

namespace A098264.P1734204185798815514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A000096 (n + 5) - 5).toNat

end

end A098264.P1734204185798815514

/-! ## A098264.P17629219488314194624

`A307855(A004275(n+4)+A000096(n+3))`
-/

namespace A098264.P17629219488314194624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A004275 (n + 4) + A000096 (n + 3)).toNat

end

end A098264.P17629219488314194624

/-!
# A098265: G.f. : 1/(1-2x-23x^2)^(1/2).

The programs for A098265, there is no canonical definition to state claims against.
-/

/-! ## A098265.P16146645320436485614

`A110180(eq[6, A002262(n)])`
-/

namespace A098265.P16146645320436485614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098265.P16146645320436485614

/-! ## A098265.P11771572476827640919

`A110180(A000096(n+5)+7)`
-/

namespace A098265.P11771572476827640919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A000096 (n + 5) + 7).toNat

end

end A098265.P11771572476827640919

/-! ## A098265.P12051431948931696973

`A307855(Δ[Δ[A055832(n+5)]])`
-/

namespace A098265.P12051431948931696973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (f1 (n + 1) - f1 n).toNat

end

end A098265.P12051431948931696973

/-! ## A098265.P3906495251451643972

`A307855(A005408(n+3)+A000096(n+4))`
-/

namespace A098265.P3906495251451643972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A005408 (n + 3) + A000096 (n + 4)).toNat

end

end A098265.P3906495251451643972

/-! ## A098265.P18017340794793282513

`A307855(A000096(n+5)-A024000(n+2))`
-/

namespace A098265.P18017340794793282513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A000096 (n + 5) - A024000 (n + 2)).toNat

end

end A098265.P18017340794793282513

/-!
# A098266: a(1)=0; for i>=1, a(i+1)=position of first occurrence of a(i) in decimal expansion of e.

The programs for A098266, there is no canonical definition to state claims against.
-/

/-! ## A098266.P8666212488148185356

`A078197(a(n-1))` with `a(0)=0`
-/

namespace A098266.P8666212488148185356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078197 (a (n - 1)).toNat

end

end A098266.P8666212488148185356

/-!
# A098268: Unique prime factors of 2^n+1 are of the form kn+1. These are the values for k.

The programs for A098268, there is no canonical definition to state claims against.
-/

/-! ## A098268.P10736682981114603336

`ceil(A006530(A109613(2^(n+1)))/(n+1))-1`
-/

namespace A098268.P10736682981114603336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (A109613 (2 ^ (n + 1))).toNat : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A098268.P10736682981114603336

/-!
# A098269: a(n) = 2^n*P_n(4), 2^n times the Legendre polynomial of order n at 4.

The programs for A098269, there is no canonical definition to state claims against.
-/

/-! ## A098269.P12492626434580818653

`A110124(∑[n+3]+11+n)`
-/

namespace A098269.P12492626434580818653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110124 (∑ j ∈ Finset.range (n + 1), f1 j + 11 + n)

end

end A098269.P12492626434580818653

/-!
# A098270: a(n) = 2^n*P_n(5), 2^n times the Legendre polynomial of order n at 5.

The programs for A098270, there is no canonical definition to state claims against.
-/

/-! ## A098270.P6377111033439104567

`2^n*A006442(n)`
-/

namespace A098270.P6377111033439104567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006442 n

end

end A098270.P6377111033439104567

/-! ## A098270.P2046082133900881703

`lcm(∑[A011782(n)], A006442(n))`
-/

namespace A098270.P2046082133900881703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A006442 n)

end

end A098270.P2046082133900881703

/-! ## A098270.P2693223035505427438

`A006442(n)*A011782(n+1)`
-/

namespace A098270.P2693223035505427438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006442 n * A011782 (n + 1)

end

end A098270.P2693223035505427438

/-! ## A098270.P8265317365149612033

`A006442(n)*A131575(2*n+1)`
-/

namespace A098270.P8265317365149612033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006442 n * A131575 (2 * n + 1)

end

end A098270.P8265317365149612033

/-! ## A098270.P17728683997618591619

`A059473(∑[4*n])`
-/

namespace A098270.P17728683997618591619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059473 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098270.P17728683997618591619

/-! ## A098270.P3561590951462694078

`A000079(n)*A121574(∑[4*n])`
-/

namespace A098270.P3561590951462694078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A121574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098270.P3561590951462694078

/-!
# A098271: Nonprime numbers n such that phi(n) divides n^2 - 1, where phi(n) (A000010) is Euler's totient function.

The programs for A098271, there is no canonical definition to state claims against.
-/

/-! ## A098271.P12565792333085649627

`record[A171435(A097605(n+1))]`
-/

namespace A098271.P12565792333085649627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A097605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098271.P12565792333085649627

/-! ## A098271.P1555874447029100734

`∩[A050384(n+1), A097605(n+1)]`
-/

namespace A098271.P1555874447029100734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098271.P1555874447029100734

/-! ## A098271.P1982897285513273465

`∩[A067800(n+1), A097605(n+1)]`
-/

namespace A098271.P1982897285513273465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098271.P1982897285513273465

/-! ## A098271.P2408169370569452081

`∩[A014076(n+1), A097605(n+1)]`
-/

namespace A098271.P2408169370569452081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098271.P2408169370569452081

/-! ## A098271.P356308250520099716

`∩[A000469(n+1), A097605(n+1)]`
-/

namespace A098271.P356308250520099716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098271.P356308250520099716

/-!
# A098272: a(n) = 2^(2n+1) * binomial(3n,n)/(2n+1).

The programs for A098272, the canonical program `A098272.P12307376617500137133` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098272 has offset 0).

The definition of A098272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098272.P12307376617500137133

`2^(2*n+1)*A001764(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098272

/-- `2^(2*n+1)*A001764(n)` -/
def P12307376617500137133.Spec : Prop :=
  ∀ n, P12307376617500137133.a n = A098272 n

theorem P12307376617500137133.correct : P12307376617500137133.Spec := by
  intro n
  simp only [A098272]

end A098272

/-! ## A098272.P6144482627806796669

`2^(2*n+1)*C(3*n, n)/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098272.P6144482627806796669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) * Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)

end

end A098272.P6144482627806796669

namespace A098272

/-- `2^(2*n+1)*C(3*n, n)/(2*n+1)` -/
def P6144482627806796669.Spec : Prop :=
  ∀ n, P6144482627806796669.a n = (A098272 n : ℚ)

end A098272

/-! ## A098272.P17592912070399272160

`2*(n+1)*A006335(n)`
-/

namespace A098272.P17592912070399272160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A006335 n)

end

end A098272.P17592912070399272160

namespace A098272

/-- `2*(n+1)*A006335(n)` -/
def P17592912070399272160.Spec : Prop :=
  ∀ n, P17592912070399272160.a n = A098272 n

end A098272

/-! ## A098272.P16100943470447068602

`2^(n+1)*A153231(n)`
-/

namespace A098272.P16100943470447068602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A153231 n

end

end A098272.P16100943470447068602

namespace A098272

/-- `2^(n+1)*A153231(n)` -/
def P16100943470447068602.Spec : Prop :=
  ∀ n, P16100943470447068602.a n = A098272 n

end A098272

/-! ## A098272.P15728247450133853308

`2*4^n*A001764(n)`
-/

namespace A098272.P15728247450133853308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((4 ^ n : ℤ) * A001764 n)

end

end A098272.P15728247450133853308

namespace A098272

/-- `2*4^n*A001764(n)` -/
def P15728247450133853308.Spec : Prop :=
  ∀ n, P15728247450133853308.a n = A098272 n

end A098272

/-! ## A098272.P4078218900781171807

`2*4^n*A047749(2*n)`
-/

namespace A098272.P4078218900781171807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((4 ^ n : ℤ) * A047749 (2 * n))

end

end A098272.P4078218900781171807

namespace A098272

/-- `2*4^n*A047749(2*n)` -/
def P4078218900781171807.Spec : Prop :=
  ∀ n, P4078218900781171807.a n = A098272 n

end A098272

/-! ## A098272.P16917678757385580880

`A001764(n)*A004171(n)`
-/

namespace A098272.P16917678757385580880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A004171 n

end

end A098272.P16917678757385580880

namespace A098272

/-- `A001764(n)*A004171(n)` -/
def P16917678757385580880.Spec : Prop :=
  ∀ n, P16917678757385580880.a n = A098272 n

end A098272

/-! ## A098272.P7966581380992903965

`Δ[A002378(n)]*A006335(n)`
-/

namespace A098272.P7966581380992903965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006335 n

end

end A098272.P7966581380992903965

namespace A098272

/-- `Δ[A002378(n)]*A006335(n)` -/
def P7966581380992903965.Spec : Prop :=
  ∀ n, P7966581380992903965.a n = A098272 n

end A098272

/-! ## A098272.P8074838945007123430

`2*A001764(n)*A171449(n)²`
-/

namespace A098272.P8074838945007123430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001764 n * A171449 n ^ 2

end

end A098272.P8074838945007123430

namespace A098272

/-- `2*A001764(n)*A171449(n)²` -/
def P8074838945007123430.Spec : Prop :=
  ∀ n, P8074838945007123430.a n = A098272 n

end A098272

/-!
# A098273: Array by antidiagonals: Number of planar lattice walks of length 3n+2k starting at (0,0) and ending at (k,0), remaining in the first quadrant and using only NE,W,S steps.

The programs for A098273, there is no canonical definition to state claims against.
-/

/-! ## A098273.P17847047378627906333

`A000005(n!)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A098273.P17847047378627906333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.factorial n) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A098273.P17847047378627906333

/-! ## A098273.P1363139273094048192

`A000005(n!)/A119502(n)`
-/

namespace A098273.P1363139273094048192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.factorial n) : ℚ) / (A119502 n : ℚ)

end

end A098273.P1363139273094048192

/-! ## A098273.P7902617234446850527

`A000005(n!)/A025581(n)!`
-/

namespace A098273.P7902617234446850527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.factorial n) : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A098273.P7902617234446850527

/-! ## A098273.P9375071825387833618

`A000005(n!)/A107106(n+1)`
-/

namespace A098273.P9375071825387833618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.factorial n) : ℚ) / (A107106 (n + 1) : ℚ)

end

end A098273.P9375071825387833618

/-! ## A098273.P17036177521783296469

`A000005(n!)/A025660(n+1)!`
-/

namespace A098273.P17036177521783296469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.factorial n) : ℚ) / (Nat.factorial (A025660 (n + 1)).toNat : ℚ)

end

end A098273.P17036177521783296469

/-!
# A098276: Difference between the number of even reduced Latin rectangles of size 3 X n and the number of odd ones.

The programs for A098276, there is no canonical definition to state claims against.
-/

/-! ## A098276.P4939526612914537945

`A052275(A052322(n+1))*A317302(2*(n+2))`
-/

namespace A098276.P4939526612914537945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052275 (A052322 (n + 1)).toNat * A317302 (2 * (n + 2))

end

end A098276.P4939526612914537945

/-!
# A098278: D(n,0)/2^n, where D(n,x) is triangle A098277.

The programs for A098278, there is no canonical definition to state claims against.
-/

/-! ## A098278.P12716161680469791984

`A098431(n)/A000079(n)`
-/

namespace A098278.P12716161680469791984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098431 n : ℚ) / (A000079 n : ℚ)

end

end A098278.P12716161680469791984

/-! ## A098278.P8949572207657080830

`A098431(n)/sqrt(A000302(n))`
-/

namespace A098278.P8949572207657080830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098431 n : ℝ) / Real.sqrt (A000302 n : ℝ)

end

end A098278.P8949572207657080830

/-! ## A098278.P16423802748067442389

`A098431(n)/Δ[A000225(n)]`
-/

namespace A098278.P16423802748067442389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098431 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A098278.P16423802748067442389

/-! ## A098278.P18300709275999134273

`A098431(n)/record[A057728(n+1)]`
-/

namespace A098278.P18300709275999134273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098431 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A098278.P18300709275999134273

/-! ## A098278.P1070740130724229918

`A098431(n)/A057728(A167614(n+1))`
-/

namespace A098278.P1070740130724229918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098431 n : ℚ) / (A057728 (A167614 (n + 1)).toNat : ℚ)

end

end A098278.P1070740130724229918

/-!
# A098279: a(n) = D(n,1)/2^n, where D(n,x) is triangle A098277.

The programs for A098279, there is no canonical definition to state claims against.
-/

/-! ## A098279.P17480666370426517494

`A020639(A008131(n))*A221972(n)`
-/

namespace A098279.P17480666370426517494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008131 n).toNat * A221972 n

end

end A098279.P17480666370426517494

/-! ## A098279.P8908790560290563795

`A020639(A008574(n))*A221972(n)`
-/

namespace A098279.P8908790560290563795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A221972 n

end

end A098279.P8908790560290563795

/-! ## A098279.P295100012550072345

`A020639(A013598(n))*A221972(n)`
-/

namespace A098279.P295100012550072345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013598 n).toNat * A221972 n

end

end A098279.P295100012550072345

/-! ## A098279.P13249512298808303735

`A000005(A008578(n+1))*A221972(n)`
-/

namespace A098279.P13249512298808303735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A221972 n

end

end A098279.P13249512298808303735

/-! ## A098279.P15771628120765503229

`A000005(A293394(n+1))*A221972(n)`
-/

namespace A098279.P15771628120765503229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A293394 (n + 1)).toNat * A221972 n

end

end A098279.P15771628120765503229

/-!
# A098280: Front-to-back insertion-permutation sequence.

The programs for A098280, there is no canonical definition to state claims against.
-/

/-! ## A098280.P8527408175747579504

`A286804(A191726(3*n+5))+A001221(n+1)`
-/

namespace A098280.P8527408175747579504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286804 (A191726 (3 * n + 5)).toNat + A001221 (n + 1)

end

end A098280.P8527408175747579504

/-! ## A098280.P8365746484478115288

`A297155(n+1)+A000034(A123645(n))`
-/

namespace A098280.P8365746484478115288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) + A000034 (A123645 (n + 35)).toNat

end

end A098280.P8365746484478115288

/-! ## A098280.P3974294726342937461

`A351202(n+1)+A000035(A123645(n))`
-/

namespace A098280.P3974294726342937461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (n + 1) + A000035 (A123645 (n + 35)).toNat

end

end A098280.P3974294726342937461

/-! ## A098280.P7232395815023440877

`A005680(xor(A102113(n), A344157(n+1)))`
-/

namespace A098280.P7232395815023440877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (Int.xor (A102113 n) (A344157 (n + 1))).toNat

end

end A098280.P7232395815023440877

/-! ## A098280.P6282685975027408524

`A259936(n+1)+A071981(A005179(n+1))`
-/

namespace A098280.P6282685975027408524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (n + 1) + A071981 (A005179 (n + 1)).toNat

end

end A098280.P6282685975027408524

/-!
# A098281: Back-to-front insertion-permutation sequence.

The programs for A098281, there is no canonical definition to state claims against.
-/

/-! ## A098281.P2717457599607745420

`A001221(A000032(or(4, A274315(n+1))))`
-/

namespace A098281.P2717457599607745420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000032 (Int.lor 4 (A274315 (n + 1))).toNat).toNat

end

end A098281.P2717457599607745420

/-! ## A098281.P3230454307412275852

`A207324(record[A260999(n+1)])`
-/

namespace A098281.P3230454307412275852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098281.P3230454307412275852

/-! ## A098281.P5465014549948915510

`A001221(A287206(n)+A194268(n))`
-/

namespace A098281.P5465014549948915510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A287206 n + A194268 n).toNat

end

end A098281.P5465014549948915510

/-! ## A098281.P12858798940956988048

`gcd(A001221(A068629(n+1)), A331952(n))`
-/

namespace A098281.P12858798940956988048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A068629 (n + 1)).toNat) (A331952 n)

end

end A098281.P12858798940956988048

/-! ## A098281.P12576607790159992773

`gcd(A138529(A007947(n+2)), A176526(3*n+5))`
-/

namespace A098281.P12576607790159992773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138529 (A007947 (n + 2)).toNat) (A176526 (3 * n + 5))

end

end A098281.P12576607790159992773

/-!
# A098282: Iterate the map k -> A087712(k) starting at n; a(n) is the number of steps at which we see a repeated term for the first time; or -1 if the trajectory never repeats.

The programs for A098282, there is no canonical definition to state claims against.
-/

/-! ## A098282.P16952704217929181544

`A156055(n+1)+A000520(A145078(n+1))`
-/

namespace A098282.P16952704217929181544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156055 (n + 1) + A000520 (A145078 (n + 1)).toNat

end

end A098282.P16952704217929181544

/-! ## A098282.P12222541097099495500

`A323022(A145078(n+1)²)+A156055(n+1)`
-/

namespace A098282.P12222541097099495500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A145078 (n + 1) ^ 2).toNat + A156055 (n + 1)

end

end A098282.P12222541097099495500

/-! ## A098282.P6513679855170411636

`A178334(A145078(n+1)-1)+A156055(n+1)`
-/

namespace A098282.P6513679855170411636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A145078 (n + 1) - 1).toNat + A156055 (n + 1)

end

end A098282.P6513679855170411636

/-! ## A098282.P16593846772049787571

`A156055(n+1)+A178334(n)%A145078(n+1)`
-/

namespace A098282.P16593846772049787571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156055 (n + 1) + Int.tmod (A178334 n) (A145078 (n + 1))

end

end A098282.P16593846772049787571

/-! ## A098282.P13710542127402351351

`A145079(n+1)+A156055(n+1)-A156055(A145078(n+1))`
-/

namespace A098282.P13710542127402351351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145079 (n + 1) + (A156055 (n + 1) - A156055 (A145078 (n + 1)).toNat)

end

end A098282.P13710542127402351351

/-!
# A098284: Minimal triangular arrangement of natural numbers such that each number has only coprime neighbors.

The programs for A098284, there is no canonical definition to state claims against.
-/

/-! ## A098284.P16114653394099026263

`A098285(A098286(n+1))`
-/

namespace A098284.P16114653394099026263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098285 (A098286 (n + 1)).toNat

end

end A098284.P16114653394099026263

/-! ## A098284.P10642747739659695039

`A098286(A098285(-xor(n, -1)))`
-/

namespace A098284.P10642747739659695039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A098285 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A098284.P10642747739659695039

/-! ## A098284.P2924464999767373846

`A098286(A098285(Δ[n²]-n))`
-/

namespace A098284.P2924464999767373846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A098285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A098284.P2924464999767373846

/-!
# A098285: A098284(A098284(n)).

The programs for A098285, there is no canonical definition to state claims against.
-/

/-! ## A098285.P1737264880282387509

`A098284(A098284(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098285.P1737264880282387509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098284 (A098284 (n + 1)).toNat

end

end A098285.P1737264880282387509

/-!
# A098286: Inverse of A098284.

The programs for A098286, there is no canonical definition to state claims against.
-/

/-! ## A098286.P12509168803533521760

`A098287(A098284(n+1))`
-/

namespace A098286.P12509168803533521760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (A098284 (n + 1)).toNat

end

end A098286.P12509168803533521760

/-! ## A098286.P4011140533068052644

`A098284(A098287(-xor(n, -1)))`
-/

namespace A098286.P4011140533068052644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098284 (A098287 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A098286.P4011140533068052644

/-! ## A098286.P12008668225900537853

`A098284(A098287(Δ[n²]-n))`
-/

namespace A098286.P12008668225900537853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098284 (A098287 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A098286.P12008668225900537853

/-! ## A098286.P6857326255316823175

`ceil(sin(n)²)!*A098284(A098287(1-(n-2*n)))`
-/

namespace A098286.P6857326255316823175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌈Real.sin (n : ℝ) ^ 2⌉.toNat : ℤ) * A098284 (A098287 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A098286.P6857326255316823175

/-! ## A098286.P18040109101216942561

`A098287(A098287(A098285(A082196(n+1))))`
-/

namespace A098286.P18040109101216942561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (A098287 (A098285 (A082196 (n + 1)).toNat).toNat).toNat

end

end A098286.P18040109101216942561

/-!
# A098287: A098286(A098286(n)).

The programs for A098287, there is no canonical definition to state claims against.
-/

/-! ## A098287.P7567810816532709378

`A098286(A098286(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098287.P7567810816532709378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A098286 (n + 1)).toNat

end

end A098287.P7567810816532709378

/-!
# A098289: Let a(1)=0. Then a(i+1)=position of first occurrence of a(i) in decimal expansion of log 2.

The programs for A098289, there is no canonical definition to state claims against.
-/

/-! ## A098289.P16680289176602077654

`A100077(a(n-1))` with `a(0)=0`
-/

namespace A098289.P16680289176602077654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100077 (a (n - 1)).toNat

end

end A098289.P16680289176602077654

/-!
# A098290: Recurrence sequence based on positions of digits in decimal places of Zeta(3) (Apery's constant).

The programs for A098290, there is no canonical definition to state claims against.
-/

/-! ## A098290.P5984978947051893151

`A100078(a(n-1))` with `a(0)=0`
-/

namespace A098290.P5984978947051893151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100078 (a (n - 1)).toNat

end

end A098290.P5984978947051893151

/-!
# A098291: Chebyshev polynomials S(n,731) + S(n-1,731) with Diophantine property.

The programs for A098291, there is no canonical definition to state claims against.
-/

/-! ## A098291.P3692626416231214591

`∑[2*A098292(n)]-A098292(n)`
-/

namespace A098291.P3692626416231214591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098292 n

end

end A098291.P3692626416231214591

/-!
# A098292: First differences of Chebyshev polynomials S(n,731) = A098263(n) with Diophantine property.

The programs for A098292, the canonical program `A098292.P9518615794793109701` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098292 has offset 0).

The definition of A098292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098292.P9518615794793109701

`731*a(n-1)-a(n-2)` with `a(0)=1, a(1)=730`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098292

/-- `731*a(n-1)-a(n-2)` -/
def P9518615794793109701.Spec : Prop :=
  ∀ n, P9518615794793109701.a n = A098292 n

theorem P9518615794793109701.correct : P9518615794793109701.Spec := by
  intro n
  simp only [A098292]

end A098292

/-! ## A098292.P214082413755506177

`2*A098263(n)-A098291(n)`
-/

namespace A098292.P214082413755506177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098263 n - A098291 n

end

end A098292.P214082413755506177

namespace A098292

/-- `2*A098263(n)-A098291(n)` -/
def P214082413755506177.Spec : Prop :=
  ∀ n, P214082413755506177.a n = A098292 n

end A098292

/-! ## A098292.P13582797193449544070

`Δ[A098291(n)-A098263(n)]`
-/

namespace A098292.P13582797193449544070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098291 n - A098263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098292.P13582797193449544070

namespace A098292

/-- `Δ[A098291(n)-A098263(n)]` -/
def P13582797193449544070.Spec : Prop :=
  ∀ n, P13582797193449544070.a n = A098292 n

end A098292

/-!
# A098293: Powers of 2 alternating with powers of 3.

The programs for A098293, the canonical program `A098293.P11688330171032201136` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098293 has offset 0).

The definition of A098293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098293.P11688330171032201136

`((5-(-1)^n)/2)^((2*n-1+(-1)^n)/4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098293

/-- `((5-(-1)^n)/2)^((2*n-1+(-1)^n)/4)` -/
def P11688330171032201136.Spec : Prop :=
  ∀ n, P11688330171032201136.a n = (A098293 n : ℝ)

end A098293

/-! ## A098293.P13956469519647517494

`(and(1, n)+2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A098293.P13956469519647517494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.land 1 n + 2) * a (n - 2)

end

end A098293.P13956469519647517494

namespace A098293

/-- `(and(1, n)+2)*a(n-2)` -/
def P13956469519647517494.Spec : Prop :=
  ∀ n, (P13956469519647517494.a n : ℤ) = A098293 n

end A098293

/-! ## A098293.P13484926531447402986

`(3-∑[(-1)^n])*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A098293.P13484926531447402986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 - ∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 2)

end

end A098293.P13484926531447402986

namespace A098293

/-- `(3-∑[(-1)^n])*a(n-2)` -/
def P13484926531447402986.Spec : Prop :=
  ∀ n, P13484926531447402986.a n = A098293 n

end A098293

/-! ## A098293.P15144394750732849179

`a(n-2)+lcm(2, a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A098293.P15144394750732849179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 2))

end

end A098293.P15144394750732849179

namespace A098293

/-- `a(n-2)+lcm(2, a(n-2))` -/
def P15144394750732849179.Spec : Prop :=
  ∀ n, (P15144394750732849179.a n : ℤ) = A098293 n

end A098293

/-! ## A098293.P1988449681387479042

`5*a(n-2)-6*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A098293.P1988449681387479042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  5 * a (n - 2) - 6 * a (n - 4)

end

end A098293.P1988449681387479042

namespace A098293

/-- `5*a(n-2)-6*a(n-4)` -/
def P1988449681387479042.Spec : Prop :=
  ∀ n, P1988449681387479042.a n = A098293 n

end A098293

/-! ## A098293.P4918696281529171722

`a(n-2)*A158478(n)` with `a(0)=1, a(1)=1`
-/

namespace A098293.P4918696281529171722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A158478 n

end

end A098293.P4918696281529171722

namespace A098293

/-- `a(n-2)*A158478(n)` -/
def P4918696281529171722.Spec : Prop :=
  ∀ n, P4918696281529171722.a n = A098293 n

end A098293

/-! ## A098293.P10541894618642642990

`a(n-2)*A174296(n)` with `a(0)=1, a(1)=1`
-/

namespace A098293.P10541894618642642990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A174296 n

end

end A098293.P10541894618642642990

namespace A098293

/-- `a(n-2)*A174296(n)` -/
def P10541894618642642990.Spec : Prop :=
  ∀ n, P10541894618642642990.a n = A098293 n

end A098293

/-! ## A098293.P13886174795888829381

`a(n-2)*A020639(3*n)` with `a(0)=1, a(1)=1`
-/

namespace A098293.P13886174795888829381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A020639 (3 * n)

end

end A098293.P13886174795888829381

namespace A098293

/-- `a(n-2)*A020639(3*n)` -/
def P13886174795888829381.Spec : Prop :=
  ∀ n, P13886174795888829381.a n = A098293 n

end A098293

/-! ## A098293.P6028609226928888847

`a(n-2)*A000040(gcd(n-1, 2*n))` with `a(0)=1, a(1)=1`
-/

namespace A098293.P6028609226928888847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A000040 (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ))

end

end A098293.P6028609226928888847

namespace A098293

/-- `a(n-2)*A000040(gcd(n-1, 2*n))` -/
def P6028609226928888847.Spec : Prop :=
  ∀ n, P6028609226928888847.a n = A098293 n

end A098293

/-! ## A098293.P8427534726216163636

`A258439(xor(1, n))`
-/

namespace A098293.P8427534726216163636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (Nat.xor 1 n)

end

end A098293.P8427534726216163636

namespace A098293

/-- `A258439(xor(1, n))` -/
def P8427534726216163636.Spec : Prop :=
  ∀ n, P8427534726216163636.a n = A098293 n

end A098293

/-! ## A098293.P14000658167841463234

`A258439(A004442(n))`
-/

namespace A098293.P14000658167841463234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (A004442 n).toNat

end

end A098293.P14000658167841463234

namespace A098293

/-- `A258439(A004442(n))` -/
def P14000658167841463234.Spec : Prop :=
  ∀ n, P14000658167841463234.a n = A098293 n

end A098293

/-!
# A098294: a(n) = ceiling(n*log_2(3/2)).

The programs for A098294, the canonical program `A098294.P7973836778135609035` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098294 has offset 0).

The definition of A098294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*log2(3/2))` (program `A098294.P7973836778135609035`, by `A098294.P7973836778135609035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098294.P7973836778135609035

`ceil(n*log2(3/2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098294

/-- `ceil(n*log2(3/2))` -/
def P7973836778135609035.Spec : Prop :=
  ∀ n, P7973836778135609035.a n = A098294 n

theorem P7973836778135609035.correct : P7973836778135609035.Spec := by
  intro n
  simp only [A098294]

end A098294

/-! ## A098294.P6337169412688931848

`A204399(n)-n`
-/

namespace A098294.P6337169412688931848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n - (n : ℤ)

end

end A098294.P6337169412688931848

namespace A098294

/-- `A204399(n)-n` -/
def P6337169412688931848.Spec : Prop :=
  ∀ n, P6337169412688931848.a n = A098294 n

end A098294

/-! ## A098294.P15432265987026711948

`comp[A054414(n)]-n`
-/

namespace A098294.P15432265987026711948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A098294.P15432265987026711948

namespace A098294

/-- `comp[A054414(n)]-n` -/
def P15432265987026711948.Spec : Prop :=
  ∀ n, P15432265987026711948.a n = A098294 n

end A098294

/-! ## A098294.P8294466564392595778

`(A020914(n)+1)%(n+1)`
-/

namespace A098294.P8294466564392595778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020914 n + 1) (n + 1 : ℤ)

end

end A098294.P8294466564392595778

namespace A098294

/-- `(A020914(n)+1)%(n+1)` -/
def P8294466564392595778.Spec : Prop :=
  ∀ n, P8294466564392595778.a n = A098294 n

end A098294

/-! ## A098294.P6059594643832653812

`(A056576(n)+2)%(n+1)`
-/

namespace A098294.P6059594643832653812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056576 n + 2) (n + 1 : ℤ)

end

end A098294.P6059594643832653812

namespace A098294

/-- `(A056576(n)+2)%(n+1)` -/
def P6059594643832653812.Spec : Prop :=
  ∀ n, P6059594643832653812.a n = A098294 n

end A098294

/-! ## A098294.P17421621362434550706

`A020914(n)-A028310(n)`
-/

namespace A098294.P17421621362434550706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - A028310 n

end

end A098294.P17421621362434550706

namespace A098294

/-- `A020914(n)-A028310(n)` -/
def P17421621362434550706.Spec : Prop :=
  ∀ n, P17421621362434550706.a n = A098294 n

end A098294

/-! ## A098294.P4282480891906183644

`A056576(n)+1-A028310(n)`
-/

namespace A098294.P4282480891906183644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + (1 - A028310 n)

end

end A098294.P4282480891906183644

namespace A098294

/-- `A056576(n)+1-A028310(n)` -/
def P4282480891906183644.Spec : Prop :=
  ∀ n, P4282480891906183644.a n = A098294 n

end A098294

/-! ## A098294.P13401382732281219480

`A122437(n+1)-A004277(n)`
-/

namespace A098294.P13401382732281219480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) - A004277 n

end

end A098294.P13401382732281219480

namespace A098294

/-- `A122437(n+1)-A004277(n)` -/
def P13401382732281219480.Spec : Prop :=
  ∀ n, P13401382732281219480.a n = A098294 n

end A098294

/-! ## A098294.P14816041814293241391

`A020914(n)-(A000007(n)+n)`
-/

namespace A098294.P14816041814293241391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - (A000007 n + (n : ℤ))

end

end A098294.P14816041814293241391

namespace A098294

/-- `A020914(n)-(A000007(n)+n)` -/
def P14816041814293241391.Spec : Prop :=
  ∀ n, P14816041814293241391.a n = A098294 n

end A098294

/-! ## A098294.P74985383131418606

`A020914(n)+n-A004277(n)`
-/

namespace A098294.P74985383131418606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n + ((n : ℤ) - A004277 n)

end

end A098294.P74985383131418606

namespace A098294

/-- `A020914(n)+n-A004277(n)` -/
def P74985383131418606.Spec : Prop :=
  ∀ n, P74985383131418606.a n = A098294 n

end A098294

/-! ## A098294.P571275973057634876

`A056576(n)+A057427(n)-n`
-/

namespace A098294.P571275973057634876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + (A057427 n - (n : ℤ))

end

end A098294.P571275973057634876

namespace A098294

/-- `A056576(n)+A057427(n)-n` -/
def P571275973057634876.Spec : Prop :=
  ∀ n, P571275973057634876.a n = A098294 n

end A098294

/-! ## A098294.P8357182462726281709

`A056576(n)-(A057428(n)+n)`
-/

namespace A098294.P8357182462726281709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n - (A057428 n + (n : ℤ))

end

end A098294.P8357182462726281709

namespace A098294

/-- `A056576(n)-(A057428(n)+n)` -/
def P8357182462726281709.Spec : Prop :=
  ∀ n, P8357182462726281709.a n = A098294 n

end A098294

/-! ## A098294.P17714997889728162047

`(n-A020914(n))*A057428(n)`
-/

namespace A098294.P17714997889728162047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A020914 n) * A057428 n

end

end A098294.P17714997889728162047

namespace A098294

/-- `(n-A020914(n))*A057428(n)` -/
def P17714997889728162047.Spec : Prop :=
  ∀ n, P17714997889728162047.a n = A098294 n

end A098294

/-! ## A098294.P733964382809326440

`(A020914(n)-n)*A057427(n)`
-/

namespace A098294.P733964382809326440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020914 n - (n : ℤ)) * A057427 n

end

end A098294.P733964382809326440

namespace A098294

/-- `(A020914(n)-n)*A057427(n)` -/
def P733964382809326440.Spec : Prop :=
  ∀ n, P733964382809326440.a n = A098294 n

end A098294

/-! ## A098294.P10286154561374308940

`A056576(n)+1+n-A004277(n)`
-/

namespace A098294.P10286154561374308940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + 1 + (n : ℤ) - A004277 n

end

end A098294.P10286154561374308940

namespace A098294

/-- `A056576(n)+1+n-A004277(n)` -/
def P10286154561374308940.Spec : Prop :=
  ∀ n, P10286154561374308940.a n = A098294 n

end A098294

/-! ## A098294.P4239594587239472674

`A122437(n+1)-(A028310(n)+n)`
-/

namespace A098294.P4239594587239472674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) - (A028310 n + (n : ℤ))

end

end A098294.P4239594587239472674

namespace A098294

/-- `A122437(n+1)-(A028310(n)+n)` -/
def P4239594587239472674.Spec : Prop :=
  ∀ n, P4239594587239472674.a n = A098294 n

end A098294

/-! ## A098294.P1805943717745884285

`comp[comp[A056576(n+1)]+1]-n`
-/

namespace A098294.P1805943717745884285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A098294.P1805943717745884285

namespace A098294

/-- `comp[comp[A056576(n+1)]+1]-n` -/
def P1805943717745884285.Spec : Prop :=
  ∀ n, P1805943717745884285.a n = A098294 n

end A098294

/-! ## A098294.P6856186769899506725

`A022924(a(n-1)+n)+a(n-1)` with `a(0)=0`
-/

namespace A098294.P6856186769899506725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A022924 (a (n - 1) + (n : ℤ)).toNat + a (n - 1)

end

end A098294.P6856186769899506725

namespace A098294

/-- `A022924(a(n-1)+n)+a(n-1)` -/
def P6856186769899506725.Spec : Prop :=
  ∀ n, P6856186769899506725.a n = A098294 n

end A098294

/-! ## A098294.P14208734286139564012

`A020914(n)-A020915(A056576(n))`
-/

namespace A098294.P14208734286139564012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - A020915 (A056576 n).toNat

end

end A098294.P14208734286139564012

namespace A098294

/-- `A020914(n)-A020915(A056576(n))` -/
def P14208734286139564012.Spec : Prop :=
  ∀ n, P14208734286139564012.a n = A098294 n

end A098294

/-! ## A098294.P13675504102275630665

`A020914(n)-A020915(A020914(n)-1)`
-/

namespace A098294.P13675504102275630665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - A020915 (A020914 n - 1).toNat

end

end A098294.P13675504102275630665

namespace A098294

/-- `A020914(n)-A020915(A020914(n)-1)` -/
def P13675504102275630665.Spec : Prop :=
  ∀ n, P13675504102275630665.a n = A098294 n

end A098294

/-!
# A098295: ((3/2)^n)/2^a(n) lies in the half-open interval [1,2).

The programs for A098295, the canonical program `A098295.P17186308517406756389` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098295 has offset 1).

The definition of A098295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098295.P17186308517406756389

`A056576(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098295

/-- `A056576(n+1)-(n+1)` -/
def P17186308517406756389.Spec : Prop :=
  ∀ n, P17186308517406756389.a n = A098295 (n + 1)

theorem P17186308517406756389.correct : P17186308517406756389.Spec := by
  intro n
  simp only [A098295, Nat.add_sub_cancel]

end A098295

/-! ## A098295.P4660323005682042128

`A098294(n+1)-1`
-/

namespace A098295.P4660323005682042128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (n + 1) - 1

end

end A098295.P4660323005682042128

namespace A098295

/-- `A098294(n+1)-1` -/
def P4660323005682042128.Spec : Prop :=
  ∀ n, P4660323005682042128.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P18133657583147464831

`floor((n+1)*(log2(3)-1))`
-/

namespace A098295.P18133657583147464831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.logb 2 (3 : ℝ) - 1)⌋

end

end A098295.P18133657583147464831

namespace A098295

/-- `floor((n+1)*(log2(3)-1))` -/
def P18133657583147464831.Spec : Prop :=
  ∀ n, P18133657583147464831.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P15577596778479459200

`∑[3%Δ[floor(n*log2(3))]]`
-/

namespace A098295.P15577596778479459200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P15577596778479459200

namespace A098295

/-- `∑[3%Δ[floor(n*log2(3))]]` -/
def P15577596778479459200.Spec : Prop :=
  ∀ n, P15577596778479459200.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P6752272294096578871

`∑[val(Δ[floor(n*log2(3))], 2)]`
-/

namespace A098295.P6752272294096578871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P6752272294096578871

namespace A098295

/-- `∑[val(Δ[floor(n*log2(3))], 2)]` -/
def P6752272294096578871.Spec : Prop :=
  ∀ n, (P6752272294096578871.a n : ℤ) = A098295 (n + 1)

end A098295

/-! ## A098295.P15383152644458319535

`∑[Δ[floor(n*log2(3))]!-1]`
-/

namespace A098295.P15383152644458319535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f2 (n + 1) - f2 n).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P15383152644458319535

namespace A098295

/-- `∑[Δ[floor(n*log2(3))]!-1]` -/
def P15383152644458319535.Spec : Prop :=
  ∀ n, P15383152644458319535.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P9318036496541256130

`floor((n+1)*log2(3))%(n+1)`
-/

namespace A098295.P9318036496541256130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.logb 2 (3 : ℝ)⌋ (n + 1 : ℤ)

end

end A098295.P9318036496541256130

namespace A098295

/-- `floor((n+1)*log2(3))%(n+1)` -/
def P9318036496541256130.Spec : Prop :=
  ∀ n, P9318036496541256130.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P1009434335498716385

`∑[log2(A022921(n))]`
-/

namespace A098295.P1009434335498716385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A022921 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P1009434335498716385

namespace A098295

/-- `∑[log2(A022921(n))]` -/
def P1009434335498716385.Spec : Prop :=
  ∀ n, P1009434335498716385.a n = (A098295 (n + 1) : ℝ)

end A098295

/-! ## A098295.P8113429978869448759

`∑[log2(Δ[A020914(n)])]`
-/

namespace A098295.P8113429978869448759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P8113429978869448759

namespace A098295

/-- `∑[log2(Δ[A020914(n)])]` -/
def P8113429978869448759.Spec : Prop :=
  ∀ n, P8113429978869448759.a n = (A098295 (n + 1) : ℝ)

end A098295

/-! ## A098295.P9468292244921670004

`∑[log2(Δ[A056576(n)])]`
-/

namespace A098295.P9468292244921670004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P9468292244921670004

namespace A098295

/-- `∑[log2(Δ[A056576(n)])]` -/
def P9468292244921670004.Spec : Prop :=
  ∀ n, P9468292244921670004.a n = (A098295 (n + 1) : ℝ)

end A098295

/-! ## A098295.P14566219727032881171

`∑[char[A325913(n+1)]]`
-/

namespace A098295.P14566219727032881171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P14566219727032881171

namespace A098295

/-- `∑[char[A325913(n+1)]]` -/
def P14566219727032881171.Spec : Prop :=
  ∀ n, (P14566219727032881171.a n : ℤ) = A098295 (n + 1)

end A098295

/-! ## A098295.P8890720028752923405

`A020914(n+1)-(n+2)`
-/

namespace A098295.P8890720028752923405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (n + 1) - (n + 2 : ℤ)

end

end A098295.P8890720028752923405

namespace A098295

/-- `A020914(n+1)-(n+2)` -/
def P8890720028752923405.Spec : Prop :=
  ∀ n, P8890720028752923405.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P1369787492414291356

`Δ[A025712(n)-(n+1)²]`
-/

namespace A098295.P1369787492414291356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025712 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098295.P1369787492414291356

namespace A098295

/-- `Δ[A025712(n)-(n+1)²]` -/
def P1369787492414291356.Spec : Prop :=
  ∀ n, P1369787492414291356.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P1428818721491913515

`∑[A001221(Δ[floor(n*log2(3))])]`
-/

namespace A098295.P1428818721491913515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P1428818721491913515

namespace A098295

/-- `∑[A001221(Δ[floor(n*log2(3))])]` -/
def P1428818721491913515.Spec : Prop :=
  ∀ n, P1428818721491913515.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P17024277480877782548

`∑[A001222(Δ[floor(n*log2(3))])]`
-/

namespace A098295.P17024277480877782548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P17024277480877782548

namespace A098295

/-- `∑[A001222(Δ[floor(n*log2(3))])]` -/
def P17024277480877782548.Spec : Prop :=
  ∀ n, P17024277480877782548.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P11319974055948971321

`A023443(A056576(n+1)-n)`
-/

namespace A098295.P11319974055948971321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056576 (n + 1) - (n : ℤ)).toNat

end

end A098295.P11319974055948971321

namespace A098295

/-- `A023443(A056576(n+1)-n)` -/
def P11319974055948971321.Spec : Prop :=
  ∀ n, P11319974055948971321.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P9014790816972323408

`A322534(n+1)-A016777(n)`
-/

namespace A098295.P9014790816972323408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322534 (n + 1) - A016777 n

end

end A098295.P9014790816972323408

namespace A098295

/-- `A322534(n+1)-A016777(n)` -/
def P9014790816972323408.Spec : Prop :=
  ∀ n, P9014790816972323408.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P5584608902693293456

`A204399(n+1)-(n+2)`
-/

namespace A098295.P5584608902693293456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (n + 1) - (n + 2 : ℤ)

end

end A098295.P5584608902693293456

namespace A098295

/-- `A204399(n+1)-(n+2)` -/
def P5584608902693293456.Spec : Prop :=
  ∀ n, P5584608902693293456.a n = A098295 (n + 1)

end A098295

/-! ## A098295.P10847117342909498909

`∑[A022930(2*n+1)*A022930(2*n)]`
-/

namespace A098295.P10847117342909498909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022930 (2 * n + 1) * A022930 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098295.P10847117342909498909

namespace A098295

/-- `∑[A022930(2*n+1)*A022930(2*n)]` -/
def P10847117342909498909.Spec : Prop :=
  ∀ n, P10847117342909498909.a n = A098295 (n + 1)

end A098295

/-!
# A098296: Member r=11 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098296, the canonical program `A098296.P4322727378127431219` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098296 has offset 0).

The definition of A098296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098296.P4322727378127431219

`9*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098296

/-- `9*a(n-1)-a(n-2)+2` -/
def P4322727378127431219.Spec : Prop :=
  ∀ n, P4322727378127431219.a n = A098296 n

theorem P4322727378127431219.correct : P4322727378127431219.Spec := by
  intro n
  simp only [A098296]

end A098296

/-! ## A098296.P3388338118991482528

`∑[ogf((x+x^2)/(1-9x+x^2))]`
-/

namespace A098296.P3388338118991482528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -9, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098296.P3388338118991482528

namespace A098296

/-- `∑[ogf((x+x^2)/(1-9x+x^2))]` -/
def P3388338118991482528.Spec : Prop :=
  ∀ n, P3388338118991482528.a n = A098296 n

end A098296

/-! ## A098296.P13111399154099818890

`ogf((x+x^2)/(1-10x+10x^2-x^3))`
-/

namespace A098296.P13111399154099818890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -10, 10, -1] n

end

end A098296.P13111399154099818890

namespace A098296

/-- `ogf((x+x^2)/(1-10x+10x^2-x^3))` -/
def P13111399154099818890.Spec : Prop :=
  ∀ n, P13111399154099818890.a n = A098296 n

end A098296

/-! ## A098296.P12068061632588391357

`∑[9*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A098296.P12068061632588391357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n f1 =>
  9 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098296.P12068061632588391357

namespace A098296

/-- `∑[9*a(n-1)-a(n-2)]` -/
def P12068061632588391357.Spec : Prop :=
  ∀ n, P12068061632588391357.a n = A098296 n

end A098296

/-! ## A098296.P13921581068941725766

`2-(a(n-2)-3*3*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A098296.P13921581068941725766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 3 * (3 * a (n - 1)))

end

end A098296.P13921581068941725766

namespace A098296

/-- `2-(a(n-2)-3*3*a(n-1))` -/
def P13921581068941725766.Spec : Prop :=
  ∀ n, P13921581068941725766.a n = A098296 n

end A098296

/-! ## A098296.P13642169560429126524

`∑[2*A018913(n)]-A018913(n)`
-/

namespace A098296.P13642169560429126524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018913 n

end

end A098296.P13642169560429126524

namespace A098296

/-- `∑[2*A018913(n)]-A018913(n)` -/
def P13642169560429126524.Spec : Prop :=
  ∀ n, P13642169560429126524.a n = A098296 n

end A098296

/-! ## A098296.P3014470845579726997

`floor(A056918(n)/7)`
-/

namespace A098296.P3014470845579726997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056918 n : ℚ) / 7⌋

end

end A098296.P3014470845579726997

namespace A098296

/-- `floor(A056918(n)/7)` -/
def P3014470845579726997.Spec : Prop :=
  ∀ n, P3014470845579726997.a n = A098296 n

end A098296

/-! ## A098296.P16659736360807594341

`∑[A057081(n)]-A057081(n)`
-/

namespace A098296.P16659736360807594341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057081 n

end

end A098296.P16659736360807594341

namespace A098296

/-- `∑[A057081(n)]-A057081(n)` -/
def P16659736360807594341.Spec : Prop :=
  ∀ n, P16659736360807594341.a n = A098296 n

end A098296

/-!
# A098297: Member r=12 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098297, the canonical program `A098297.P14684059027801318015` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098297 has offset 0).

The definition of A098297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098297.P14684059027801318015

`10*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098297

/-- `10*a(n-1)-a(n-2)+2` -/
def P14684059027801318015.Spec : Prop :=
  ∀ n, P14684059027801318015.a n = A098297 n

theorem P14684059027801318015.correct : P14684059027801318015.Spec := by
  intro n
  simp only [A098297]

end A098297

/-! ## A098297.P16961309241848638376

`A132596(n)/2`
-/

namespace A098297.P16961309241848638376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 n : ℚ) / 2

end

end A098297.P16961309241848638376

namespace A098297

/-- `A132596(n)/2` -/
def P16961309241848638376.Spec : Prop :=
  ∀ n, P16961309241848638376.a n = (A098297 n : ℚ)

end A098297

/-! ## A098297.P7681267705631440569

`∑[ogf((x+x^2)/(1-10x+x^2))]`
-/

namespace A098297.P7681267705631440569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098297.P7681267705631440569

namespace A098297

/-- `∑[ogf((x+x^2)/(1-10x+x^2))]` -/
def P7681267705631440569.Spec : Prop :=
  ∀ n, P7681267705631440569.a n = A098297 n

end A098297

/-! ## A098297.P14310628793021640736

`∑[10*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=11`
-/

namespace A098297.P14310628793021640736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098297.P14310628793021640736

namespace A098297

/-- `∑[10*a(n-1)-a(n-2)]` -/
def P14310628793021640736.Spec : Prop :=
  ∀ n, P14310628793021640736.a n = A098297 n

end A098297

/-! ## A098297.P9340888426406386303

`floor(A171640(n+1)/2)`
-/

namespace A098297.P9340888426406386303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171640 (n + 1) : ℚ) / 2⌋

end

end A098297.P9340888426406386303

namespace A098297

/-- `floor(A171640(n+1)/2)` -/
def P9340888426406386303.Spec : Prop :=
  ∀ n, P9340888426406386303.a n = A098297 n

end A098297

/-! ## A098297.P16132232058833076032

`∑[A204519(2*n+1+n)]`
-/

namespace A098297.P16132232058833076032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098297.P16132232058833076032

namespace A098297

/-- `∑[A204519(2*n+1+n)]` -/
def P16132232058833076032.Spec : Prop :=
  ∀ n, P16132232058833076032.a n = A098297 n

end A098297

/-! ## A098297.P12160688052742301956

`∑[A001078(n)]-A004189(n)`
-/

namespace A098297.P12160688052742301956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004189 n

end

end A098297.P12160688052742301956

namespace A098297

/-- `∑[A001078(n)]-A004189(n)` -/
def P12160688052742301956.Spec : Prop :=
  ∀ n, P12160688052742301956.a n = A098297 n

end A098297

/-! ## A098297.P15425448068300479143

`xor(char[A001057(n)], A171640(n+1))/2`
-/

namespace A098297.P15425448068300479143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A171640 (n + 1)) : ℚ) / 2

end

end A098297.P15425448068300479143

namespace A098297

/-- `xor(char[A001057(n)], A171640(n+1))/2` -/
def P15425448068300479143.Spec : Prop :=
  ∀ n, P15425448068300479143.a n = (A098297 n : ℚ)

end A098297

/-! ## A098297.P8101722683381391867

`xor(char[A061579(n)], A171640(n+1))/2`
-/

namespace A098297.P8101722683381391867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A171640 (n + 1)) : ℚ) / 2

end

end A098297.P8101722683381391867

namespace A098297

/-- `xor(char[A061579(n)], A171640(n+1))/2` -/
def P8101722683381391867.Spec : Prop :=
  ∀ n, P8101722683381391867.a n = (A098297 n : ℚ)

end A098297

/-! ## A098297.P17284260715802391085

`xor(A343785(n+1)², A171640(n+1))/2`
-/

namespace A098297.P17284260715802391085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A343785 (n + 1) ^ 2) (A171640 (n + 1)) : ℚ) / 2

end

end A098297.P17284260715802391085

namespace A098297

/-- `xor(A343785(n+1)², A171640(n+1))/2` -/
def P17284260715802391085.Spec : Prop :=
  ∀ n, P17284260715802391085.a n = (A098297 n : ℚ)

end A098297

/-! ## A098297.P7830268727855878989

`floor(A001079(n)/4)`
-/

namespace A098297.P7830268727855878989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001079 n : ℚ) / 4⌋

end

end A098297.P7830268727855878989

namespace A098297

/-- `floor(A001079(n)/4)` -/
def P7830268727855878989.Spec : Prop :=
  ∀ n, P7830268727855878989.a n = A098297 n

end A098297

/-! ## A098297.P12561601588842832706

`floor(A087799(n)/8)`
-/

namespace A098297.P12561601588842832706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087799 n : ℚ) / 8⌋

end

end A098297.P12561601588842832706

namespace A098297

/-- `floor(A087799(n)/8)` -/
def P12561601588842832706.Spec : Prop :=
  ∀ n, P12561601588842832706.a n = A098297 n

end A098297

/-! ## A098297.P7789584083594268745

`∑[A054320(n)]-A054320(n)`
-/

namespace A098297.P7789584083594268745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054320 n

end

end A098297.P7789584083594268745

namespace A098297

/-- `∑[A054320(n)]-A054320(n)` -/
def P7789584083594268745.Spec : Prop :=
  ∀ n, P7789584083594268745.a n = A098297 n

end A098297

/-! ## A098297.P18035580662713129355

`∑[A054320(n)%A001079(n)]`
-/

namespace A098297.P18035580662713129355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054320 n) (A001079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098297.P18035580662713129355

namespace A098297

/-- `∑[A054320(n)%A001079(n)]` -/
def P18035580662713129355.Spec : Prop :=
  ∀ n, P18035580662713129355.a n = A098297 n

end A098297

/-! ## A098297.P4120537427983299917

`∑[A122653(n)%A001079(n)]`
-/

namespace A098297.P4120537427983299917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122653 n) (A001079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098297.P4120537427983299917

namespace A098297

/-- `∑[A122653(n)%A001079(n)]` -/
def P4120537427983299917.Spec : Prop :=
  ∀ n, P4120537427983299917.a n = A098297 n

end A098297

/-! ## A098297.P8087784470403284183

`A105038(n)/2-A004189(n)`
-/

namespace A098297.P8087784470403284183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105038 n : ℚ) / 2 - (A004189 n : ℚ)

end

end A098297.P8087784470403284183

namespace A098297

/-- `A105038(n)/2-A004189(n)` -/
def P8087784470403284183.Spec : Prop :=
  ∀ n, P8087784470403284183.a n = (A098297 n : ℚ)

end A098297

/-! ## A098297.P1663171236493928296

`∑[A140780(n)]-(A001078(n)+1)`
-/

namespace A098297.P1663171236493928296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001078 n + 1)

end

end A098297.P1663171236493928296

namespace A098297

/-- `∑[A140780(n)]-(A001078(n)+1)` -/
def P1663171236493928296.Spec : Prop :=
  ∀ n, P1663171236493928296.a n = A098297 n

end A098297

/-! ## A098297.P1523944973875982089

`A253175(n+1)-A253475(n+1)`
-/

namespace A098297.P1523944973875982089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253175 (n + 1) - A253475 (n + 1)

end

end A098297.P1523944973875982089

namespace A098297

/-- `A253175(n+1)-A253475(n+1)` -/
def P1523944973875982089.Spec : Prop :=
  ∀ n, P1523944973875982089.a n = A098297 n

end A098297

/-! ## A098297.P6160051486856944388

`(A031138(n+1)-A054320(n))/2`
-/

namespace A098297.P6160051486856944388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031138 (n + 1) - A054320 n : ℚ) / 2

end

end A098297.P6160051486856944388

namespace A098297

/-- `(A031138(n+1)-A054320(n))/2` -/
def P6160051486856944388.Spec : Prop :=
  ∀ n, P6160051486856944388.a n = (A098297 n : ℚ)

end A098297

/-! ## A098297.P318545209410550013

`∑[A142238(2*n)]-A142238(2*n)`
-/

namespace A098297.P318545209410550013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142238 (2 * n)

end

end A098297.P318545209410550013

namespace A098297

/-- `∑[A142238(2*n)]-A142238(2*n)` -/
def P318545209410550013.Spec : Prop :=
  ∀ n, P318545209410550013.a n = A098297 n

end A098297

/-!
# A098298: Member r=13 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098298, the canonical program `A098298.P1431164204871899031` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098298 has offset 0).

The definition of A098298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098298.P1431164204871899031

`11*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098298

/-- `11*a(n-1)-a(n-2)+2` -/
def P1431164204871899031.Spec : Prop :=
  ∀ n, P1431164204871899031.a n = A098298 n

theorem P1431164204871899031.correct : P1431164204871899031.Spec := by
  intro n
  simp only [A098298]

end A098298

/-! ## A098298.P1530012678014805208

`∑[11*a(n-1)-a(n-2)]-1` with `a(0)=1, a(1)=1, a(2)=12`
-/

namespace A098298.P1530012678014805208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 12] fun n f1 =>
  11 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098298.P1530012678014805208

namespace A098298

/-- `∑[11*a(n-1)-a(n-2)]-1` -/
def P1530012678014805208.Spec : Prop :=
  ∀ n, P1530012678014805208.a n = A098298 n

end A098298

/-! ## A098298.P1371896104987138261

`floor((A006497(n)/3)²)`
-/

namespace A098298.P1371896104987138261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A006497 n : ℚ) / 3) ^ 2⌋

end

end A098298.P1371896104987138261

namespace A098298

/-- `floor((A006497(n)/3)²)` -/
def P1371896104987138261.Spec : Prop :=
  ∀ n, P1371896104987138261.a n = A098298 n

end A098298

/-! ## A098298.P2257479387436927700

`floor(A057076(n)/9)`
-/

namespace A098298.P2257479387436927700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057076 n : ℚ) / 9⌋

end

end A098298.P2257479387436927700

namespace A098298

/-- `floor(A057076(n)/9)` -/
def P2257479387436927700.Spec : Prop :=
  ∀ n, P2257479387436927700.a n = A098298 n

end A098298

/-! ## A098298.P8027214795277565662

`∑[A212962(A004273(n))/3]`
-/

namespace A098298.P8027214795277565662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212962 (A004273 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098298.P8027214795277565662

namespace A098298

/-- `∑[A212962(A004273(n))/3]` -/
def P8027214795277565662.Spec : Prop :=
  ∀ n, P8027214795277565662.a n = (A098298 n : ℚ)

end A098298

/-! ## A098298.P12063932520088173377

`∑[A097783(n)]-A097783(n)`
-/

namespace A098298.P12063932520088173377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097783 n

end

end A098298.P12063932520088173377

namespace A098298

/-- `∑[A097783(n)]-A097783(n)` -/
def P12063932520088173377.Spec : Prop :=
  ∀ n, P12063932520088173377.a n = A098298 n

end A098298

/-!
# A098299: Member r=14 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098299, the canonical program `A098299.P9247471711007101801` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098299 has offset 0).

The definition of A098299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098299.P9247471711007101801

`12*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098299

/-- `12*a(n-1)-a(n-2)+2` -/
def P9247471711007101801.Spec : Prop :=
  ∀ n, P9247471711007101801.a n = A098299 n

theorem P9247471711007101801.correct : P9247471711007101801.Spec := by
  intro n
  simp only [A098299]

end A098299

/-! ## A098299.P107589552593284141

`2-(a(n-2)-3*4*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A098299.P107589552593284141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 3 * (4 * a (n - 1)))

end

end A098299.P107589552593284141

namespace A098299

/-- `2-(a(n-2)-3*4*a(n-1))` -/
def P107589552593284141.Spec : Prop :=
  ∀ n, P107589552593284141.a n = A098299 n

end A098299

/-! ## A098299.P17361046343789737588

`floor(A023038(n)/5)`
-/

namespace A098299.P17361046343789737588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023038 n : ℚ) / 5⌋

end

end A098299.P17361046343789737588

namespace A098299

/-- `floor(A023038(n)/5)` -/
def P17361046343789737588.Spec : Prop :=
  ∀ n, P17361046343789737588.a n = A098299 n

end A098299

/-! ## A098299.P5468534835659485421

`floor(A080875(2*n)/5)`
-/

namespace A098299.P5468534835659485421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080875 (2 * n) : ℚ) / 5⌋

end

end A098299.P5468534835659485421

namespace A098299

/-- `floor(A080875(2*n)/5)` -/
def P5468534835659485421.Spec : Prop :=
  ∀ n, P5468534835659485421.a n = A098299 n

end A098299

/-! ## A098299.P10414914282806310540

`floor(7/5*A098309(n))`
-/

namespace A098299.P10414914282806310540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) / 5 * (A098309 n : ℚ)⌋

end

end A098299.P10414914282806310540

namespace A098299

/-- `floor(7/5*A098309(n))` -/
def P10414914282806310540.Spec : Prop :=
  ∀ n, P10414914282806310540.a n = A098299 n

end A098299

/-! ## A098299.P18108895355753125322

`A133271(n+1)-A133272(n+1)`
-/

namespace A098299.P18108895355753125322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133271 (n + 1) - A133272 (n + 1)

end

end A098299.P18108895355753125322

namespace A098299

/-- `A133271(n+1)-A133272(n+1)` -/
def P18108895355753125322.Spec : Prop :=
  ∀ n, P18108895355753125322.a n = A098299 n

end A098299

/-! ## A098299.P3819161532054002909

`∑[A077416(n)]-A077416(n)`
-/

namespace A098299.P3819161532054002909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077416 n

end

end A098299.P3819161532054002909

namespace A098299

/-- `∑[A077416(n)]-A077416(n)` -/
def P3819161532054002909.Spec : Prop :=
  ∀ n, P3819161532054002909.a n = A098299 n

end A098299

