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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A162601: Primes of form k^6 + k^3 + 1.

The programs for A162601, there is no canonical definition to state claims against.
-/

/-! ## A162601.P17925290683911854683

`A060883(A153439(n+1))`
-/

namespace A162601.P17925290683911854683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A153439 (n + 1)).toNat

end

end A162601.P17925290683911854683

/-! ## A162601.P1434238620430609890

`∩[A002383(n+1), A060883(n)]`
-/

namespace A162601.P1434238620430609890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162601.P1434238620430609890

/-! ## A162601.P12167534548806899364

`record[A108154((n+1)*(n+1)²+1)]`
-/

namespace A162601.P12167534548806899364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 ((n + 1) * (n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162601.P12167534548806899364

/-!
# A162602: G.f. is the polynomial (1-x^3) * (1-x^6) * (1-x^9) * (1-x^12) * (1-x^15) * (1-x^18) * (1-x^21) * (1-x^24) * (1-x^27) / (1-x)^9.

The programs for A162602, there is no canonical definition to state claims against.
-/

/-! ## A162602.P2754119517904775346

`∑[A057427(A033174(n+1))*A162596(n)]`
-/

namespace A162602.P2754119517904775346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033174 (n + 1)).toNat * A162596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162602.P2754119517904775346

/-!
# A162607: a(n) = n*(n^2 - 4*n + 5)/2.

The programs for A162607, the canonical program `A162607.P9650580987024435272` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162607 has offset 0).

The definition of A162607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162607.P9650580987024435272

`n*(n²-4*n+5)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162607

/-- `n*(n²-4*n+5)/2` -/
def P9650580987024435272.Spec : Prop :=
  ∀ n, P9650580987024435272.a n = (A162607 n : ℚ)

end A162607

/-! ## A162607.P14176215708035359321

`(n-3)*C(n, 2)+n`
-/

namespace A162607.P14176215708035359321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Nat.choose n 2 : ℤ) + (n : ℤ)

end

end A162607.P14176215708035359321

namespace A162607

/-- `(n-3)*C(n, 2)+n` -/
def P14176215708035359321.Spec : Prop :=
  ∀ n, P14176215708035359321.a n = A162607 n

end A162607

/-! ## A162607.P10646844411000667440

`n-(n-1)*(n-C(n, 2))`
-/

namespace A162607.P10646844411000667440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n : ℤ) - 1) * ((n : ℤ) - (Nat.choose n 2 : ℤ))

end

end A162607.P10646844411000667440

namespace A162607

/-- `n-(n-1)*(n-C(n, 2))` -/
def P10646844411000667440.Spec : Prop :=
  ∀ n, P10646844411000667440.a n = A162607 n

end A162607

/-! ## A162607.P6610849717619482589

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A162607.P6610849717619482589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162607.P6610849717619482589

namespace A162607

/-- `∑[∑[a(n-1)+3]]` -/
def P6610849717619482589.Spec : Prop :=
  ∀ n, P6610849717619482589.a n = A162607 n

end A162607

/-! ## A162607.P4468080014274573675

`n-∑[∑[a(n-1)-3]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A162607.P4468080014274573675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162607.P4468080014274573675

namespace A162607

/-- `n-∑[∑[a(n-1)-3]]` -/
def P4468080014274573675.Spec : Prop :=
  ∀ n, P4468080014274573675.a n = A162607 n

end A162607

/-! ## A162607.P5974244038651510049

`(n-3)/2*lcm(n, n-1)+n`
-/

namespace A162607.P5974244038651510049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / 2 * (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) + (n : ℚ)

end

end A162607.P5974244038651510049

namespace A162607

/-- `(n-3)/2*lcm(n, n-1)+n` -/
def P5974244038651510049.Spec : Prop :=
  ∀ n, P5974244038651510049.a n = (A162607 n : ℚ)

end A162607

/-! ## A162607.P12958733401603883307

`C(n-1, 2)+a(n-1)+(2-n)²` with `a(0)=0`
-/

namespace A162607.P12958733401603883307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat 2 : ℤ) + (a (n - 1) + (2 - (n : ℤ)) ^ 2)

end

end A162607.P12958733401603883307

namespace A162607

/-- `C(n-1, 2)+a(n-1)+(2-n)²` -/
def P12958733401603883307.Spec : Prop :=
  ∀ n, P12958733401603883307.a n = A162607 n

end A162607

/-! ## A162607.P5866383492137337256

`A060354(n)+n-∑[n]`
-/

namespace A162607.P5866383492137337256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A162607.P5866383492137337256

namespace A162607

/-- `A060354(n)+n-∑[n]` -/
def P5866383492137337256.Spec : Prop :=
  ∀ n, P5866383492137337256.a n = A162607 n

end A162607

/-! ## A162607.P5894121646888690783

`A050407(n)+A007290(n)`
-/

namespace A162607.P5894121646888690783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n + A007290 n

end

end A162607.P5894121646888690783

namespace A162607

/-- `A050407(n)+A007290(n)` -/
def P5894121646888690783.Spec : Prop :=
  ∀ n, P5894121646888690783.a n = A162607 n

end A162607

/-! ## A162607.P6711823185860106254

`A006002(n)-A000567(n)`
-/

namespace A162607.P6711823185860106254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - A000567 n

end

end A162607.P6711823185860106254

namespace A162607

/-- `A006002(n)-A000567(n)` -/
def P6711823185860106254.Spec : Prop :=
  ∀ n, P6711823185860106254.a n = A162607 n

end A162607

/-! ## A162607.P3421849450964105619

`A017173(n)-A028494(n)`
-/

namespace A162607.P3421849450964105619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - A028494 n

end

end A162607.P3421849450964105619

namespace A162607

/-- `A017173(n)-A028494(n)` -/
def P3421849450964105619.Spec : Prop :=
  ∀ n, P3421849450964105619.a n = A162607 n

end A162607

/-! ## A162607.P11559574125754824939

`A006000(n)-A056106(n)`
-/

namespace A162607.P11559574125754824939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n - A056106 n

end

end A162607.P11559574125754824939

namespace A162607

/-- `A006000(n)-A056106(n)` -/
def P11559574125754824939.Spec : Prop :=
  ∀ n, P11559574125754824939.a n = A162607 n

end A162607

/-! ## A162607.P14808031438259184691

`A006001(n)-A058331(n)`
-/

namespace A162607.P14808031438259184691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006001 n - A058331 n

end

end A162607.P14808031438259184691

namespace A162607

/-- `A006001(n)-A058331(n)` -/
def P14808031438259184691.Spec : Prop :=
  ∀ n, P14808031438259184691.a n = A162607 n

end A162607

/-! ## A162607.P7390888455858287271

`A135503(n)-A014107(n)`
-/

namespace A162607.P7390888455858287271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n - A014107 n

end

end A162607.P7390888455858287271

namespace A162607

/-- `A135503(n)-A014107(n)` -/
def P7390888455858287271.Spec : Prop :=
  ∀ n, P7390888455858287271.a n = A162607 n

end A162607

/-! ## A162607.P16142706588371187836

`A189890(n)-A002061(n)`
-/

namespace A162607.P16142706588371187836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189890 n - A002061 n

end

end A162607.P16142706588371187836

namespace A162607

/-- `A189890(n)-A002061(n)` -/
def P16142706588371187836.Spec : Prop :=
  ∀ n, P16142706588371187836.a n = A162607 n

end A162607

/-! ## A162607.P13300741987066108551

`A229183(n)-A000384(n)`
-/

namespace A162607.P13300741987066108551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n - A000384 n

end

end A162607.P13300741987066108551

namespace A162607

/-- `A229183(n)-A000384(n)` -/
def P13300741987066108551.Spec : Prop :=
  ∀ n, P13300741987066108551.a n = A162607 n

end A162607

/-! ## A162607.P16310822125798587552

`A027480(n)-A218471(n)`
-/

namespace A162607.P16310822125798587552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A218471 n

end

end A162607.P16310822125798587552

namespace A162607

/-- `A027480(n)-A218471(n)` -/
def P16310822125798587552.Spec : Prop :=
  ∀ n, P16310822125798587552.a n = A162607 n

end A162607

/-! ## A162607.P15701390369805565315

`A064808(n)-A192136(n)`
-/

namespace A162607.P15701390369805565315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n - A192136 n

end

end A162607.P15701390369805565315

namespace A162607

/-- `A064808(n)-A192136(n)` -/
def P15701390369805565315.Spec : Prop :=
  ∀ n, P15701390369805565315.a n = A162607 n

end A162607

/-! ## A162607.P14350165988106116943

`A267370(n)-A033429(n)`
-/

namespace A162607.P14350165988106116943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n - A033429 n

end

end A162607.P14350165988106116943

namespace A162607

/-- `A267370(n)-A033429(n)` -/
def P14350165988106116943.Spec : Prop :=
  ∀ n, P14350165988106116943.a n = A162607 n

end A162607

/-!
# A162608: Triangle read by rows in which row n lists n+1 terms, starting with n!, such that the difference between successive terms is also equal to n!.

The programs for A162608, the canonical program `A162608.P7353512471309454721` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162608 has offset 0).

The definition of A162608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162608.P187615737896714694

`∑[char[∑[n+1]]]!*A002260(n+1)`
-/

namespace A162608.P187615737896714694
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A002260 (n + 1)

end

end A162608.P187615737896714694

namespace A162608

/-- `∑[char[∑[n+1]]]!*A002260(n+1)` -/
def P187615737896714694.Spec : Prop :=
  ∀ n, P187615737896714694.a n = A162608 n

end A162608

/-! ## A162608.P7353512471309454721

`A051683(A083920(n)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162608

/-- `A051683(A083920(n)+1)` -/
def P7353512471309454721.Spec : Prop :=
  ∀ n, P7353512471309454721.a n = A162608 n

theorem P7353512471309454721.correct : P7353512471309454721.Spec := by
  intro n
  simp only [A162608]

end A162608

/-! ## A162608.P17666763639280359253

`A051683(A122797(n+1))`
-/

namespace A162608.P17666763639280359253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (A122797 (n + 1)).toNat

end

end A162608.P17666763639280359253

namespace A162608

/-- `A051683(A122797(n+1))` -/
def P17666763639280359253.Spec : Prop :=
  ∀ n, P17666763639280359253.a n = A162608 n

end A162608

/-! ## A162608.P15149929276063786238

`A324225(A063656(n)+1)`
-/

namespace A162608.P15149929276063786238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A063656 n + 1).toNat

end

end A162608.P15149929276063786238

namespace A162608

/-- `A324225(A063656(n)+1)` -/
def P15149929276063786238.Spec : Prop :=
  ∀ n, P15149929276063786238.a n = A162608 n

end A162608

/-! ## A162608.P16750610518476655259

`A098361(n)*A103406(n)`
-/

namespace A162608.P16750610518476655259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A103406 n

end

end A162608.P16750610518476655259

namespace A162608

/-- `A098361(n)*A103406(n)` -/
def P16750610518476655259.Spec : Prop :=
  ∀ n, P16750610518476655259.a n = A162608 n

end A162608

/-! ## A162608.P8383333936982537570

`A119502(n)*A121757(n)`
-/

namespace A162608.P8383333936982537570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A121757 n

end

end A162608.P8383333936982537570

namespace A162608

/-- `A119502(n)*A121757(n)` -/
def P8383333936982537570.Spec : Prop :=
  ∀ n, P8383333936982537570.a n = A162608 n

end A162608

/-! ## A162608.P659457128033719515

`A051683(1-A003056(n)+n)`
-/

namespace A162608.P659457128033719515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (1 - A003056 n + (n : ℤ)).toNat

end

end A162608.P659457128033719515

namespace A162608

/-- `A051683(1-A003056(n)+n)` -/
def P659457128033719515.Spec : Prop :=
  ∀ n, P659457128033719515.a n = A162608 n

end A162608

/-! ## A162608.P15030973792860666124

`A051683(1-(A003056(n)-n))`
-/

namespace A162608.P15030973792860666124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (1 - (A003056 n - (n : ℤ))).toNat

end

end A162608.P15030973792860666124

namespace A162608

/-- `A051683(1-(A003056(n)-n))` -/
def P15030973792860666124.Spec : Prop :=
  ∀ n, P15030973792860666124.a n = A162608 n

end A162608

/-! ## A162608.P16253293165516146211

`A094587(n)*A166350(n+1)`
-/

namespace A162608.P16253293165516146211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A166350 (n + 1)

end

end A162608.P16253293165516146211

namespace A162608

/-- `A094587(n)*A166350(n+1)` -/
def P16253293165516146211.Spec : Prop :=
  ∀ n, P16253293165516146211.a n = A162608 n

end A162608

/-! ## A162608.P14329158034927766614

`A166350(n+1)+A137260(n+1)`
-/

namespace A162608.P14329158034927766614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + A137260 (n + 1)

end

end A162608.P14329158034927766614

namespace A162608

/-- `A166350(n+1)+A137260(n+1)` -/
def P14329158034927766614.Spec : Prop :=
  ∀ n, P14329158034927766614.a n = A162608 n

end A162608

/-! ## A162608.P12334211657922142031

`A051683(2-A002024(n+1)+n)`
-/

namespace A162608.P12334211657922142031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (2 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A162608.P12334211657922142031

namespace A162608

/-- `A051683(2-A002024(n+1)+n)` -/
def P12334211657922142031.Spec : Prop :=
  ∀ n, P12334211657922142031.a n = A162608 n

end A162608

/-! ## A162608.P16065313411654772886

`A051683(n+2-A123578(n+1))`
-/

namespace A162608.P16065313411654772886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 ((n + 2 : ℤ) - A123578 (n + 1)).toNat

end

end A162608.P16065313411654772886

namespace A162608

/-- `A051683(n+2-A123578(n+1))` -/
def P16065313411654772886.Spec : Prop :=
  ∀ n, P16065313411654772886.a n = A162608 n

end A162608

/-! ## A162608.P15583525845369583944

`A003056(n)!*A057555(2*n+1)`
-/

namespace A162608.P15583525845369583944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A057555 (2 * n + 1)

end

end A162608.P15583525845369583944

namespace A162608

/-- `A003056(n)!*A057555(2*n+1)` -/
def P15583525845369583944.Spec : Prop :=
  ∀ n, P15583525845369583944.a n = A162608 n

end A162608

/-! ## A162608.P9861030218265223255

`A068424(n+1)/A135278(n)*A094587(n)`
-/

namespace A162608.P9861030218265223255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A135278 n : ℚ) * (A094587 n : ℚ)

end

end A162608.P9861030218265223255

namespace A162608

/-- `A068424(n+1)/A135278(n)*A094587(n)` -/
def P9861030218265223255.Spec : Prop :=
  ∀ n, P9861030218265223255.a n = (A162608 n : ℚ)

end A162608

/-! ## A162608.P8334638081323756195

`A000142(A002024(n+1)-1)*A002260(n+1)`
-/

namespace A162608.P8334638081323756195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002024 (n + 1) - 1).toNat * A002260 (n + 1)

end

end A162608.P8334638081323756195

namespace A162608

/-- `A000142(A002024(n+1)-1)*A002260(n+1)` -/
def P8334638081323756195.Spec : Prop :=
  ∀ n, P8334638081323756195.a n = A162608 n

end A162608

/-! ## A162608.P2794492241317945274

`A002260(n+1)*A094638(A061579(n)+A002260(n+1))`
-/

namespace A162608.P2794492241317945274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A094638 (A061579 n + A002260 (n + 1)).toNat

end

end A162608.P2794492241317945274

namespace A162608

/-- `A002260(n+1)*A094638(A061579(n)+A002260(n+1))` -/
def P2794492241317945274.Spec : Prop :=
  ∀ n, P2794492241317945274.a n = A162608 n

end A162608

/-! ## A162608.P2578015789704918598

`A091441(n+1)/A004736(n+1)`
-/

namespace A162608.P2578015789704918598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091441 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A162608.P2578015789704918598

namespace A162608

/-- `A091441(n+1)/A004736(n+1)` -/
def P2578015789704918598.Spec : Prop :=
  ∀ n, P2578015789704918598.a n = (A162608 n : ℚ)

end A162608

/-! ## A162608.P14091822320718189031

`A051683(n+1)/round(sqrt(2*n+1))`
-/

namespace A162608.P14091822320718189031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) : ℚ)

end

end A162608.P14091822320718189031

namespace A162608

/-- `A051683(n+1)/round(sqrt(2*n+1))` -/
def P14091822320718189031.Spec : Prop :=
  ∀ n, P14091822320718189031.a n = (A162608 n : ℚ)

end A162608

/-! ## A162608.P2358008154534086102

`(A200748(n)+1)/A002024(n+1)`
-/

namespace A162608.P2358008154534086102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200748 n + 1 : ℚ) / (A002024 (n + 1) : ℚ)

end

end A162608.P2358008154534086102

namespace A162608

/-- `(A200748(n)+1)/A002024(n+1)` -/
def P2358008154534086102.Spec : Prop :=
  ∀ n, P2358008154534086102.a n = (A162608 n : ℚ)

end A162608

/-! ## A162608.P5899781810984384082

`1/A002024(n+1)*A051683(n+1)`
-/

namespace A162608.P5899781810984384082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002024 (n + 1) : ℚ) * (A051683 (n + 1) : ℚ)

end

end A162608.P5899781810984384082

namespace A162608

/-- `1/A002024(n+1)*A051683(n+1)` -/
def P5899781810984384082.Spec : Prop :=
  ∀ n, P5899781810984384082.a n = (A162608 n : ℚ)

end A162608

/-!
# A162609: Triangle read by rows in which row n lists n terms, starting with 1, with gaps = n-2 between successive terms.

The programs for A162609, the canonical program `A162609.P3581363376803362616` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162609 has offset 1).

The definition of A162609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162609.P3801543511190044267

`A176798(n)-n`
-/

namespace A162609.P3801543511190044267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - (n : ℤ)

end

end A162609.P3801543511190044267

namespace A162609

/-- `A176798(n)-n` -/
def P3801543511190044267.Spec : Prop :=
  ∀ n, P3801543511190044267.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P3581363376803362616

`A126890(n)+1-n`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A162609

/-- `A126890(n)+1-n` -/
def P3581363376803362616.Spec : Prop :=
  ∀ n, P3581363376803362616.a n = A162609 (n + 1)

theorem P3581363376803362616.correct : P3581363376803362616.Spec := by
  intro n
  simp only [A162609, Nat.add_sub_cancel]

end A162609

/-! ## A162609.P3291666869192069457

`(∑[char[∑[n+1]]]-1)*A002262(n)+1`
-/

namespace A162609.P3291666869192069457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A002262 n + 1

end

end A162609.P3291666869192069457

namespace A162609

/-- `(∑[char[∑[n+1]]]-1)*A002262(n)+1` -/
def P3291666869192069457.Spec : Prop :=
  ∀ n, P3291666869192069457.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P17579551382079638773

`A393443(n)-A049780(n)`
-/

namespace A162609.P17579551382079638773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393443 n - A049780 n

end

end A162609.P17579551382079638773

namespace A162609

/-- `A393443(n)-A049780(n)` -/
def P17579551382079638773.Spec : Prop :=
  ∀ n, P17579551382079638773.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P14968207959562144097

`A159798(n+1)+A002262(n)`
-/

namespace A162609.P14968207959562144097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (n + 1) + A002262 n

end

end A162609.P14968207959562144097

namespace A162609

/-- `A159798(n+1)+A002262(n)` -/
def P14968207959562144097.Spec : Prop :=
  ∀ n, P14968207959562144097.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P6262207390236997464

`A076110(n+1)-A002262(n)`
-/

namespace A162609.P6262207390236997464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - A002262 n

end

end A162609.P6262207390236997464

namespace A162609

/-- `A076110(n+1)-A002262(n)` -/
def P6262207390236997464.Spec : Prop :=
  ∀ n, P6262207390236997464.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P1482679714650522331

`A079904(n)+1-A002262(n)`
-/

namespace A162609.P1482679714650522331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (1 - A002262 n)

end

end A162609.P1482679714650522331

namespace A162609

/-- `A079904(n)+1-A002262(n)` -/
def P1482679714650522331.Spec : Prop :=
  ∀ n, P1482679714650522331.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P9679953221418020125

`A081493(n+1)-A051162(n)`
-/

namespace A162609.P9679953221418020125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - A051162 n

end

end A162609.P9679953221418020125

namespace A162609

/-- `A081493(n+1)-A051162(n)` -/
def P9679953221418020125.Spec : Prop :=
  ∀ n, P9679953221418020125.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P12570260615973631632

`A159797(n)+1-A003056(n)`
-/

namespace A162609.P12570260615973631632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + (1 - A003056 n)

end

end A162609.P12570260615973631632

namespace A162609

/-- `A159797(n)+1-A003056(n)` -/
def P12570260615973631632.Spec : Prop :=
  ∀ n, P12570260615973631632.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P4646425687571588907

`2*A303273(n)-A077028(n)`
-/

namespace A162609.P4646425687571588907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303273 n - A077028 n

end

end A162609.P4646425687571588907

namespace A162609

/-- `2*A303273(n)-A077028(n)` -/
def P4646425687571588907.Spec : Prop :=
  ∀ n, P4646425687571588907.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P2265041089942555865

`A159797(n)+2-∑[A010054(n)]`
-/

namespace A162609.P2265041089942555865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162609.P2265041089942555865

namespace A162609

/-- `A159797(n)+2-∑[A010054(n)]` -/
def P2265041089942555865.Spec : Prop :=
  ∀ n, P2265041089942555865.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P2492059703553328756

`A079904(n)+2-A002260(n+1)`
-/

namespace A162609.P2492059703553328756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (2 - A002260 (n + 1))

end

end A162609.P2492059703553328756

namespace A162609

/-- `A079904(n)+2-A002260(n+1)` -/
def P2492059703553328756.Spec : Prop :=
  ∀ n, P2492059703553328756.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P12270856868898501604

`A144204(n+1)+2-A002262(n)`
-/

namespace A162609.P12270856868898501604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + (2 - A002262 n)

end

end A162609.P12270856868898501604

namespace A162609

/-- `A144204(n+1)+2-A002262(n)` -/
def P12270856868898501604.Spec : Prop :=
  ∀ n, P12270856868898501604.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P3265602428210008498

`A159797(n)+2-A002024(n+1)`
-/

namespace A162609.P3265602428210008498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + (2 - A002024 (n + 1))

end

end A162609.P3265602428210008498

namespace A162609

/-- `A159797(n)+2-A002024(n+1)` -/
def P3265602428210008498.Spec : Prop :=
  ∀ n, P3265602428210008498.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P13976981495398194026

`A076110(n+1)+A057944(n)-n`
-/

namespace A162609.P13976981495398194026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (A057944 n - (n : ℤ))

end

end A162609.P13976981495398194026

namespace A162609

/-- `A076110(n+1)+A057944(n)-n` -/
def P13976981495398194026.Spec : Prop :=
  ∀ n, P13976981495398194026.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P2036166208571212224

`A122797(n+1)+A159797(n)-n`
-/

namespace A162609.P2036166208571212224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1) + (A159797 n - (n : ℤ))

end

end A162609.P2036166208571212224

namespace A162609

/-- `A122797(n+1)+A159797(n)-n` -/
def P2036166208571212224.Spec : Prop :=
  ∀ n, P2036166208571212224.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P17069919326998416697

`(A159798(n+1)+A076110(n+1))/2`
-/

namespace A162609.P17069919326998416697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159798 (n + 1) + A076110 (n + 1) : ℚ) / 2

end

end A162609.P17069919326998416697

namespace A162609

/-- `(A159798(n+1)+A076110(n+1))/2` -/
def P17069919326998416697.Spec : Prop :=
  ∀ n, P17069919326998416697.a n = (A162609 (n + 1) : ℚ)

end A162609

/-! ## A162609.P4428617180385073006

`(A002260(n+1)-1)*(A003056(n)-1)+1`
-/

namespace A162609.P4428617180385073006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * (A003056 n - 1) + 1

end

end A162609.P4428617180385073006

namespace A162609

/-- `(A002260(n+1)-1)*(A003056(n)-1)+1` -/
def P4428617180385073006.Spec : Prop :=
  ∀ n, P4428617180385073006.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P4287710880957760754

`A004247(n)+A002061(A002262(n))`
-/

namespace A162609.P4287710880957760754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A002061 (A002262 n).toNat

end

end A162609.P4287710880957760754

namespace A162609

/-- `A004247(n)+A002061(A002262(n))` -/
def P4287710880957760754.Spec : Prop :=
  ∀ n, P4287710880957760754.a n = A162609 (n + 1)

end A162609

/-! ## A162609.P658058428995972543

`A152947(A002260(n+1))+A087401(n)`
-/

namespace A162609.P658058428995972543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A002260 (n + 1)).toNat + A087401 n

end

end A162609.P658058428995972543

namespace A162609

/-- `A152947(A002260(n+1))+A087401(n)` -/
def P658058428995972543.Spec : Prop :=
  ∀ n, P658058428995972543.a n = A162609 (n + 1)

end A162609

/-!
# A162610: Triangle read by rows in which row n lists n terms, starting with 2n-1, with gaps = n-1 between successive terms.

The programs for A162610, the canonical program `A162610.P7827333575211813800` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162610 has offset 1).

The definition of A162610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162610.P9608605263317509069

`∑[char[∑[n]]]²-A091435(n)`
-/

namespace A162610.P9608605263317509069
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A091435 n

end

end A162610.P9608605263317509069

namespace A162610

/-- `∑[char[∑[n]]]²-A091435(n)` -/
def P9608605263317509069.Spec : Prop :=
  ∀ n, P9608605263317509069.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P5476187883083918507

`(A002262(n)+2)*∑[char[∑[n+1]]]+1`
-/

namespace A162610.P5476187883083918507
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A162610.P5476187883083918507

namespace A162610

/-- `(A002262(n)+2)*∑[char[∑[n+1]]]+1` -/
def P5476187883083918507.Spec : Prop :=
  ∀ n, P5476187883083918507.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P12849539474071944690

`A075362(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A162610.P12849539474071944690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A162610.P12849539474071944690

namespace A162610

/-- `A075362(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P12849539474071944690.Spec : Prop :=
  ∀ n, P12849539474071944690.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P7827333575211813800

`A131507(n)+A079904(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A162610

/-- `A131507(n)+A079904(n)` -/
def P7827333575211813800.Spec : Prop :=
  ∀ n, P7827333575211813800.a n = A162610 (n + 1)

theorem P7827333575211813800.correct : P7827333575211813800.Spec := by
  intro n
  simp only [A162610, Nat.add_sub_cancel]

end A162610

/-! ## A162610.P17696873868910168172

`A105020(n)-A004247(n)`
-/

namespace A162610.P17696873868910168172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A004247 n

end

end A162610.P17696873868910168172

namespace A162610

/-- `A105020(n)-A004247(n)` -/
def P17696873868910168172.Spec : Prop :=
  ∀ n, P17696873868910168172.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P18281980725905828451

`A081493(n+1)+A003056(n)`
-/

namespace A162610.P18281980725905828451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + A003056 n

end

end A162610.P18281980725905828451

namespace A162610

/-- `A081493(n+1)+A003056(n)` -/
def P18281980725905828451.Spec : Prop :=
  ∀ n, P18281980725905828451.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P18143780232904618775

`A075362(n+1)+A025581(n)`
-/

namespace A162610.P18143780232904618775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + A025581 n

end

end A162610.P18143780232904618775

namespace A162610

/-- `A075362(n+1)+A025581(n)` -/
def P18143780232904618775.Spec : Prop :=
  ∀ n, P18143780232904618775.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P17159941268023114713

`A159797(n)+A094727(n+1)`
-/

namespace A162610.P17159941268023114713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + A094727 (n + 1)

end

end A162610.P17159941268023114713

namespace A162610

/-- `A159797(n)+A094727(n+1)` -/
def P17159941268023114713.Spec : Prop :=
  ∀ n, P17159941268023114713.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P14123221484516224353

`A204250(n+1)+A143844(n)`
-/

namespace A162610.P14123221484516224353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A143844 n

end

end A162610.P14123221484516224353

namespace A162610

/-- `A204250(n+1)+A143844(n)` -/
def P14123221484516224353.Spec : Prop :=
  ∀ n, P14123221484516224353.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P8724181226826095672

`A279891(n)+A076110(n+1)`
-/

namespace A162610.P8724181226826095672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A076110 (n + 1)

end

end A162610.P8724181226826095672

namespace A162610

/-- `A279891(n)+A076110(n+1)` -/
def P8724181226826095672.Spec : Prop :=
  ∀ n, P8724181226826095672.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P17408839209276629194

`A204250(n+1)+A002262(n)²`
-/

namespace A162610.P17408839209276629194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A002262 n ^ 2

end

end A162610.P17408839209276629194

namespace A162610

/-- `A204250(n+1)+A002262(n)²` -/
def P17408839209276629194.Spec : Prop :=
  ∀ n, P17408839209276629194.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P3275999102724634550

`A144204(n+1)+A111650(n+1)`
-/

namespace A162610.P3275999102724634550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + A111650 (n + 1)

end

end A162610.P3275999102724634550

namespace A162610

/-- `A144204(n+1)+A111650(n+1)` -/
def P3275999102724634550.Spec : Prop :=
  ∀ n, P3275999102724634550.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P15735889729632372013

`A185910(n+1)+A094053(n+1)`
-/

namespace A162610.P15735889729632372013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + A094053 (n + 1)

end

end A162610.P15735889729632372013

namespace A162610

/-- `A185910(n+1)+A094053(n+1)` -/
def P15735889729632372013.Spec : Prop :=
  ∀ n, P15735889729632372013.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P4291331049810954994

`A154614(n+1)-A158405(n+1)`
-/

namespace A162610.P4291331049810954994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) - A158405 (n + 1)

end

end A162610.P4291331049810954994

namespace A162610

/-- `A154614(n+1)-A158405(n+1)` -/
def P4291331049810954994.Spec : Prop :=
  ∀ n, P4291331049810954994.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P7354531529018380924

`A076110(n+1)+2*A003056(n)`
-/

namespace A162610.P7354531529018380924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + 2 * A003056 n

end

end A162610.P7354531529018380924

namespace A162610

/-- `A076110(n+1)+2*A003056(n)` -/
def P7354531529018380924.Spec : Prop :=
  ∀ n, P7354531529018380924.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P200091811169515061

`A038722(n+1)+n-A091435(n)`
-/

namespace A162610.P200091811169515061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + ((n : ℤ) - A091435 n)

end

end A162610.P200091811169515061

namespace A162610

/-- `A038722(n+1)+n-A091435(n)` -/
def P200091811169515061.Spec : Prop :=
  ∀ n, P200091811169515061.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P9647022740871062008

`A004736(n+1)+A075362(n+1)-1`
-/

namespace A162610.P9647022740871062008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A075362 (n + 1) - 1)

end

end A162610.P9647022740871062008

namespace A162610

/-- `A004736(n+1)+A075362(n+1)-1` -/
def P9647022740871062008.Spec : Prop :=
  ∀ n, P9647022740871062008.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P16637361378998546710

`A134483(n+1)+A162609(n+1)-1`
-/

namespace A162610.P16637361378998546710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) + (A162609 (n + 1) - 1)

end

end A162610.P16637361378998546710

namespace A162610

/-- `A134483(n+1)+A162609(n+1)-1` -/
def P16637361378998546710.Spec : Prop :=
  ∀ n, P16637361378998546710.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P7132448660954016835

`(A002260(n+1)+1)*A003056(n)+1`
-/

namespace A162610.P7132448660954016835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * A003056 n + 1

end

end A162610.P7132448660954016835

namespace A162610

/-- `(A002260(n+1)+1)*A003056(n)+1` -/
def P7132448660954016835.Spec : Prop :=
  ∀ n, P7132448660954016835.a n = A162610 (n + 1)

end A162610

/-! ## A162610.P11354866942343042637

`2*A081493(n+1)-A076110(n+1)`
-/

namespace A162610.P11354866942343042637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081493 (n + 1) - A076110 (n + 1)

end

end A162610.P11354866942343042637

namespace A162610

/-- `2*A081493(n+1)-A076110(n+1)` -/
def P11354866942343042637.Spec : Prop :=
  ∀ n, P11354866942343042637.a n = A162610 (n + 1)

end A162610

/-!
# A162611: Triangle read by rows in which row n lists n+1 terms, starting with n, such that the difference between successive terms is equal to n^2 - 1.

The programs for A162611, the canonical program `A162611.P16253396059121565881` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162611 has offset 0).

The definition of A162611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162611.P16253396059121565881

`A110449(n)-A083920(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A162611

/-- `A110449(n)-A083920(n)` -/
def P16253396059121565881.Spec : Prop :=
  ∀ n, P16253396059121565881.a n = A162611 n

theorem P16253396059121565881.correct : P16253396059121565881.Spec := by
  intro n
  simp only [A162611]

end A162611

/-! ## A162611.P8582569481731108043

`A003056(n)+A110449(n)-n`
-/

namespace A162611.P8582569481731108043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A110449 n - (n : ℤ))

end

end A162611.P8582569481731108043

namespace A162611

/-- `A003056(n)+A110449(n)-n` -/
def P8582569481731108043.Spec : Prop :=
  ∀ n, P8582569481731108043.a n = A162611 n

end A162611

/-! ## A162611.P16884409188133035532

`A110449(n)+∑[A035214(n)-2]`
-/

namespace A162611.P16884409188133035532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162611.P16884409188133035532

namespace A162611

/-- `A110449(n)+∑[A035214(n)-2]` -/
def P16884409188133035532.Spec : Prop :=
  ∀ n, P16884409188133035532.a n = A162611 n

end A162611

/-! ## A162611.P6005875789220012406

`∑[A073424(n)]+A110449(n)-n`
-/

namespace A162611.P6005875789220012406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A110449 n - (n : ℤ))

end

end A162611.P6005875789220012406

namespace A162611

/-- `∑[A073424(n)]+A110449(n)-n` -/
def P6005875789220012406.Spec : Prop :=
  ∀ n, P6005875789220012406.a n = A162611 n

end A162611

/-! ## A162611.P14765868506329253243

`A110449(n)+1-A122797(n+1)`
-/

namespace A162611.P14765868506329253243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 n + (1 - A122797 (n + 1))

end

end A162611.P14765868506329253243

namespace A162611

/-- `A110449(n)+1-A122797(n+1)` -/
def P14765868506329253243.Spec : Prop :=
  ∀ n, P14765868506329253243.a n = A162611 n

end A162611

/-! ## A162611.P14415561872354842172

`A002024(n+1)+A110449(n)-(n+1)`
-/

namespace A162611.P14415561872354842172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A110449 n - (n + 1 : ℤ))

end

end A162611.P14415561872354842172

namespace A162611

/-- `A002024(n+1)+A110449(n)-(n+1)` -/
def P14415561872354842172.Spec : Prop :=
  ∀ n, P14415561872354842172.a n = A162611 n

end A162611

/-! ## A162611.P16004284580905540972

`A110449(n)-A023443(A122797(n+1))`
-/

namespace A162611.P16004284580905540972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 n - A023443 (A122797 (n + 1)).toNat

end

end A162611.P16004284580905540972

namespace A162611

/-- `A110449(n)-A023443(A122797(n+1))` -/
def P16004284580905540972.Spec : Prop :=
  ∀ n, P16004284580905540972.a n = A162611 n

end A162611

/-! ## A162611.P9114825848478109907

`A025581(n)+A003056(n)*A079904(n)`
-/

namespace A162611.P9114825848478109907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003056 n * A079904 n

end

end A162611.P9114825848478109907

namespace A162611

/-- `A025581(n)+A003056(n)*A079904(n)` -/
def P9114825848478109907.Spec : Prop :=
  ∀ n, P9114825848478109907.a n = A162611 n

end A162611

/-! ## A162611.P1850176437158098390

`A025581(n)+A003056(n)²*A002262(n)`
-/

namespace A162611.P1850176437158098390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003056 n ^ 2 * A002262 n

end

end A162611.P1850176437158098390

namespace A162611

/-- `A025581(n)+A003056(n)²*A002262(n)` -/
def P1850176437158098390.Spec : Prop :=
  ∀ n, P1850176437158098390.a n = A162611 n

end A162611

/-! ## A162611.P795000761161188273

`A110449(n)-∑[A037888(A059268(n))]`
-/

namespace A162611.P795000761161188273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162611.P795000761161188273

namespace A162611

/-- `A110449(n)-∑[A037888(A059268(n))]` -/
def P795000761161188273.Spec : Prop :=
  ∀ n, P795000761161188273.a n = A162611 n

end A162611

/-!
# A162612: Triangle read by rows in which row n lists n terms, starting with n^2+n-1, with gaps = n^2-1 between successive terms.

The programs for A162612, the canonical program `A162612.P17075956797174905893` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162612 has offset 1).

The definition of A162612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162612.P7360018240863242845

`A162613(n+1)+A061579(n)+n`
-/

namespace A162612.P7360018240863242845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162613 (n + 1) + (A061579 n + (n : ℤ))

end

end A162612.P7360018240863242845

namespace A162612

/-- `A162613(n+1)+A061579(n)+n` -/
def P7360018240863242845.Spec : Prop :=
  ∀ n, P7360018240863242845.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P17122126608735474448

`A093995(n+1)+A162613(n+1)-1`
-/

namespace A162612.P17122126608735474448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (A162613 (n + 1) - 1)

end

end A162612.P17122126608735474448

namespace A162612

/-- `A093995(n+1)+A162613(n+1)-1` -/
def P17122126608735474448.Spec : Prop :=
  ∀ n, P17122126608735474448.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P17075956797174905893

`A025581(n)+A002024(n+1)²*A002260(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162612

/-- `A025581(n)+A002024(n+1)²*A002260(n+1)` -/
def P17075956797174905893.Spec : Prop :=
  ∀ n, P17075956797174905893.a n = A162612 (n + 1)

theorem P17075956797174905893.correct : P17075956797174905893.Spec := by
  intro n
  simp only [A162612, Nat.add_sub_cancel]

end A162612

/-! ## A162612.P18402662822929865405

`A110449(A007401(n+1))+A061579(n)`
-/

namespace A162612.P18402662822929865405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A007401 (n + 1)).toNat + A061579 n

end

end A162612.P18402662822929865405

namespace A162612

/-- `A110449(A007401(n+1))+A061579(n)` -/
def P18402662822929865405.Spec : Prop :=
  ∀ n, P18402662822929865405.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P15927589243419450703

`A162611(comp[∑[n]])`
-/

namespace A162612.P15927589243419450703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162612.P15927589243419450703

namespace A162612

/-- `A162611(comp[∑[n]])` -/
def P15927589243419450703.Spec : Prop :=
  ∀ n, P15927589243419450703.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P890175759853386051

`A110449(∑[A035214(n)])-(n+1)`
-/

namespace A162612.P890175759853386051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A162612.P890175759853386051

namespace A162612

/-- `A110449(∑[A035214(n)])-(n+1)` -/
def P890175759853386051.Spec : Prop :=
  ∀ n, P890175759853386051.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P10505032938195452903

`A110449(A014132(n+1))-(n+1)`
-/

namespace A162612.P10505032938195452903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A014132 (n + 1)).toNat - (n + 1 : ℤ)

end

end A162612.P10505032938195452903

namespace A162612

/-- `A110449(A014132(n+1))-(n+1)` -/
def P10505032938195452903.Spec : Prop :=
  ∀ n, P10505032938195452903.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P14212139383444590452

`A241016(n+1)+A061579(n)`
-/

namespace A162612.P14212139383444590452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241016 (n + 1) + A061579 n

end

end A162612.P14212139383444590452

namespace A162612

/-- `A241016(n+1)+A061579(n)` -/
def P14212139383444590452.Spec : Prop :=
  ∀ n, P14212139383444590452.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P12717897903154302311

`A241016(n+1)+A114327(n)+n`
-/

namespace A162612.P12717897903154302311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241016 (n + 1) + (A114327 n + (n : ℤ))

end

end A162612.P12717897903154302311

namespace A162612

/-- `A241016(n+1)+A114327(n)+n` -/
def P12717897903154302311.Spec : Prop :=
  ∀ n, P12717897903154302311.a n = A162612 (n + 1)

end A162612

/-! ## A162612.P16468586754627916898

`A038722(n+1)+A241016(n+1)-1`
-/

namespace A162612.P16468586754627916898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A241016 (n + 1) - 1)

end

end A162612.P16468586754627916898

namespace A162612

/-- `A038722(n+1)+A241016(n+1)-1` -/
def P16468586754627916898.Spec : Prop :=
  ∀ n, P16468586754627916898.a n = A162612 (n + 1)

end A162612

/-!
# A162613: Triangle read by rows in which row n lists n terms, starting with n, with gaps = n^2-1 between successive terms.

The programs for A162613, the canonical program `A162613.P4468718630332530059` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162613 has offset 1).

The definition of A162613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162613.P4468718630332530059

`A162612(n+1)-(A061579(n)+n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162613

/-- `A162612(n+1)-(A061579(n)+n)` -/
def P4468718630332530059.Spec : Prop :=
  ∀ n, P4468718630332530059.a n = A162613 (n + 1)

theorem P4468718630332530059.correct : P4468718630332530059.Spec := by
  intro n
  simp only [A162613, Nat.add_sub_cancel]

end A162613

/-! ## A162613.P1789875540555122855

`A244418(n+1)+A110449(n)-n`
-/

namespace A162613.P1789875540555122855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1) + (A110449 n - (n : ℤ))

end

end A162613.P1789875540555122855

namespace A162613

/-- `A244418(n+1)+A110449(n)-n` -/
def P1789875540555122855.Spec : Prop :=
  ∀ n, P1789875540555122855.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P8285141013820624969

`A079904(n)+A002024(n+1)*A076110(n+1)`
-/

namespace A162613.P8285141013820624969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A002024 (n + 1) * A076110 (n + 1)

end

end A162613.P8285141013820624969

namespace A162613

/-- `A079904(n)+A002024(n+1)*A076110(n+1)` -/
def P8285141013820624969.Spec : Prop :=
  ∀ n, P8285141013820624969.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P12577440196181475900

`A004736(n+1)+A002024(n+1)²*A002262(n)`
-/

namespace A162613.P12577440196181475900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002024 (n + 1) ^ 2 * A002262 n

end

end A162613.P12577440196181475900

namespace A162613

/-- `A004736(n+1)+A002024(n+1)²*A002262(n)` -/
def P12577440196181475900.Spec : Prop :=
  ∀ n, P12577440196181475900.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P6510203018786426692

`A162611(comp[∑[n-1]])`
-/

namespace A162613.P6510203018786426692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162613.P6510203018786426692

namespace A162613

/-- `A162611(comp[∑[n-1]])` -/
def P6510203018786426692.Spec : Prop :=
  ∀ n, P6510203018786426692.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P14179045721210225956

`A110449(A007401(n+1))-n`
-/

namespace A162613.P14179045721210225956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A007401 (n + 1)).toNat - (n : ℤ)

end

end A162613.P14179045721210225956

namespace A162613

/-- `A110449(A007401(n+1))-n` -/
def P14179045721210225956.Spec : Prop :=
  ∀ n, P14179045721210225956.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P2616480548478024499

`A110449(A014132(n+1)-1)-n`
-/

namespace A162613.P2616480548478024499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A014132 (n + 1) - 1).toNat - (n : ℤ)

end

end A162613.P2616480548478024499

namespace A162613

/-- `A110449(A014132(n+1)-1)-n` -/
def P2616480548478024499.Spec : Prop :=
  ∀ n, P2616480548478024499.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P3797721738517442683

`A110449(A002024(n+1)+n)-n`
-/

namespace A162613.P3797721738517442683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 (A002024 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A162613.P3797721738517442683

namespace A162613

/-- `A110449(A002024(n+1)+n)-n` -/
def P3797721738517442683.Spec : Prop :=
  ∀ n, P3797721738517442683.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P11016480380261694600

`A003056(n)*A209297(n+1)+1`
-/

namespace A162613.P11016480380261694600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A209297 (n + 1) + 1

end

end A162613.P11016480380261694600

namespace A162613

/-- `A003056(n)*A209297(n+1)+1` -/
def P11016480380261694600.Spec : Prop :=
  ∀ n, P11016480380261694600.a n = A162613 (n + 1)

end A162613

/-! ## A162613.P10694438171403890248

`A241016(n+1)-n`
-/

namespace A162613.P10694438171403890248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241016 (n + 1) - (n : ℤ)

end

end A162613.P10694438171403890248

namespace A162613

/-- `A241016(n+1)-n` -/
def P10694438171403890248.Spec : Prop :=
  ∀ n, P10694438171403890248.a n = A162613 (n + 1)

end A162613

/-!
# A162614: Triangle read by rows in which row n lists n+1 terms, starting with n, such that the difference between successive terms is equal to n^3 - 1.

The programs for A162614, the canonical program `A162614.P257456511153718467` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162614 has offset 0).

The definition of A162614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162614.P257456511153718467

`A025581(n)+A003056(n)²*A079904(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A162614

/-- `A025581(n)+A003056(n)²*A079904(n)` -/
def P257456511153718467.Spec : Prop :=
  ∀ n, P257456511153718467.a n = A162614 n

theorem P257456511153718467.correct : P257456511153718467.Spec := by
  intro n
  simp only [A162614]

end A162614

/-!
# A162615: Triangle read by rows in which row n lists n terms, starting with n, such that the difference between successive terms is equal to n^3 - 1 = A068601(n).

The programs for A162615, the canonical program `A162615.P14757173602673215028` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162615 has offset 1).

The definition of A162615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162615.P14757173602673215028

`A162616(n+1)-A068601(A002024(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A162615

/-- `A162616(n+1)-A068601(A002024(n+1))` -/
def P14757173602673215028.Spec : Prop :=
  ∀ n, P14757173602673215028.a n = A162615 (n + 1)

theorem P14757173602673215028.correct : P14757173602673215028.Spec := by
  intro n
  simp only [A162615, Nat.add_sub_cancel]

end A162615

/-! ## A162615.P13936822447968028624

`A162614(comp[∑[n-1]])`
-/

namespace A162615.P13936822447968028624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162614 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162615.P13936822447968028624

namespace A162615

/-- `A162614(comp[∑[n-1]])` -/
def P13936822447968028624.Spec : Prop :=
  ∀ n, P13936822447968028624.a n = A162615 (n + 1)

end A162615

/-! ## A162615.P17812092110193470435

`filter[A162614(n+2), A307430(#)]`
-/

namespace A162615.P17812092110193470435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A162615.P17812092110193470435

namespace A162615

/-- `filter[A162614(n+2), A307430(#)]` -/
def P17812092110193470435.Spec : Prop :=
  ∀ n, P17812092110193470435.a n = A162615 (n + 1)

end A162615

/-! ## A162615.P8448368529359214458

`filter[A162614(n+2), A370598(#)]`
-/

namespace A162615.P8448368529359214458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A162615.P8448368529359214458

namespace A162615

/-- `filter[A162614(n+2), A370598(#)]` -/
def P8448368529359214458.Spec : Prop :=
  ∀ n, P8448368529359214458.a n = A162615 (n + 1)

end A162615

/-!
# A162616: Triangle read by rows in which row n lists n terms, starting with n^3 + n - 1, such that the difference between successive terms is equal to n^3 - 1 = A068601(n).

The programs for A162616, the canonical program `A162616.P17668087635285263298` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162616 has offset 1).

The definition of A162616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162616.P14331566751309436569

`A162615(n+1)+A068601(A002024(n+1))`
-/

namespace A162616.P14331566751309436569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162615 (n + 1) + A068601 (A002024 (n + 1)).toNat

end

end A162616.P14331566751309436569

namespace A162616

/-- `A162615(n+1)+A068601(A002024(n+1))` -/
def P14331566751309436569.Spec : Prop :=
  ∀ n, P14331566751309436569.a n = A162616 (n + 1)

end A162616

/-! ## A162616.P17668087635285263298

`A025581(n)+A075362(n+1)*A093995(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A162616

/-- `A025581(n)+A075362(n+1)*A093995(n+1)` -/
def P17668087635285263298.Spec : Prop :=
  ∀ n, P17668087635285263298.a n = A162616 (n + 1)

theorem P17668087635285263298.correct : P17668087635285263298.Spec := by
  intro n
  simp only [A162616, Nat.add_sub_cancel]

end A162616

/-! ## A162616.P10483357773883021333

`A162614(comp[∑[n]])`
-/

namespace A162616.P10483357773883021333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162614 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162616.P10483357773883021333

namespace A162616

/-- `A162614(comp[∑[n]])` -/
def P10483357773883021333.Spec : Prop :=
  ∀ n, P10483357773883021333.a n = A162616 (n + 1)

end A162616

/-! ## A162616.P1765060791355969089

`or(A073424(n), A162614(A014132(n+1)))`
-/

namespace A162616.P1765060791355969089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 n) (A162614 (A014132 (n + 1)).toNat)

end

end A162616.P1765060791355969089

namespace A162616

/-- `or(A073424(n), A162614(A014132(n+1)))` -/
def P1765060791355969089.Spec : Prop :=
  ∀ n, P1765060791355969089.a n = A162616 (n + 1)

end A162616

/-!
# A162617: G.f. is the polynomial (1-x^3) * (1-x^6) * (1-x^9) * (1-x^12) * (1-x^15) * (1-x^18) * (1-x^21) * (1-x^24) * (1-x^27) * (1-x^30) / (1-x)^10.

The programs for A162617, there is no canonical definition to state claims against.
-/

/-! ## A162617.P10286695355261219464

`∑[A001221(A000043(n+1))*A162602(n)]`
-/

namespace A162617.P10286695355261219464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1)).toNat * A162602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162617.P10286695355261219464

/-!
# A162618: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A008578(n-1) - n + 1.

The programs for A162618, there is no canonical definition to state claims against.
-/

/-! ## A162618.P1665641051627145965

`A008578(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A162618.P1665641051627145965
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A162618.P1665641051627145965

/-! ## A162618.P11261562035112704415

`A028815(∑[char[∑[n+1]]])-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A162618.P11261562035112704415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A162618.P11261562035112704415

/-! ## A162618.P1305409952392368685

`A158611(comp[∑[n]]-n)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A162618.P1305409952392368685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A162618.P1305409952392368685

/-! ## A162618.P1122494723404840121

`A331835(∏[char[∑[n+1]]+1])-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A162618.P1122494723404840121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (∏ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A162618.P1122494723404840121

/-! ## A162618.P23858975062289427

`A008578(∑[char[∑[n]]])-A025581(n)`
-/

namespace A162618.P23858975062289427
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j) - A025581 n

end

end A162618.P23858975062289427

/-! ## A162618.P12114347801133883486

`A015919(round(sqrt(2*(n+1))))-A025581(n)`
-/

namespace A162618.P12114347801133883486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat - A025581 n

end

end A162618.P12114347801133883486

/-! ## A162618.P5059188711102256167

`A158611(comp[∑[n]]-n)-A025660(n+1)`
-/

namespace A162618.P5059188711102256167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A025660 (n + 1)

end

end A162618.P5059188711102256167

/-! ## A162618.P8490244197253188860

`A008578(round(sqrt(2*(n+1))))-(A004736(n+1)-1)`
-/

namespace A162618.P8490244197253188860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat - (A004736 (n + 1) - 1)

end

end A162618.P8490244197253188860

/-! ## A162618.P11160801465822182205

`A105560(A137688(n))-A025581(n)`
-/

namespace A162618.P11160801465822182205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A137688 n).toNat - A025581 n

end

end A162618.P11160801465822182205

/-! ## A162618.P1106888953123627415

`A295879(A140513(n))-A025581(n)`
-/

namespace A162618.P1106888953123627415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (A140513 n).toNat - A025581 n

end

end A162618.P1106888953123627415

/-!
# A162619: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A014689(n) = A000040(n)-n.

The programs for A162619, the canonical program `A162619.P18185964256765795364` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162619 has offset 1).

The definition of A162619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162619.P13063124739282483221

`A162620(n+1)-1`
-/

namespace A162619.P13063124739282483221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162620 (n + 1) - 1

end

end A162619.P13063124739282483221

namespace A162619

/-- `A162620(n+1)-1` -/
def P13063124739282483221.Spec : Prop :=
  ∀ n, P13063124739282483221.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P14937583270744367953

`A005145(n+1)-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A162619.P14937583270744367953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A162619.P14937583270744367953

namespace A162619

/-- `A005145(n+1)-(C(comp[∑[n]]-n, 2)-n)` -/
def P14937583270744367953.Spec : Prop :=
  ∀ n, P14937583270744367953.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P18114690144428696774

`A014689(∑[char[∑[n]]])+n-C(∑[char[∑[n]]], 2)`
-/

namespace A162619.P18114690144428696774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A162619.P18114690144428696774

namespace A162619

/-- `A014689(∑[char[∑[n]]])+n-C(∑[char[∑[n]]], 2)` -/
def P18114690144428696774.Spec : Prop :=
  ∀ n, P18114690144428696774.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P2724433076238049996

`A000040(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A162619.P2724433076238049996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A162619.P2724433076238049996

namespace A162619

/-- `A000040(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-n)` -/
def P2724433076238049996.Spec : Prop :=
  ∀ n, P2724433076238049996.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P18185964256765795364

`A005145(n+1)-A004736(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A162619

/-- `A005145(n+1)-A004736(n+1)` -/
def P18185964256765795364.Spec : Prop :=
  ∀ n, P18185964256765795364.a n = A162619 (n + 1)

theorem P18185964256765795364.correct : P18185964256765795364.Spec := by
  intro n
  simp only [A162619, Nat.add_sub_cancel]

end A162619

/-! ## A162619.P17402662796704038638

`A005145(n+1)-(A025581(n)+1)`
-/

namespace A162619.P17402662796704038638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - (A025581 n + 1)

end

end A162619.P17402662796704038638

namespace A162619

/-- `A005145(n+1)-(A025581(n)+1)` -/
def P17402662796704038638.Spec : Prop :=
  ∀ n, P17402662796704038638.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P4694019663759120623

`A000040(∑[char[∑[n]]])-A004736(n+1)`
-/

namespace A162619.P4694019663759120623
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - A004736 (n + 1)

end

end A162619.P4694019663759120623

namespace A162619

/-- `A000040(∑[char[∑[n]]])-A004736(n+1)` -/
def P4694019663759120623.Spec : Prop :=
  ∀ n, P4694019663759120623.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P12629506664653179100

`A000040(∑[char[∑[n]]])-A025581(n)-1`
-/

namespace A162619.P12629506664653179100
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - A025581 n - 1

end

end A162619.P12629506664653179100

namespace A162619

/-- `A000040(∑[char[∑[n]]])-A025581(n)-1` -/
def P12629506664653179100.Spec : Prop :=
  ∀ n, P12629506664653179100.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P4328259446122337303

`A121934(n+1)%A162620(n+1)`
-/

namespace A162619.P4328259446122337303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A162620 (n + 1))

end

end A162619.P4328259446122337303

namespace A162619

/-- `A121934(n+1)%A162620(n+1)` -/
def P4328259446122337303.Spec : Prop :=
  ∀ n, P4328259446122337303.a n = A162619 (n + 1)

end A162619

/-! ## A162619.P12944030400668296596

`A350169(∑[char[∑[n]]]²-n)-1`
-/

namespace A162619.P12944030400668296596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350169 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A162619.P12944030400668296596

namespace A162619

/-- `A350169(∑[char[∑[n]]]²-n)-1` -/
def P12944030400668296596.Spec : Prop :=
  ∀ n, P12944030400668296596.a n = A162619 (n + 1)

end A162619

/-!
# A162620: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A000040(n)-n+1.

The programs for A162620, the canonical program `A162620.P14495094572982818752` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162620 has offset 1).

The definition of A162620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162620.P14495094572982818752

`A162619(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162620

/-- `A162619(n+1)+1` -/
def P14495094572982818752.Spec : Prop :=
  ∀ n, P14495094572982818752.a n = A162620 (n + 1)

theorem P14495094572982818752.correct : P14495094572982818752.Spec := by
  intro n
  simp only [A162620, Nat.add_sub_cancel]

end A162620

/-! ## A162620.P7229972720040538540

`A005145(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A162620.P7229972720040538540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A162620.P7229972720040538540

namespace A162620

/-- `A005145(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P7229972720040538540.Spec : Prop :=
  ∀ n, P7229972720040538540.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P6538572894122447196

`A000040(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A162620.P6538572894122447196
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A162620.P6538572894122447196

namespace A162620

/-- `A000040(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P6538572894122447196.Spec : Prop :=
  ∀ n, P6538572894122447196.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P6020359401020145443

`A020725(A162619(n+1))`
-/

namespace A162620.P6020359401020145443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A162619 (n + 1)).toNat

end

end A162620.P6020359401020145443

namespace A162620

/-- `A020725(A162619(n+1))` -/
def P6020359401020145443.Spec : Prop :=
  ∀ n, P6020359401020145443.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P8287468742823193527

`A005145(n+1)-A025581(n)`
-/

namespace A162620.P8287468742823193527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A025581 n

end

end A162620.P8287468742823193527

namespace A162620

/-- `A005145(n+1)-A025581(n)` -/
def P8287468742823193527.Spec : Prop :=
  ∀ n, P8287468742823193527.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P8089313373325952133

`A000040(∑[char[∑[n]]])-A025581(n)`
-/

namespace A162620.P8089313373325952133
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - A025581 n

end

end A162620.P8089313373325952133

namespace A162620

/-- `A000040(∑[char[∑[n]]])-A025581(n)` -/
def P8089313373325952133.Spec : Prop :=
  ∀ n, P8089313373325952133.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P1021991185426581539

`A350169(∑[char[∑[n]]]²-n)`
-/

namespace A162620.P1021991185426581539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350169 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A162620.P1021991185426581539

namespace A162620

/-- `A350169(∑[char[∑[n]]]²-n)` -/
def P1021991185426581539.Spec : Prop :=
  ∀ n, P1021991185426581539.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P866320410713427163

`A350169(n+1)-(∑[2*n]%comp[∑[n]]-n)`
-/

namespace A162620.P866320410713427163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350169 (n + 1) - ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

end

end A162620.P866320410713427163

namespace A162620

/-- `A350169(n+1)-(∑[2*n]%comp[∑[n]]-n)` -/
def P866320410713427163.Spec : Prop :=
  ∀ n, P866320410713427163.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P16737031835159179341

`A350169(n+1)-A114327(n)`
-/

namespace A162620.P16737031835159179341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350169 (n + 1) - A114327 n

end

end A162620.P16737031835159179341

namespace A162620

/-- `A350169(n+1)-A114327(n)` -/
def P16737031835159179341.Spec : Prop :=
  ∀ n, P16737031835159179341.a n = A162620 (n + 1)

end A162620

/-! ## A162620.P14381477274521938155

`A162618(A080036(n+1))`
-/

namespace A162620.P14381477274521938155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162618 (A080036 (n + 1)).toNat

end

end A162620.P14381477274521938155

namespace A162620

/-- `A162618(A080036(n+1))` -/
def P14381477274521938155.Spec : Prop :=
  ∀ n, P14381477274521938155.a n = A162620 (n + 1)

end A162620

/-!
# A162621: Triangle read by rows in which row n lists n consecutive natural numbers A000027, starting with A014689(n+1) = A000040(n+1)-n-1.

The programs for A162621, the canonical program `A162621.P13614541246017247815` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162621 has offset 1).

The definition of A162621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162621.P16100512194194993915

`A162619(comp[∑[n]])`
-/

namespace A162621.P16100512194194993915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162621.P16100512194194993915

namespace A162621

/-- `A162619(comp[∑[n]])` -/
def P16100512194194993915.Spec : Prop :=
  ∀ n, P16100512194194993915.a n = A162621 (n + 1)

end A162621

/-! ## A162621.P11694134994809181212

`abs(A162619(comp[C(n, 2)])-1)+1`
-/

namespace A162621.P11694134994809181212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1| + 1

end

end A162621.P11694134994809181212

namespace A162621

/-- `abs(A162619(comp[C(n, 2)])-1)+1` -/
def P11694134994809181212.Spec : Prop :=
  ∀ n, P11694134994809181212.a n = A162621 (n + 1)

end A162621

/-! ## A162621.P3872722378281765322

`A000027(A162619(comp[C(n, 2)]))`
-/

namespace A162621.P3872722378281765322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A162619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A162621.P3872722378281765322

namespace A162621

/-- `A000027(A162619(comp[C(n, 2)]))` -/
def P3872722378281765322.Spec : Prop :=
  ∀ n, P3872722378281765322.a n = A162621 (n + 1)

end A162621

/-! ## A162621.P13614541246017247815

`gcd(A000038(n), A162619(A014132(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162621

/-- `gcd(A000038(n), A162619(A014132(n+1)))` -/
def P13614541246017247815.Spec : Prop :=
  ∀ n, (P13614541246017247815.a n : ℤ) = A162621 (n + 1)

theorem P13614541246017247815.correct : P13614541246017247815.Spec := by
  intro n
  simp only [A162621, Nat.add_sub_cancel]

end A162621

/-! ## A162621.P1241960122699585946

`∑{d}[A162619(A014132(n+1)), A000010(#)]`
-/

namespace A162621.P1241960122699585946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162619 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A162621.P1241960122699585946

namespace A162621

/-- `∑{d}[A162619(A014132(n+1)), A000010(#)]` -/
def P1241960122699585946.Spec : Prop :=
  ∀ n, P1241960122699585946.a n = A162621 (n + 1)

end A162621

/-! ## A162621.P8665026322304416943

`∏{d}[A162619(A014132(n+1)), A014963(#)]`
-/

namespace A162621.P8665026322304416943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162619 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A162621.P8665026322304416943

namespace A162621

/-- `∏{d}[A162619(A014132(n+1)), A014963(#)]` -/
def P8665026322304416943.Spec : Prop :=
  ∀ n, P8665026322304416943.a n = A162621 (n + 1)

end A162621

/-!
# A162623: Triangle read by rows in which row n lists n terms, starting with n, such that the difference between successive terms is equal to n^4 - 1 = A123865(n).

The programs for A162623, there is no canonical definition to state claims against.
-/

/-! ## A162623.P14074635508729247383

`A162624(n+1)-A123865(A002024(n+1))`
-/

namespace A162623.P14074635508729247383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162624 (n + 1) - A123865 (A002024 (n + 1)).toNat

end

end A162623.P14074635508729247383

/-! ## A162623.P10671580193412035359

`A162622(comp[∑[n-1]])`
-/

namespace A162623.P10671580193412035359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162622 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162623.P10671580193412035359

/-! ## A162623.P16588519922339396234

`or(char[2], A162622(A007401(n+1)))`
-/

namespace A162623.P16588519922339396234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A162622 (A007401 (n + 1)).toNat)

end

end A162623.P16588519922339396234

/-! ## A162623.P11026356304230206543

`lcm(A033999(n), A162622(A007401(n+1)))`
-/

namespace A162623.P11026356304230206543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A162622 (A007401 (n + 1)).toNat)

end

end A162623.P11026356304230206543

/-! ## A162623.P2770282834748194491

`A020985(n)²*A162622(A007401(n+1))`
-/

namespace A162623.P2770282834748194491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A162622 (A007401 (n + 1)).toNat

end

end A162623.P2770282834748194491

/-! ## A162623.P2659159722624677144

`A162622(A007401(n+1))%A000578(n+2)`
-/

namespace A162623.P2659159722624677144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162622 (A007401 (n + 1)).toNat) (A000578 (n + 2))

end

end A162623.P2659159722624677144

/-! ## A162623.P2799321879146746246

`A007318(C(2, n+2))*A162622(A007401(n+1))`
-/

namespace A162623.P2799321879146746246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A162622 (A007401 (n + 1)).toNat

end

end A162623.P2799321879146746246

/-! ## A162623.P12577242342334387068

`A000041(gcd(n, n+1))*A162622(A007401(n+1))`
-/

namespace A162623.P12577242342334387068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A162622 (A007401 (n + 1)).toNat

end

end A162623.P12577242342334387068

/-! ## A162623.P3136557957557949462

`A162622(A007401(n+1))^A014963(4*n+2)`
-/

namespace A162623.P3136557957557949462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162622 (A007401 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A162623.P3136557957557949462

/-! ## A162623.P13555674551116561587

`A058281(A133263(n))*A162622(A007401(n+1))`
-/

namespace A162623.P13555674551116561587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A133263 n).toNat * A162622 (A007401 (n + 1)).toNat

end

end A162623.P13555674551116561587

/-!
# A162624: Triangle read by rows in which row n lists n terms, starting with n^4 + n - 1, such that the difference between successive terms is equal to n^4 - 1 = A123865(n).

The programs for A162624, there is no canonical definition to state claims against.
-/

/-! ## A162624.P14377683781924233936

`A162622(comp[∑[n]])`
-/

namespace A162624.P14377683781924233936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162622 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162624.P14377683781924233936

/-! ## A162624.P2363890546233268404

`(1-4/2)²*A162622(A014132(n+1))`
-/

namespace A162624.P2363890546233268404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A162622 (A014132 (n + 1)).toNat : ℚ)

end

end A162624.P2363890546233268404

/-! ## A162624.P7122974164627132343

`or(A073424(n), A162622(A014132(n+1)))`
-/

namespace A162624.P7122974164627132343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 n) (A162622 (A014132 (n + 1)).toNat)

end

end A162624.P7122974164627132343

/-! ## A162624.P8414107858817612169

`lcm(A033999(n), A162622(A007401(n+1)+1))`
-/

namespace A162624.P8414107858817612169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A162622 (A007401 (n + 1) + 1).toNat)

end

end A162624.P8414107858817612169

/-! ## A162624.P9142146862834866956

`A162622(A014132(n+1))+A024940(n)%A033999(n)`
-/

namespace A162624.P9142146862834866956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162622 (A014132 (n + 1)).toNat + Int.tmod (A024940 n) (A033999 n)

end

end A162624.P9142146862834866956

/-! ## A162624.P18010747912605955368

`A162622(A014132(n+1))+A007814(2*n+1)`
-/

namespace A162624.P18010747912605955368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162622 (A014132 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A162624.P18010747912605955368

/-! ## A162624.P6992131588370717102

`A162622(A014132(n+1))/A033999(A024940(n))²`
-/

namespace A162624.P6992131588370717102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162622 (A014132 (n + 1)).toNat : ℚ) / (A033999 (A024940 n).toNat ^ 2 : ℚ)

end

end A162624.P6992131588370717102

/-! ## A162624.P15338523551947460619

`A162622(A014132(n+1))%A106828(A257020(n+1))`
-/

namespace A162624.P15338523551947460619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162622 (A014132 (n + 1)).toNat) (A106828 (A257020 (n + 1)).toNat)

end

end A162624.P15338523551947460619

/-!
# A162625: Number of cells turned "ON" at n-th stage of cellular automaton whose virtual skeleton is a polyedge as the toothpick structure of A139250.

The programs for A162625, there is no canonical definition to state claims against.
-/

/-! ## A162625.P13523525252183658762

`Δ[A147614(n)]`
-/

namespace A162625.P13523525252183658762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162625.P13523525252183658762

/-! ## A162625.P16272397845417967812

`A147614(n+1)-A147614(n)`
-/

namespace A162625.P16272397845417967812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (n + 1) - A147614 n

end

end A162625.P16272397845417967812

/-! ## A162625.P3847607591075061624

`A000007(n)+Δ[A139252(n)+A139250(n)]`
-/

namespace A162625.P3847607591075061624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 n + A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A162625.P3847607591075061624

/-! ## A162625.P5741631103533925773

`Δ[A057427(n)+A139252(n)+A139250(n)]`
-/

namespace A162625.P5741631103533925773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A139252 n + A139250 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162625.P5741631103533925773

/-! ## A162625.P10107838083305407103

`Δ[A139250(n)+A139252(n)-A057428(n)]`
-/

namespace A162625.P10107838083305407103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A139252 n - A057428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162625.P10107838083305407103

/-!
# A162626: If 0 <= n <= 3 then a(n) = n(n+1)(n+2)/3, if n >= 4 then a(n) = n(n^2+5)/3.

The programs for A162626, there is no canonical definition to state claims against.
-/

/-! ## A162626.P17925746465647240409

`A001281(A004006(n)*A258199(n))`
-/

namespace A162626.P17925746465647240409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004006 n * A258199 n).toNat

end

end A162626.P17925746465647240409

/-! ## A162626.P9711275016384222583

`A210842(n)+a(n-1)` with `a(0)=0`
-/

namespace A162626.P9711275016384222583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A210842 n + a (n - 1)

end

end A162626.P9711275016384222583

/-! ## A162626.P3910681376921023589

`∑{e}[2^n, A018226(#)]`
-/

namespace A162626.P3910681376921023589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A018226 (Nat.factorization (f1 n) p)

end

end A162626.P3910681376921023589

/-! ## A162626.P2016636828170340633

`A018226(round(sqrt(n²+1)))%(5^n)`
-/

namespace A162626.P2016636828170340633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018226 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (5 ^ n : ℤ)

end

end A162626.P2016636828170340633

/-!
# A162627: a(n) = A162625(n+1)/2.

The programs for A162627, there is no canonical definition to state claims against.
-/

/-! ## A162627.P6108618885693136190

`A162625(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162627.P6108618885693136190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162625 (n + 2) : ℚ) / 2

end

end A162627.P6108618885693136190

/-! ## A162627.P1361436370292007589

`Δ[A147614(n+1)/2]`
-/

namespace A162627.P1361436370292007589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147614 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162627.P1361436370292007589

/-! ## A162627.P2044691221339927813

`Δ[Δ[∑[A147614(n)]/2]]`
-/

namespace A162627.P2044691221339927813
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162627.P2044691221339927813

/-! ## A162627.P18405503651210551881

`A001281(A162625(n+2))`
-/

namespace A162627.P18405503651210551881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A162625 (n + 2)).toNat

end

end A162627.P18405503651210551881

/-! ## A162627.P12370611807278594548

`Δ[A000463(A147614(n+1))]`
-/

namespace A162627.P12370611807278594548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A147614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162627.P12370611807278594548

/-! ## A162627.P2259165949904952070

`A001281(Δ[A147614(n+1)])`
-/

namespace A162627.P2259165949904952070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A162627.P2259165949904952070

/-! ## A162627.P17599323005179665632

`A004525(Δ[A147614(n+1)])`
-/

namespace A162627.P17599323005179665632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A162627.P17599323005179665632

/-! ## A162627.P15868550740101127629

`A004526(Δ[A147614(n+1)])`
-/

namespace A162627.P15868550740101127629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A162627.P15868550740101127629

/-! ## A162627.P8862177057029617489

`A065033(Δ[A147614(n+1)])`
-/

namespace A162627.P8862177057029617489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A162627.P8862177057029617489

/-! ## A162627.P8958546200612564918

`A123108(Δ[A147614(n+1)])`
-/

namespace A162627.P8958546200612564918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat

end

end A162627.P8958546200612564918

/-!
# A162628: G.f. is the polynomial (1-x^3) * (1-x^6) * (1-x^9) * (1-x^12) * (1-x^15) * (1-x^18) * (1-x^21) * (1-x^24) * (1-x^27) * (1-x^30) * (1-x^33) / (1-x)^11.

The programs for A162628, there is no canonical definition to state claims against.
-/

/-! ## A162628.P11852767360140579522

`∑[A060576(A075931(n))*A162617(n)]`
-/

namespace A162628.P11852767360140579522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A075931 n).toNat * A162617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162628.P11852767360140579522

/-!
# A162629: G.f. is the polynomial (1-x^3) * (1-x^6) * (1-x^9) * (1-x^12) * (1-x^15) * (1-x^18) * (1-x^21) * (1-x^24) * (1-x^27) * (1-x^30) * (1-x^33) * (1-x^36) / (1-x)^12.

The programs for A162629, there is no canonical definition to state claims against.
-/

/-! ## A162629.P9299801225869492268

`∑[A060576(8*n²)*A162628(n)]`
-/

namespace A162629.P9299801225869492268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (8 * n ^ 2) * A162628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162629.P9299801225869492268

/-!
# A162630: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

The programs for A162630, the canonical program `A162630.P7067745107647930616` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162630 has offset 1).

The definition of A162630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162630.P7067745107647930616

`2*A130517(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162630

/-- `2*A130517(n+1)` -/
def P7067745107647930616.Spec : Prop :=
  ∀ n, P7067745107647930616.a n = A162630 (n + 1)

theorem P7067745107647930616.correct : P7067745107647930616.Spec := by
  intro n
  simp only [A162630, Nat.add_sub_cancel]

end A162630

/-! ## A162630.P11029492155066117706

`2*(floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))+1)`
-/

namespace A162630.P11029492155066117706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊|(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌋ + 1)

end

end A162630.P11029492155066117706

namespace A162630

/-- `2*(floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))+1)` -/
def P11029492155066117706.Spec : Prop :=
  ∀ n, P11029492155066117706.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P1825630135632824037

`abs(2*A056951(n+1))`
-/

namespace A162630.P1825630135632824037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A056951 (n + 1)|

end

end A162630.P1825630135632824037

namespace A162630

/-- `abs(2*A056951(n+1))` -/
def P1825630135632824037.Spec : Prop :=
  ∀ n, P1825630135632824037.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P18417953254424804639

`abs(2*A114327(n)+1)+1`
-/

namespace A162630.P18417953254424804639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A114327 n + 1| + 1

end

end A162630.P18417953254424804639

namespace A162630

/-- `abs(2*A114327(n)+1)+1` -/
def P18417953254424804639.Spec : Prop :=
  ∀ n, P18417953254424804639.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P13593235952228067393

`A004277(A130517(n+1))`
-/

namespace A162630.P13593235952228067393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A130517 (n + 1)).toNat

end

end A162630.P13593235952228067393

namespace A162630

/-- `A004277(A130517(n+1))` -/
def P13593235952228067393.Spec : Prop :=
  ∀ n, P13593235952228067393.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P7496911025789801303

`A212012(A064578(n+1))`
-/

namespace A162630.P7496911025789801303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (A064578 (n + 1)).toNat

end

end A162630.P7496911025789801303

namespace A162630

/-- `A212012(A064578(n+1))` -/
def P7496911025789801303.Spec : Prop :=
  ∀ n, P7496911025789801303.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P5254374455894256778

`A130517(A000027(n+1))+A130517(n+1)`
-/

namespace A162630.P5254374455894256778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A000027 (n + 1)).toNat + A130517 (n + 1)

end

end A162630.P5254374455894256778

namespace A162630

/-- `A130517(A000027(n+1))+A130517(n+1)` -/
def P5254374455894256778.Spec : Prop :=
  ∀ n, P5254374455894256778.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P12065269362291858228

`A004277(A004737(Δ[n²]))`
-/

namespace A162630.P12065269362291858228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A162630.P12065269362291858228

namespace A162630

/-- `A004277(A004737(Δ[n²]))` -/
def P12065269362291858228.Spec : Prop :=
  ∀ n, P12065269362291858228.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P5791976469747291568

`A005843(A004737(2*n+1))`
-/

namespace A162630.P5791976469747291568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004737 (2 * n + 1)).toNat

end

end A162630.P5791976469747291568

namespace A162630

/-- `A005843(A004737(2*n+1))` -/
def P5791976469747291568.Spec : Prop :=
  ∀ n, P5791976469747291568.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P15506667311984229716

`A004741(A124258(2*n+1)+1)`
-/

namespace A162630.P15506667311984229716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A124258 (2 * n + 1) + 1).toNat

end

end A162630.P15506667311984229716

namespace A162630

/-- `A004741(A124258(2*n+1)+1)` -/
def P15506667311984229716.Spec : Prop :=
  ∀ n, P15506667311984229716.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P3400682801648658907

`A216209(2*A133825(2*n))`
-/

namespace A162630.P3400682801648658907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216209 (2 * A133825 (2 * n)).toNat

end

end A162630.P3400682801648658907

namespace A162630

/-- `A216209(2*A133825(2*n))` -/
def P3400682801648658907.Spec : Prop :=
  ∀ n, P3400682801648658907.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P4266752603072173247

`A071797(A049068(A004737(2*n+1)²))`
-/

namespace A162630.P4266752603072173247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A049068 (A004737 (2 * n + 1) ^ 2).toNat).toNat

end

end A162630.P4266752603072173247

namespace A162630

/-- `A071797(A049068(A004737(2*n+1)²))` -/
def P4266752603072173247.Spec : Prop :=
  ∀ n, P4266752603072173247.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P13044423036225513692

`A101037(A185869(n+1))`
-/

namespace A162630.P13044423036225513692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101037 (A185869 (n + 1)).toNat

end

end A162630.P13044423036225513692

namespace A162630

/-- `A101037(A185869(n+1))` -/
def P13044423036225513692.Spec : Prop :=
  ∀ n, P13044423036225513692.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P17793674184575375050

`A088226(A017101(n))+1`
-/

namespace A162630.P17793674184575375050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A017101 n).toNat + 1

end

end A162630.P17793674184575375050

namespace A162630

/-- `A088226(A017101(n))+1` -/
def P17793674184575375050.Spec : Prop :=
  ∀ n, P17793674184575375050.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P7677514319030448124

`A004738(2*A161983(2*n+1))`
-/

namespace A162630.P7677514319030448124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (2 * A161983 (2 * n + 1)).toNat

end

end A162630.P7677514319030448124

namespace A162630

/-- `A004738(2*A161983(2*n+1))` -/
def P7677514319030448124.Spec : Prop :=
  ∀ n, P7677514319030448124.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P9479570971886596276

`A074294(A227453(A004737(2*n+1)²))`
-/

namespace A162630.P9479570971886596276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A227453 (A004737 (2 * n + 1) ^ 2).toNat).toNat

end

end A162630.P9479570971886596276

namespace A162630

/-- `A074294(A227453(A004737(2*n+1)²))` -/
def P9479570971886596276.Spec : Prop :=
  ∀ n, P9479570971886596276.a n = A162630 (n + 1)

end A162630

/-! ## A162630.P5136405086342373419

`A019555(2*A133823(2*n))`
-/

namespace A162630.P5136405086342373419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (2 * A133823 (2 * n)).toNat

end

end A162630.P5136405086342373419

namespace A162630

/-- `A019555(2*A133823(2*n))` -/
def P5136405086342373419.Spec : Prop :=
  ∀ n, P5136405086342373419.a n = A162630 (n + 1)

end A162630

/-!
# A162631: G.f. is the polynomial (1-x^3) * (1-x^6) * (1-x^9) * (1-x^12) * (1-x^15) * (1-x^18) * (1-x^21) * (1-x^24) * (1-x^27) * (1-x^30) * (1-x^33) * (1-x^36) * (1-x^39) / (1-x)^13.

The programs for A162631, there is no canonical definition to state claims against.
-/

/-! ## A162631.P5212190489402425358

`∑[A162629(n)+A000007(A174546(n))]`
-/

namespace A162631.P5212190489402425358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162629 n + A000007 (A174546 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162631.P5212190489402425358

/-!
# A162632: G.f. is the polynomial (Product_{k=1..14} (1 - x^(3*k)))/(1-x)^14.

The programs for A162632, there is no canonical definition to state claims against.
-/

/-! ## A162632.P6795817810324305259

`∑[A008833(A162373(n+1))*A162631(n)]`
-/

namespace A162632.P6795817810324305259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A162373 (n + 1)).toNat * A162631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162632.P6795817810324305259

/-!
# A162633: E.g.f. satisfies: A(x) = exp( x*A(x+x^2) ).

The programs for A162633, there is no canonical definition to state claims against.
-/

/-! ## A162633.P12518993386368794913

`A137803(A274983(n)-A037027(n))`
-/

namespace A162633.P12518993386368794913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (A274983 n - A037027 n).toNat

end

end A162633.P12518993386368794913

/-! ## A162633.P6795823039130834007

`or(A007094(A302585(n)), A302585(n))`
-/

namespace A162633.P6795823039130834007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007094 (A302585 n).toNat) (A302585 n)

end

end A162633.P6795823039130834007

/-!
# A162634: Numerators of fractions with denominators A000215(n) approximating the Thue-Morse constant.

The programs for A162634, the canonical program `A162634.P946540429984562669` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162634 has offset 0).

The definition of A162634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162634.P946540429984562669

`1+(2^2^(n-1)-1)*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162634

/-- `1+(2^2^(n-1)-1)*a(n-1)` -/
def P946540429984562669.Spec : Prop :=
  ∀ n, P946540429984562669.a n = (A162634 n : ℝ)

end A162634

/-! ## A162634.P7310931015518305848

`A048707(n)+1`
-/

namespace A162634.P7310931015518305848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048707 n + 1

end

end A162634.P7310931015518305848

namespace A162634

/-- `A048707(n)+1` -/
def P7310931015518305848.Spec : Prop :=
  ∀ n, P7310931015518305848.a n = A162634 n

end A162634

/-! ## A162634.P1939821857277417410

`A088172(2^n)`
-/

namespace A162634.P1939821857277417410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088172 (2 ^ n)

end

end A162634.P1939821857277417410

namespace A162634

/-- `A088172(2^n)` -/
def P1939821857277417410.Spec : Prop :=
  ∀ n, P1939821857277417410.a n = A162634 n

end A162634

/-! ## A162634.P1692667766754219290

`A019300(2^n-1)+1`
-/

namespace A162634.P1692667766754219290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 (2 ^ n - 1) + 1

end

end A162634.P1692667766754219290

namespace A162634

/-- `A019300(2^n-1)+1` -/
def P1692667766754219290.Spec : Prop :=
  ∀ n, P1692667766754219290.a n = A162634 n

end A162634

/-! ## A162634.P9121878811755920454

`A001146(n)-A133468(n)`
-/

namespace A162634.P9121878811755920454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A133468 n

end

end A162634.P9121878811755920454

namespace A162634

/-- `A001146(n)-A133468(n)` -/
def P9121878811755920454.Spec : Prop :=
  ∀ n, P9121878811755920454.a n = A162634 n

end A162634

/-!
# A162635: G.f. is the polynomial (1-x^3) * (1-x^6) * (1-x^9) * (1-x^12) * (1-x^15) * (1-x^18) * (1-x^21) * (1-x^24) * (1-x^27) * (1-x^30) * (1-x^33) * (1-x^36) * (1-x^39) * (1-x^42) * (1-x^45) / (1-x)^15.

The programs for A162635, there is no canonical definition to state claims against.
-/

/-! ## A162635.P9244416424066796475

`∑[A162632(n)*A348039(A163588(n+1))]`
-/

namespace A162635.P9244416424066796475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162632 n * A348039 (A163588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162635.P9244416424066796475

/-!
# A162636: G.f. is the polynomial (Product_{k=1..16} (1 - x^(3*k)))/(1-x)^16.

The programs for A162636, there is no canonical definition to state claims against.
-/

/-! ## A162636.P1267196706435179078

`∑[A001222(A325145(n+1))*A162635(n)]`
-/

namespace A162636.P1267196706435179078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325145 (n + 1)).toNat * A162635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162636.P1267196706435179078

/-!
# A162637: G.f. is the polynomial (Product_{k=1..17} (1 - x^(3*k)))/(1-x)^17.

The programs for A162637, there is no canonical definition to state claims against.
-/

/-! ## A162637.P17532438843450275507

`∑[A001222(A079021(n+1))*A162636(n)]`
-/

namespace A162637.P17532438843450275507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079021 (n + 1)).toNat * A162636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162637.P17532438843450275507

/-!
# A162638: G.f. is the polynomial (Product_{k=1..18} (1 - x^(3*k)))/(1-x)^18.

The programs for A162638, there is no canonical definition to state claims against.
-/

/-! ## A162638.P10337290966434516997

`∑[A113711(n+1)%2*A162637(n)]`
-/

namespace A162638.P10337290966434516997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113711 (n + 1)) 2 * A162637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162638.P10337290966434516997

/-!
# A162639: G.f. is the polynomial (Product_{k=1..19} (1 - x^(3*k)))/(1-x)^19.

The programs for A162639, there is no canonical definition to state claims against.
-/

/-! ## A162639.P8197810724768986938

`∑[∑[∑[A001222(A079021(n+1))*A162636(n)]]]`
-/

namespace A162639.P8197810724768986938
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079021 (n + 1)).toNat * A162636 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162639.P8197810724768986938

/-!
# A162640: G.f. is the polynomial (Product_{k=1..20} (1 - x^(3*k)))/(1-x)^20.

The programs for A162640, there is no canonical definition to state claims against.
-/

/-! ## A162640.P3822867278516021643

`∑[∑[∑[A113711(n+1)%2*A162637(n)]]]`
-/

namespace A162640.P3822867278516021643
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113711 (n + 1)) 2 * A162637 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162640.P3822867278516021643

/-!
# A162641: Number of even exponents in canonical prime factorization of n.

The programs for A162641, the canonical program `A162641.P7922189454188814525` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162641 has offset 1).

The definition of A162641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A336643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162641.P7253145588590513928

`A162642(A003557(n+1))`
-/

namespace A162641.P7253145588590513928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A003557 (n + 1)).toNat

end

end A162641.P7253145588590513928

namespace A162641

/-- `A162642(A003557(n+1))` -/
def P7253145588590513928.Spec : Prop :=
  ∀ n, P7253145588590513928.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P7922189454188814525

`A001221(A336643(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162641

/-- `A001221(A336643(n+1))` -/
def P7922189454188814525.Spec : Prop :=
  ∀ n, P7922189454188814525.a n = A162641 (n + 1)

theorem P7922189454188814525.correct : P7922189454188814525.Spec := by
  intro n
  simp only [A162641, Nat.add_sub_cancel]

end A162641

/-! ## A162641.P8780474194772537275

`A001221(n+1)-A162642(n+1)`
-/

namespace A162641.P8780474194772537275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A162642 (n + 1)

end

end A162641.P8780474194772537275

namespace A162641

/-- `A001221(n+1)-A162642(n+1)` -/
def P8780474194772537275.Spec : Prop :=
  ∀ n, P8780474194772537275.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P1811775677687917513

`∑{e}[n+1, log2(gcd(2, #))]`
-/

namespace A162641.P1811775677687917513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.gcd 2 (Nat.factorization (f1 n) p) : ℝ)

end

end A162641.P1811775677687917513

namespace A162641

/-- `∑{e}[n+1, log2(gcd(2, #))]` -/
def P1811775677687917513.Spec : Prop :=
  ∀ n, P1811775677687917513.a n = (A162641 (n + 1) : ℝ)

end A162641

/-! ## A162641.P6187481610288526385

`∑{e}[n+1, (#+1)%2]`
-/

namespace A162641.P6187481610288526385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) % 2

end

end A162641.P6187481610288526385

namespace A162641

/-- `∑{e}[n+1, (#+1)%2]` -/
def P6187481610288526385.Spec : Prop :=
  ∀ n, (P6187481610288526385.a n : ℤ) = A162641 (n + 1)

end A162641

/-! ## A162641.P1965477128012355851

`∑{e}[n+1, and(1, #+1)]`
-/

namespace A162641.P1965477128012355851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 (Nat.factorization (f1 n) p + 1)

end

end A162641.P1965477128012355851

namespace A162641

/-- `∑{e}[n+1, and(1, #+1)]` -/
def P1965477128012355851.Spec : Prop :=
  ∀ n, (P1965477128012355851.a n : ℤ) = A162641 (n + 1)

end A162641

/-! ## A162641.P11304999342857781994

`∑{e}[n+1, or(1, #)-#]`
-/

namespace A162641.P11304999342857781994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.lor 1 (Nat.factorization (f1 n) p) : ℤ) - (Nat.factorization (f1 n) p : ℤ))

end

end A162641.P11304999342857781994

namespace A162641

/-- `∑{e}[n+1, or(1, #)-#]` -/
def P11304999342857781994.Spec : Prop :=
  ∀ n, P11304999342857781994.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P18348849471097622280

`∑{e}[n+1, val(#²+2, 2)]`
-/

namespace A162641.P18348849471097622280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p ^ 2 + 2) 2

end

end A162641.P18348849471097622280

namespace A162641

/-- `∑{e}[n+1, val(#²+2, 2)]` -/
def P18348849471097622280.Spec : Prop :=
  ∀ n, (P18348849471097622280.a n : ℤ) = A162641 (n + 1)

end A162641

/-! ## A162641.P5082654376620219594

`val(∏{e}[n+1, #²+2], 2)`
-/

namespace A162641.P5082654376620219594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p ^ 2 + 2)) 2

end

end A162641.P5082654376620219594

namespace A162641

/-- `val(∏{e}[n+1, #²+2], 2)` -/
def P5082654376620219594.Spec : Prop :=
  ∀ n, (P5082654376620219594.a n : ℤ) = A162641 (n + 1)

end A162641

/-! ## A162641.P10191262847827366453

`∑{e}[n+1, ceil((1-ϕ)^#)]`
-/

namespace A162641.P10191262847827366453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(1 - Real.goldenRatio) ^ Nat.factorization (f1 n) p⌉

end

end A162641.P10191262847827366453

namespace A162641

/-- `∑{e}[n+1, ceil((1-ϕ)^#)]` -/
def P10191262847827366453.Spec : Prop :=
  ∀ n, P10191262847827366453.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P676629688860620548

`log2(A056624(n+1))`
-/

namespace A162641.P676629688860620548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A056624 (n + 1) : ℝ)

end

end A162641.P676629688860620548

namespace A162641

/-- `log2(A056624(n+1))` -/
def P676629688860620548.Spec : Prop :=
  ∀ n, P676629688860620548.a n = (A162641 (n + 1) : ℝ)

end A162641

/-! ## A162641.P12058363682546889236

`val(A358223(n+1), 2)`
-/

namespace A162641.P12058363682546889236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358223 (n + 1)).toNat 2

end

end A162641.P12058363682546889236

namespace A162641

/-- `val(A358223(n+1), 2)` -/
def P12058363682546889236.Spec : Prop :=
  ∀ n, (P12058363682546889236.a n : ℤ) = A162641 (n + 1)

end A162641

/-! ## A162641.P5687656299273563067

`val(A389831(n+1), 2)`
-/

namespace A162641.P5687656299273563067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A389831 (n + 1)).toNat 2

end

end A162641.P5687656299273563067

namespace A162641

/-- `val(A389831(n+1), 2)` -/
def P5687656299273563067.Spec : Prop :=
  ∀ n, (P5687656299273563067.a n : ℤ) = A162641 (n + 1)

end A162641

/-! ## A162641.P11337719270347219399

`A001221(A071974(n+1))`
-/

namespace A162641.P11337719270347219399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A071974 (n + 1)).toNat

end

end A162641.P11337719270347219399

namespace A162641

/-- `A001221(A071974(n+1))` -/
def P11337719270347219399.Spec : Prop :=
  ∀ n, P11337719270347219399.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P2416204901018964971

`A046660(A066990(n+1))`
-/

namespace A162641.P2416204901018964971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A066990 (n + 1)).toNat

end

end A162641.P2416204901018964971

namespace A162641

/-- `A046660(A066990(n+1))` -/
def P2416204901018964971.Spec : Prop :=
  ∀ n, P2416204901018964971.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P9123121380720001183

`A001221(A331738(n+1))`
-/

namespace A162641.P9123121380720001183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331738 (n + 1)).toNat

end

end A162641.P9123121380720001183

namespace A162641

/-- `A001221(A331738(n+1))` -/
def P9123121380720001183.Spec : Prop :=
  ∀ n, P9123121380720001183.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P17116223355810289524

`A001221(A350388(n+1))`
-/

namespace A162641.P17116223355810289524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350388 (n + 1)).toNat

end

end A162641.P17116223355810289524

namespace A162641

/-- `A001221(A350388(n+1))` -/
def P17116223355810289524.Spec : Prop :=
  ∀ n, P17116223355810289524.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P15976660783344248346

`A056170(A336643(n+1)²)`
-/

namespace A162641.P15976660783344248346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A336643 (n + 1) ^ 2).toNat

end

end A162641.P15976660783344248346

namespace A162641

/-- `A056170(A336643(n+1)²)` -/
def P15976660783344248346.Spec : Prop :=
  ∀ n, P15976660783344248346.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P15764484948023745806

`A349326(A336643(n+1)²)`
-/

namespace A162641.P15764484948023745806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (A336643 (n + 1) ^ 2).toNat

end

end A162641.P15764484948023745806

namespace A162641

/-- `A349326(A336643(n+1)²)` -/
def P15764484948023745806.Spec : Prop :=
  ∀ n, P15764484948023745806.a n = A162641 (n + 1)

end A162641

/-! ## A162641.P8354682795292392741

`∑{p}[A071974(n+1), A071974(#)]`
-/

namespace A162641.P8354682795292392741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071974 p

end

end A162641.P8354682795292392741

namespace A162641

/-- `∑{p}[A071974(n+1), A071974(#)]` -/
def P8354682795292392741.Spec : Prop :=
  ∀ n, P8354682795292392741.a n = A162641 (n + 1)

end A162641

/-!
# A162642: Number of odd exponents in the canonical prime factorization of n.

The programs for A162642, the canonical program `A162642.P6212984874729219521` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162642 has offset 1).

The definition of A162642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A162641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162642.P5685420706097752302

`A001221(A007913(n+1))`
-/

namespace A162642.P5685420706097752302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007913 (n + 1)).toNat

end

end A162642.P5685420706097752302

namespace A162642

/-- `A001221(A007913(n+1))` -/
def P5685420706097752302.Spec : Prop :=
  ∀ n, P5685420706097752302.a n = A162642 (n + 1)

end A162642

/-! ## A162642.P13029299845744236738

`A056169(n+1)+A295662(n+1)`
-/

namespace A162642.P13029299845744236738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A295662 (n + 1)

end

end A162642.P13029299845744236738

namespace A162642

/-- `A056169(n+1)+A295662(n+1)` -/
def P13029299845744236738.Spec : Prop :=
  ∀ n, P13029299845744236738.a n = A162642 (n + 1)

end A162642

/-! ## A162642.P6212984874729219521

`A001221(n+1)-A162641(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162642

/-- `A001221(n+1)-A162641(n+1)` -/
def P6212984874729219521.Spec : Prop :=
  ∀ n, P6212984874729219521.a n = A162642 (n + 1)

theorem P6212984874729219521.correct : P6212984874729219521.Spec := by
  intro n
  simp only [A162642, Nat.add_sub_cancel]

end A162642

/-! ## A162642.P12237059811043581609

`∑{e}[n+1, #%2]`
-/

namespace A162642.P12237059811043581609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % 2

end

end A162642.P12237059811043581609

namespace A162642

/-- `∑{e}[n+1, #%2]` -/
def P12237059811043581609.Spec : Prop :=
  ∀ n, (P12237059811043581609.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P4401672262349256628

`∑{e}[n+1, and(1, #)]`
-/

namespace A162642.P4401672262349256628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 (Nat.factorization (f1 n) p)

end

end A162642.P4401672262349256628

namespace A162642

/-- `∑{e}[n+1, and(1, #)]` -/
def P4401672262349256628.Spec : Prop :=
  ∀ n, (P4401672262349256628.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P8196706563028698670

`∑{e}[n+1, 2-gcd(2, #)]`
-/

namespace A162642.P8196706563028698670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.gcd 2 (Nat.factorization (f1 n) p) : ℤ))

end

end A162642.P8196706563028698670

namespace A162642

/-- `∑{e}[n+1, 2-gcd(2, #)]` -/
def P8196706563028698670.Spec : Prop :=
  ∀ n, P8196706563028698670.a n = A162642 (n + 1)

end A162642

/-! ## A162642.P12122438281340120751

`∑{e}[n+1, val(#²+1, 2)]`
-/

namespace A162642.P12122438281340120751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p ^ 2 + 1) 2

end

end A162642.P12122438281340120751

namespace A162642

/-- `∑{e}[n+1, val(#²+1, 2)]` -/
def P12122438281340120751.Spec : Prop :=
  ∀ n, (P12122438281340120751.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P5786763174042758129

`val(∏{e}[n+1, #²+1], 2)`
-/

namespace A162642.P5786763174042758129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p ^ 2 + 1)) 2

end

end A162642.P5786763174042758129

namespace A162642

/-- `val(∏{e}[n+1, #²+1], 2)` -/
def P5786763174042758129.Spec : Prop :=
  ∀ n, (P5786763174042758129.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P2887903837242627000

`∑{e}[n+1, or(#, -2)+2]`
-/

namespace A162642.P2887903837242627000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Int.lor (Nat.factorization (f1 n) p : ℤ) (-2) + 2)

end

end A162642.P2887903837242627000

namespace A162642

/-- `∑{e}[n+1, or(#, -2)+2]` -/
def P2887903837242627000.Spec : Prop :=
  ∀ n, P2887903837242627000.a n = A162642 (n + 1)

end A162642

/-! ## A162642.P3719162335163416405

`∑{p}[n+1, val(n+1, #)%2]`
-/

namespace A162642.P3719162335163416405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p % 2

end

end A162642.P3719162335163416405

namespace A162642

/-- `∑{p}[n+1, val(n+1, #)%2]` -/
def P3719162335163416405.Spec : Prop :=
  ∀ n, (P3719162335163416405.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P7150274523092455506

`∑{e}[2*n-(n-1), and(1, #)²]`
-/

namespace A162642.P7150274523092455506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.land 1 (Nat.factorization (f1 n).natAbs p) ^ 2

end

end A162642.P7150274523092455506

namespace A162642

/-- `∑{e}[2*n-(n-1), and(1, #)²]` -/
def P7150274523092455506.Spec : Prop :=
  ∀ n, (P7150274523092455506.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P16316668120589082791

`log2(A055076(n+1))`
-/

namespace A162642.P16316668120589082791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055076 (n + 1) : ℝ)

end

end A162642.P16316668120589082791

namespace A162642

/-- `log2(A055076(n+1))` -/
def P16316668120589082791.Spec : Prop :=
  ∀ n, P16316668120589082791.a n = (A162642 (n + 1) : ℝ)

end A162642

/-! ## A162642.P5393041423214551823

`val(A293442(n+1), 2)`
-/

namespace A162642.P5393041423214551823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293442 (n + 1)).toNat 2

end

end A162642.P5393041423214551823

namespace A162642

/-- `val(A293442(n+1), 2)` -/
def P5393041423214551823.Spec : Prop :=
  ∀ n, (P5393041423214551823.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P11406396296671044211

`val(A318470(n+1), 2)`
-/

namespace A162642.P11406396296671044211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318470 (n + 1)).toNat 2

end

end A162642.P11406396296671044211

namespace A162642

/-- `val(A318470(n+1), 2)` -/
def P11406396296671044211.Spec : Prop :=
  ∀ n, (P11406396296671044211.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P12334577142666080146

`val(A366742(n+1), 2)`
-/

namespace A162642.P12334577142666080146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366742 (n + 1)).toNat 2

end

end A162642.P12334577142666080146

namespace A162642

/-- `val(A366742(n+1), 2)` -/
def P12334577142666080146.Spec : Prop :=
  ∀ n, (P12334577142666080146.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P11881404525649348404

`∑{e}[n+1, A000035(#)]`
-/

namespace A162642.P11881404525649348404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000035 (Nat.factorization (f1 n) p)

end

end A162642.P11881404525649348404

namespace A162642

/-- `∑{e}[n+1, A000035(#)]` -/
def P11881404525649348404.Spec : Prop :=
  ∀ n, P11881404525649348404.a n = A162642 (n + 1)

end A162642

/-! ## A162642.P131923556223471058

`∑{e}[A295878(n+1), #]`
-/

namespace A162642.P131923556223471058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A162642.P131923556223471058

namespace A162642

/-- `∑{e}[A295878(n+1), #]` -/
def P131923556223471058.Spec : Prop :=
  ∀ n, (P131923556223471058.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P17605241741147931829

`∑{e}[A335423(n+1), #]`
-/

namespace A162642.P17605241741147931829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A162642.P17605241741147931829

namespace A162642

/-- `∑{e}[A335423(n+1), #]` -/
def P17605241741147931829.Spec : Prop :=
  ∀ n, (P17605241741147931829.a n : ℤ) = A162642 (n + 1)

end A162642

/-! ## A162642.P14702881071002773221

`∑{e}[n+1, A020639(3*#)-2]`
-/

namespace A162642.P14702881071002773221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A020639 (3 * Nat.factorization (f1 n) p) - 2)

end

end A162642.P14702881071002773221

namespace A162642

/-- `∑{e}[n+1, A020639(3*#)-2]` -/
def P14702881071002773221.Spec : Prop :=
  ∀ n, P14702881071002773221.a n = A162642 (n + 1)

end A162642

/-! ## A162642.P13316949893870395862

`A001221(Δ[A069891(n)])`
-/

namespace A162642.P13316949893870395862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A162642.P13316949893870395862

namespace A162642

/-- `A001221(Δ[A069891(n)])` -/
def P13316949893870395862.Spec : Prop :=
  ∀ n, P13316949893870395862.a n = A162642 (n + 1)

end A162642

/-!
# A162643: Numbers whose number of divisors is not a power of 2.

The programs for A162643, the canonical program `A162643.P6606291561920249230` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162643 has offset 1).

The definition of A162643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162643.P7093161467074458547

`lt[0, A005087(A000005(n+1))]+1`
-/

namespace A162643.P7093161467074458547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P7093161467074458547

namespace A162643

/-- `lt[0, A005087(A000005(n+1))]+1` -/
def P7093161467074458547.Spec : Prop :=
  ∀ n, (P7093161467074458547.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P12588389382162973579

`lt[1, A325401(A000005(n+2))]+2`
-/

namespace A162643.P12588389382162973579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A000005 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A162643.P12588389382162973579

namespace A162643

/-- `lt[1, A325401(A000005(n+2))]+2` -/
def P12588389382162973579.Spec : Prop :=
  ∀ n, (P12588389382162973579.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P6606291561920249230

`∪[A038109(n+1), A360723(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A162643

/-- `∪[A038109(n+1), A360723(n+1)]` -/
def P6606291561920249230.Spec : Prop :=
  ∀ n, (P6606291561920249230.a n : ℤ) = A162643 (n + 1)

theorem P6606291561920249230.correct : P6606291561920249230.Spec := by
  intro n
  simp only [A162643, Nat.add_sub_cancel]

end A162643

/-! ## A162643.P9311168507049769721

`∪[A059269(n+1), A354181(n+1)]`
-/

namespace A162643.P9311168507049769721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162643.P9311168507049769721

namespace A162643

/-- `∪[A059269(n+1), A354181(n+1)]` -/
def P9311168507049769721.Spec : Prop :=
  ∀ n, (P9311168507049769721.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P2772390424589074161

`eq[1, A014963(2*A000005(n+1))]+1`
-/

namespace A162643.P2772390424589074161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162643.P2772390424589074161

namespace A162643

/-- `eq[1, A014963(2*A000005(n+1))]+1` -/
def P2772390424589074161.Spec : Prop :=
  ∀ n, (P2772390424589074161.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P17656796808741210383

`lt[0, A348271(n+1)]+1`
-/

namespace A162643.P17656796808741210383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P17656796808741210383

namespace A162643

/-- `lt[0, A348271(n+1)]+1` -/
def P17656796808741210383.Spec : Prop :=
  ∀ n, (P17656796808741210383.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P4578098835910916228

`lt[0, A348341(n+1)]+1`
-/

namespace A162643.P4578098835910916228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P4578098835910916228

namespace A162643

/-- `lt[0, A348341(n+1)]+1` -/
def P4578098835910916228.Spec : Prop :=
  ∀ n, (P4578098835910916228.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P13427265277331512900

`lt[1, A212181(n+1)]+1`
-/

namespace A162643.P13427265277331512900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P13427265277331512900

namespace A162643

/-- `lt[1, A212181(n+1)]+1` -/
def P13427265277331512900.Spec : Prop :=
  ∀ n, (P13427265277331512900.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P14544392462307800953

`lt[1, A372331(n+1)]+1`
-/

namespace A162643.P14544392462307800953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P14544392462307800953

namespace A162643

/-- `lt[1, A372331(n+1)]+1` -/
def P14544392462307800953.Spec : Prop :=
  ∀ n, (P14544392462307800953.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P10414016386376780665

`lt[2, A071188(n+1)]+1`
-/

namespace A162643.P10414016386376780665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P10414016386376780665

namespace A162643

/-- `lt[2, A071188(n+1)]+1` -/
def P10414016386376780665.Spec : Prop :=
  ∀ n, (P10414016386376780665.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P10775542016992688346

`lt[2, A152235(n+1)]+1`
-/

namespace A162643.P10775542016992688346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P10775542016992688346

namespace A162643

/-- `lt[2, A152235(n+1)]+1` -/
def P10775542016992688346.Spec : Prop :=
  ∀ n, (P10775542016992688346.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P3465482010466665823

`lt[2, A078545(n+2)]+2`
-/

namespace A162643.P3465482010466665823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078545 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A162643.P3465482010466665823

namespace A162643

/-- `lt[2, A078545(n+2)]+2` -/
def P3465482010466665823.Spec : Prop :=
  ∀ n, (P3465482010466665823.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P17086096900597655794

`lt[1, A286364(∏{e}[n+1, #+1])]+1`
-/

namespace A162643.P17086096900597655794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286364 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162643.P17086096900597655794

namespace A162643

/-- `lt[1, A286364(∏{e}[n+1, #+1])]+1` -/
def P17086096900597655794.Spec : Prop :=
  ∀ n, (P17086096900597655794.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P13673600797988547102

`lt[0, A348271(A028310(n))]`
-/

namespace A162643.P13673600797988547102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162643.P13673600797988547102

namespace A162643

/-- `lt[0, A348271(A028310(n))]` -/
def P13673600797988547102.Spec : Prop :=
  ∀ n, (P13673600797988547102.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P11766380361384948198

`lt[2, A091460(A032741(n))]`
-/

namespace A162643.P11766380361384948198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162643.P11766380361384948198

namespace A162643

/-- `lt[2, A091460(A032741(n))]` -/
def P11766380361384948198.Spec : Prop :=
  ∀ n, (P11766380361384948198.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P15911518156122602859

`lt[2, A006530(A145154(n))]`
-/

namespace A162643.P15911518156122602859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162643.P15911518156122602859

namespace A162643

/-- `lt[2, A006530(A145154(n))]` -/
def P15911518156122602859.Spec : Prop :=
  ∀ n, (P15911518156122602859.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P16925812388201693148

`A020725(lt[0, A348271(n+1)])`
-/

namespace A162643.P16925812388201693148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A162643.P16925812388201693148

namespace A162643

/-- `A020725(lt[0, A348271(n+1)])` -/
def P16925812388201693148.Spec : Prop :=
  ∀ n, P16925812388201693148.a n = A162643 (n + 1)

end A162643

/-! ## A162643.P6953939643271912876

`lt[1, A006257(A032741(n)+1)]`
-/

namespace A162643.P6953939643271912876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162643.P6953939643271912876

namespace A162643

/-- `lt[1, A006257(A032741(n)+1)]` -/
def P6953939643271912876.Spec : Prop :=
  ∀ n, (P6953939643271912876.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P3548266230309587220

`lt[2, A006530(A032741(n)+1)]`
-/

namespace A162643.P3548266230309587220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162643.P3548266230309587220

namespace A162643

/-- `lt[2, A006530(A032741(n)+1)]` -/
def P3548266230309587220.Spec : Prop :=
  ∀ n, (P3548266230309587220.a n : ℤ) = A162643 (n + 1)

end A162643

/-! ## A162643.P11983934780306694952

`lt[2, A318884(A032741(n)+1)]`
-/

namespace A162643.P11983934780306694952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162643.P11983934780306694952

namespace A162643

/-- `lt[2, A318884(A032741(n)+1)]` -/
def P11983934780306694952.Spec : Prop :=
  ∀ n, (P11983934780306694952.a n : ℤ) = A162643 (n + 1)

end A162643

/-!
# A162644: Numbers m such that A162511(m) = +1.

The programs for A162644, the canonical program `A162644.P8570067811819745602` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162644 has offset 1).

The definition of A162644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162644.P8570067811819745602

`record[(n+1)*(-1)^∑{e}[n+1, #-1]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162644

/-- `record[(n+1)*(-1)^∑{e}[n+1, #-1]]` -/
def P8570067811819745602.Spec : Prop :=
  ∀ n, P8570067811819745602.a n = (A162644 (n + 1) : ℚ)

end A162644

/-! ## A162644.P3420620671056955928

`record[(n+1)/(-1)^∑{e}[n+1, #-1]]`
-/

namespace A162644.P3420620671056955928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (-1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162644.P3420620671056955928

namespace A162644

/-- `record[(n+1)/(-1)^∑{e}[n+1, #-1]]` -/
def P3420620671056955928.Spec : Prop :=
  ∀ n, P3420620671056955928.a n = (A162644 (n + 1) : ℚ)

end A162644

/-! ## A162644.P1216621285104060729

`record[(n+1)^(-1)^∑{e}[n+1, #-1]]`
-/

namespace A162644.P1216621285104060729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((-1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162644.P1216621285104060729

namespace A162644

/-- `record[(n+1)^(-1)^∑{e}[n+1, #-1]]` -/
def P1216621285104060729.Spec : Prop :=
  ∀ n, P1216621285104060729.a n = (A162644 (n + 1) : ℝ)

end A162644

/-! ## A162644.P15927560127456057206

`eq[1, A162511(n+1)]+1`
-/

namespace A162644.P15927560127456057206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162644.P15927560127456057206

namespace A162644

/-- `eq[1, A162511(n+1)]+1` -/
def P15927560127456057206.Spec : Prop :=
  ∀ n, (P15927560127456057206.a n : ℤ) = A162644 (n + 1)

end A162644

/-! ## A162644.P6927728889321780265

`lt[A046660(n+1)%2, 1]+1`
-/

namespace A162644.P6927728889321780265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046660 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A162644.P6927728889321780265

namespace A162644

/-- `lt[A046660(n+1)%2, 1]+1` -/
def P6927728889321780265.Spec : Prop :=
  ∀ n, (P6927728889321780265.a n : ℤ) = A162644 (n + 1)

end A162644

/-! ## A162644.P12513994960735708736

`eq[1, A033999(A046660(n+1))]+1`
-/

namespace A162644.P12513994960735708736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A046660 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162644.P12513994960735708736

namespace A162644

/-- `eq[1, A033999(A046660(n+1))]+1` -/
def P12513994960735708736.Spec : Prop :=
  ∀ n, (P12513994960735708736.a n : ℤ) = A162644 (n + 1)

end A162644

/-! ## A162644.P8207372203655377423

`record[A061019(n+1)*A076479(n+1)]`
-/

namespace A162644.P8207372203655377423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A076479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162644.P8207372203655377423

namespace A162644

/-- `record[A061019(n+1)*A076479(n+1)]` -/
def P8207372203655377423.Spec : Prop :=
  ∀ n, P8207372203655377423.a n = A162644 (n + 1)

end A162644

/-! ## A162644.P11184343872703706509

`lt[1, A347633(A162510(n+1)+1)]+1`
-/

namespace A162644.P11184343872703706509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A162510 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162644.P11184343872703706509

namespace A162644

/-- `lt[1, A347633(A162510(n+1)+1)]+1` -/
def P11184343872703706509.Spec : Prop :=
  ∀ n, (P11184343872703706509.a n : ℤ) = A162644 (n + 1)

end A162644

/-! ## A162644.P12694227846989102784

`lt[1, (n+1)*∏{e}[n, A009374(#)]]`
-/

namespace A162644.P12694227846989102784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), A009374 (Nat.factorization (f3 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162644.P12694227846989102784

namespace A162644

/-- `lt[1, (n+1)*∏{e}[n, A009374(#)]]` -/
def P12694227846989102784.Spec : Prop :=
  ∀ n, (P12694227846989102784.a n : ℤ) = A162644 (n + 1)

end A162644

/-! ## A162644.P557624501350520254

`lt[1, (n+1)*∏{e}[n, A009576(#)]]`
-/

namespace A162644.P557624501350520254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), A009576 (Nat.factorization (f3 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162644.P557624501350520254

namespace A162644

/-- `lt[1, (n+1)*∏{e}[n, A009576(#)]]` -/
def P557624501350520254.Spec : Prop :=
  ∀ n, (P557624501350520254.a n : ℤ) = A162644 (n + 1)

end A162644

/-! ## A162644.P3402243078110984005

`lt[1, (n+1)*∏{e}[n, A325843(#+1)]]`
-/

namespace A162644.P3402243078110984005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), A325843 (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A162644.P3402243078110984005

namespace A162644

/-- `lt[1, (n+1)*∏{e}[n, A325843(#+1)]]` -/
def P3402243078110984005.Spec : Prop :=
  ∀ n, (P3402243078110984005.a n : ℤ) = A162644 (n + 1)

end A162644

/-!
# A162645: Numbers m such that A162511(m) = -1.

The programs for A162645, the canonical program `A162645.P13090916189487860480` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162645 has offset 1).

The definition of A162645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162645.P57695177424920289

`lt[∏{e}[n, A009374(#)], 0]`
-/

namespace A162645.P57695177424920289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A009374 (Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A162645.P57695177424920289

namespace A162645

/-- `lt[∏{e}[n, A009374(#)], 0]` -/
def P57695177424920289.Spec : Prop :=
  ∀ n, (P57695177424920289.a n : ℤ) = A162645 (n + 1)

end A162645

/-! ## A162645.P6858297463893622314

`lt[∏{e}[n, A009576(#)], 0]`
-/

namespace A162645.P6858297463893622314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A009576 (Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A162645.P6858297463893622314

namespace A162645

/-- `lt[∏{e}[n, A009576(#)], 0]` -/
def P6858297463893622314.Spec : Prop :=
  ∀ n, (P6858297463893622314.a n : ℤ) = A162645 (n + 1)

end A162645

/-! ## A162645.P13090916189487860480

`eq[1, A162511(n+1)+2]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A162645

/-- `eq[1, A162511(n+1)+2]+1` -/
def P13090916189487860480.Spec : Prop :=
  ∀ n, (P13090916189487860480.a n : ℤ) = A162645 (n + 1)

theorem P13090916189487860480.correct : P13090916189487860480.Spec := by
  intro n
  simp only [A162645, Nat.add_sub_cancel]

end A162645

/-! ## A162645.P3329571401118913129

`eq[1, A162641(n+1)%2]+1`
-/

namespace A162645.P3329571401118913129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162641 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162645.P3329571401118913129

namespace A162645

/-- `eq[1, A162641(n+1)%2]+1` -/
def P3329571401118913129.Spec : Prop :=
  ∀ n, (P3329571401118913129.a n : ℤ) = A162645 (n + 1)

end A162645

/-! ## A162645.P8485479073937776876

`eq[1, gcd(2, A046660(n+2))]+2`
-/

namespace A162645.P8485479073937776876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046660 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A162645.P8485479073937776876

namespace A162645

/-- `eq[1, gcd(2, A046660(n+2))]+2` -/
def P8485479073937776876.Spec : Prop :=
  ∀ n, (P8485479073937776876.a n : ℤ) = A162645 (n + 1)

end A162645

/-! ## A162645.P6506765129146515507

`eq[1, and(1, A046660(n+1))]+1`
-/

namespace A162645.P6506765129146515507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162645.P6506765129146515507

namespace A162645

/-- `eq[1, and(1, A046660(n+1))]+1` -/
def P6506765129146515507.Spec : Prop :=
  ∀ n, (P6506765129146515507.a n : ℤ) = A162645 (n + 1)

end A162645

/-! ## A162645.P4579600638747280712

`eq[1, A040810(A080256(n+1))]+1`
-/

namespace A162645.P4579600638747280712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040810 (A080256 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162645.P4579600638747280712

namespace A162645

/-- `eq[1, A040810(A080256(n+1))]+1` -/
def P4579600638747280712.Spec : Prop :=
  ∀ n, (P4579600638747280712.a n : ℤ) = A162645 (n + 1)

end A162645

/-! ## A162645.P15934853512416781289

`A020725(eq[1, A162511(n+1)+2])`
-/

namespace A162645.P15934853512416781289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162645.P15934853512416781289

namespace A162645

/-- `A020725(eq[1, A162511(n+1)+2])` -/
def P15934853512416781289.Spec : Prop :=
  ∀ n, P15934853512416781289.a n = A162645 (n + 1)

end A162645

/-!
# A162646: G.f. is the polynomial (Product_{k=1..21} (1 - x^(3*k)))/(1-x)^21.

The programs for A162646, there is no canonical definition to state claims against.
-/

/-! ## A162646.P4404605887248723124

`A062745(∑[A002365(3*n+4)*A185335(n)]²+n)`
-/

namespace A162646.P4404605887248723124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (3 * n + 4) * A185335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062745 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)).toNat

end

end A162646.P4404605887248723124

/-!
# A162647: Numerators associated with denominators A000215(n) approximating the complementary Thue-Morse constant.

The programs for A162647, the canonical program `A162647.P7934316701633457534` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162647 has offset 0).

The definition of A162647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162647.P7934316701633457534

`A000215(n)-A162634(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A162647

/-- `A000215(n)-A162634(n)` -/
def P7934316701633457534.Spec : Prop :=
  ∀ n, P7934316701633457534.a n = A162647 n

theorem P7934316701633457534.correct : P7934316701633457534.Spec := by
  intro n
  simp only [A162647]

end A162647

/-! ## A162647.P5602001474899479656

`A133468(n)+1`
-/

namespace A162647.P5602001474899479656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133468 n + 1

end

end A162647.P5602001474899479656

namespace A162647

/-- `A133468(n)+1` -/
def P5602001474899479656.Spec : Prop :=
  ∀ n, P5602001474899479656.a n = A162647 n

end A162647

/-! ## A162647.P13848839116375063811

`A019299(2^n-1)+1`
-/

namespace A162647.P13848839116375063811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019299 (2 ^ n - 1) + 1

end

end A162647.P13848839116375063811

namespace A162647

/-- `A019299(2^n-1)+1` -/
def P13848839116375063811.Spec : Prop :=
  ∀ n, P13848839116375063811.a n = A162647 n

end A162647

/-! ## A162647.P7048079966728084993

`A001146(n)-A048707(n)`
-/

namespace A162647.P7048079966728084993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A048707 n

end

end A162647.P7048079966728084993

namespace A162647

/-- `A001146(n)-A048707(n)` -/
def P7048079966728084993.Spec : Prop :=
  ∀ n, P7048079966728084993.a n = A162647 n

end A162647

/-! ## A162647.P18131188603398108555

`A001285(n)-(A010060(n)-A133468(n))`
-/

namespace A162647.P18131188603398108555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - (A010060 n - A133468 n)

end

end A162647.P18131188603398108555

namespace A162647

/-- `A001285(n)-(A010060(n)-A133468(n))` -/
def P18131188603398108555.Spec : Prop :=
  ∀ n, P18131188603398108555.a n = A162647 n

end A162647

/-!
# A162648: Locations of patterns 1001 or 0110 in the Thue-Morse sequence A010060.

The programs for A162648, the canonical program `A162648.P16341361686892732013` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162648 has offset 1).

The definition of A162648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162648.P16341361686892732013

`A079523(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A162648

/-- `A079523(n+1)-1` -/
def P16341361686892732013.Spec : Prop :=
  ∀ n, P16341361686892732013.a n = A162648 (n + 1)

theorem P16341361686892732013.correct : P16341361686892732013.Spec := by
  intro n
  simp only [A162648, Nat.add_sub_cancel]

end A162648

/-! ## A162648.P6413077285182283793

`comp[or(n, val(n+2, 2))]`
-/

namespace A162648.P6413077285182283793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162648.P6413077285182283793

namespace A162648

/-- `comp[or(n, val(n+2, 2))]` -/
def P6413077285182283793.Spec : Prop :=
  ∀ n, (P6413077285182283793.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P8891148628866573323

`lt[0, val(n+2, 2)%2]`
-/

namespace A162648.P8891148628866573323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162648.P8891148628866573323

namespace A162648

/-- `lt[0, val(n+2, 2)%2]` -/
def P8891148628866573323.Spec : Prop :=
  ∀ n, (P8891148628866573323.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P3998937227955732886

`eq[0, xor(n, n+3)%3]`
-/

namespace A162648.P3998937227955732886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162648.P3998937227955732886

namespace A162648

/-- `eq[0, xor(n, n+3)%3]` -/
def P3998937227955732886.Spec : Prop :=
  ∀ n, (P3998937227955732886.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P9823990523069607477

`comp[n*and(n, -n)]-2`
-/

namespace A162648.P9823990523069607477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A162648.P9823990523069607477

namespace A162648

/-- `comp[n*and(n, -n)]-2` -/
def P9823990523069607477.Spec : Prop :=
  ∀ n, P9823990523069607477.a n = A162648 (n + 1)

end A162648

/-! ## A162648.P8698565366700192205

`lt[(-1)^val(n+2, 2), 0]`
-/

namespace A162648.P8698565366700192205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162648.P8698565366700192205

namespace A162648

/-- `lt[(-1)^val(n+2, 2), 0]` -/
def P8698565366700192205.Spec : Prop :=
  ∀ n, (P8698565366700192205.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P4353291321583075136

`comp[n-xor(n, n+1)%3]`
-/

namespace A162648.P4353291321583075136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162648.P4353291321583075136

namespace A162648

/-- `comp[n-xor(n, n+1)%3]` -/
def P4353291321583075136.Spec : Prop :=
  ∀ n, (P4353291321583075136.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P11518190481181295100

`2*eq[0, val(n+1, 2)%2]`
-/

namespace A162648.P11518190481181295100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162648.P11518190481181295100

namespace A162648

/-- `2*eq[0, val(n+1, 2)%2]` -/
def P11518190481181295100.Spec : Prop :=
  ∀ n, (P11518190481181295100.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P9632670291428097777

`lt[xor(n+1, n+2)%3, 1]`
-/

namespace A162648.P9632670291428097777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 2) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162648.P9632670291428097777

namespace A162648

/-- `lt[xor(n+1, n+2)%3, 1]` -/
def P9632670291428097777.Spec : Prop :=
  ∀ n, (P9632670291428097777.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P4324623549060488103

`A036554(n+1)-2`
-/

namespace A162648.P4324623549060488103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - 2

end

end A162648.P4324623549060488103

namespace A162648

/-- `A036554(n+1)-2` -/
def P4324623549060488103.Spec : Prop :=
  ∀ n, P4324623549060488103.a n = A162648 (n + 1)

end A162648

/-! ## A162648.P10987002034452134759

`A072939(n+1)-3`
-/

namespace A162648.P10987002034452134759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) - 3

end

end A162648.P10987002034452134759

namespace A162648

/-- `A072939(n+1)-3` -/
def P10987002034452134759.Spec : Prop :=
  ∀ n, P10987002034452134759.a n = A162648 (n + 1)

end A162648

/-! ## A162648.P15462151852030200821

`2*A121539(n+1)`
-/

namespace A162648.P15462151852030200821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121539 (n + 1)

end

end A162648.P15462151852030200821

namespace A162648

/-- `2*A121539(n+1)` -/
def P15462151852030200821.Spec : Prop :=
  ∀ n, P15462151852030200821.a n = A162648 (n + 1)

end A162648

/-! ## A162648.P5032910037054827791

`eq[0, A332447(n+1)]`
-/

namespace A162648.P5032910037054827791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162648.P5032910037054827791

namespace A162648

/-- `eq[0, A332447(n+1)]` -/
def P5032910037054827791.Spec : Prop :=
  ∀ n, (P5032910037054827791.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P12517695453714266396

`eq[0, A035263(n+2)]`
-/

namespace A162648.P12517695453714266396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162648.P12517695453714266396

namespace A162648

/-- `eq[0, A035263(n+2)]` -/
def P12517695453714266396.Spec : Prop :=
  ∀ n, (P12517695453714266396.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P1107257427177922884

`eq[1, A191254(n+2)]`
-/

namespace A162648.P1107257427177922884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162648.P1107257427177922884

namespace A162648

/-- `eq[1, A191254(n+2)]` -/
def P1107257427177922884.Spec : Prop :=
  ∀ n, (P1107257427177922884.a n : ℤ) = A162648 (n + 1)

end A162648

/-! ## A162648.P7832162992773426723

`2*(A003159(n+1)-1)`
-/

namespace A162648.P7832162992773426723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003159 (n + 1) - 1)

end

end A162648.P7832162992773426723

namespace A162648

/-- `2*(A003159(n+1)-1)` -/
def P7832162992773426723.Spec : Prop :=
  ∀ n, P7832162992773426723.a n = A162648 (n + 1)

end A162648

/-!
# A162649: E.g.f. satisfies: A(x) = exp( x*cosh(x*A(x)) ).

The programs for A162649, there is no canonical definition to state claims against.
-/

/-! ## A162649.P4114043463903196033

`A089610(C(∑[n]+1, 5)+1+n)`
-/

namespace A162649.P4114043463903196033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 5 + 1 + n)

end

end A162649.P4114043463903196033

/-! ## A162649.P18140742822719367004

`A244291(A003266(n))`
-/

namespace A162649.P18140742822719367004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244291 (A003266 n).toNat

end

end A162649.P18140742822719367004

/-!
# A162650: E.g.f. satisfies: A(x) = exp( sinh(x*A(x)) ).

The programs for A162650, there is no canonical definition to state claims against.
-/

/-! ## A162650.P5106516626324066092

`A134200(n+1)/(n+1)`
-/

namespace A162650.P5106516626324066092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134200 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A162650.P5106516626324066092

/-! ## A162650.P624928898205049039

`and(-5, A185414(2*n²+1))`
-/

namespace A162650.P624928898205049039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A185414 (2 * n ^ 2 + 1))

end

end A162650.P624928898205049039

/-!
# A162652: Primes p such that there are positive integers m and n and a prime q such that p = m^2+m-q = n^2+n+q.

The programs for A162652, there is no canonical definition to state claims against.
-/

/-! ## A162652.P13378478340029705037

`A163418(n+2)`
-/

namespace A162652.P13378478340029705037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163418 (n + 2)

end

end A162652.P13378478340029705037

/-! ## A162652.P3122334736050025075

`record[p?[A246918(n+1)]]`
-/

namespace A162652.P3122334736050025075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246918 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162652.P3122334736050025075

/-! ## A162652.P17326096389954145440

`p?[A024701(n+2)+1]`
-/

namespace A162652.P17326096389954145440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162652.P17326096389954145440

/-! ## A162652.P15409132355182479188

`p?[A222963(n+3)+3]`
-/

namespace A162652.P15409132355182479188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222963 (n + 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162652.P15409132355182479188

/-! ## A162652.P12148391992179185191

`p?[ceil((A065091(n+2)/2)²)]`
-/

namespace A162652.P12148391992179185191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A065091 (n + 2) : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162652.P12148391992179185191

/-! ## A162652.P10554548332672081980

`p?[ceil((A000040(n+3)/2)²)]`
-/

namespace A162652.P10554548332672081980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000040 (n + 3) : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162652.P10554548332672081980

/-! ## A162652.P2612083037191124802

`p?[floor((A008578(n+4)/2)²)+1]`
-/

namespace A162652.P2612083037191124802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008578 (n + 4) : ℚ) / 2) ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162652.P2612083037191124802

/-! ## A162652.P8275136884881200282

`p?[3*floor(A000040(n+1)²/12)+1]`
-/

namespace A162652.P8275136884881200282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A000040 (n + 1) ^ 2 : ℚ) / 12⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162652.P8275136884881200282

/-! ## A162652.P6086917661714992948

`A004652(A118939(n+2))`
-/

namespace A162652.P6086917661714992948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A118939 (n + 2)).toNat

end

end A162652.P6086917661714992948

/-! ## A162652.P743216700803600034

`record[A081256(A006254(n+2))]`
-/

namespace A162652.P743216700803600034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A006254 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162652.P743216700803600034

/-!
# A162653: E.g.f. satisfies: A(x) = 1 + sinh(x*A(x)).

The programs for A162653, there is no canonical definition to state claims against.
-/

/-! ## A162653.P16063286387234900642

`A216187(n+1)/(n+1)`
-/

namespace A162653.P16063286387234900642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216187 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A162653.P16063286387234900642

/-! ## A162653.P2811297360092087830

`A093819(n+1)+A047242(A155804(n))`
-/

namespace A162653.P2811297360092087830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (n + 1) + A047242 (A155804 n).toNat

end

end A162653.P2811297360092087830

/-!
# A162655: E.g.f. satisfies: A(x) = (1 + x*A(x))^A(x).

The programs for A162655, there is no canonical definition to state claims against.
-/

/-! ## A162655.P8440299438359319108

`A003319(n)*A325131(A002426(n))`
-/

namespace A162655.P8440299438359319108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n * A325131 (A002426 n).toNat

end

end A162655.P8440299438359319108

/-!
# A162656: E.g.f. satisfies: A(x) = (1 + x*A(x))^(A(x)^2).

The programs for A162656, there is no canonical definition to state claims against.
-/

/-! ## A162656.P8563563174340520598

`or(lcm(n!, ∏{p}[((n^7-n)/42)², #]), A006355(n))`
-/

namespace A162656.P8563563174340520598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 42) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.lcm (Nat.factorial n) (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) : ℤ) (A006355 n)

end

end A162656.P8563563174340520598

/-!
# A162657: Least number m such that n is the denominator of sigma_{-1}(m), or zero if no such exists.

The programs for A162657, there is no canonical definition to state claims against.
-/

/-! ## A162657.P5380436130307330466

`(n+1)*A359635(n+1)`
-/

namespace A162657.P5380436130307330466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359635 (n + 1)

end

end A162657.P5380436130307330466

/-! ## A162657.P2754822851904268190

`(n+1)*A227481(A049905(n+1))`
-/

namespace A162657.P2754822851904268190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A227481 (A049905 (n + 1)).toNat

end

end A162657.P2754822851904268190

/-! ## A162657.P7145407161426715270

`(A007814(A144512(2*n+1))+1)*(n+1)`
-/

namespace A162657.P7145407161426715270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (A144512 (2 * n + 1)).toNat + 1) * (n + 1 : ℤ)

end

end A162657.P7145407161426715270

/-! ## A162657.P9874924073001822006

`A262360(A262356(n+1))*A344764(n+1)`
-/

namespace A162657.P9874924073001822006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262360 (A262356 (n + 1)).toNat * A344764 (n + 1)

end

end A162657.P9874924073001822006

/-! ## A162657.P397185323165596602

`A262360(A262360(n+1))*A344764(n+1)`
-/

namespace A162657.P397185323165596602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262360 (A262360 (n + 1)).toNat * A344764 (n + 1)

end

end A162657.P397185323165596602

/-!
# A162658: Primes such that the sum of its smallest and largest decimal digits is an odd prime.

The programs for A162658, there is no canonical definition to state claims against.
-/

/-! ## A162658.P14395527377530666930

`A164932(lt[n+3, A164962(2*(n+1))])`
-/

namespace A162658.P14395527377530666930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164962 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A162658.P14395527377530666930

/-! ## A162658.P16174045686634689647

`filter[A164932(n+2), A103583(#)]`
-/

namespace A162658.P16174045686634689647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A162658.P16174045686634689647

/-! ## A162658.P13844207750392988829

`p?[A318700(∑[A344879(n+1)])]`
-/

namespace A162658.P13844207750392988829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318700 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162658.P13844207750392988829

/-!
# A162659: E.g.f. A(x) satisfies A(x) = exp(x*A(x*A(x))).

The programs for A162659, there is no canonical definition to state claims against.
-/

/-! ## A162659.P10015973241654932972

`A380178(∑[n+1]+n)`
-/

namespace A162659.P10015973241654932972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380178 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A162659.P10015973241654932972

/-! ## A162659.P11869624605543452115

`A326200(A108991(n)-A326248(n))`
-/

namespace A162659.P11869624605543452115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326200 (A108991 n - A326248 n).toNat

end

end A162659.P11869624605543452115

/-!
# A162660: Triangle read by rows: coefficients of the complementary Swiss-Knife polynomials.

The programs for A162660, there is no canonical definition to state claims against.
-/

/-! ## A162660.P6487504894234733161

`char[∑[n-1]]-A081733(n)`
-/

namespace A162660.P6487504894234733161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A081733 n

end

end A162660.P6487504894234733161

/-! ## A162660.P227753373730007463

`-(A023532(n)*A081733(n))`
-/

namespace A162660.P227753373730007463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A023532 n * A081733 n)

end

end A162660.P227753373730007463

/-! ## A162660.P5744188347165059130

`-(A081733(n)%A027465(n))`
-/

namespace A162660.P5744188347165059130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A081733 n) (A027465 n)

end

end A162660.P5744188347165059130

/-! ## A162660.P12820138246549676159

`-A081733(n)%A038255(n)`
-/

namespace A162660.P12820138246549676159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A081733 n) (A038255 n)

end

end A162660.P12820138246549676159

/-! ## A162660.P15024512969795446241

`-xor(A023531(n), A081733(n))`
-/

namespace A162660.P15024512969795446241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A023531 n) (A081733 n)

end

end A162660.P15024512969795446241

/-! ## A162660.P3276551242822618811

`(A066325(n)-1)*A081733(n)`
-/

namespace A162660.P3276551242822618811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066325 n - 1) * A081733 n

end

end A162660.P3276551242822618811

/-! ## A162660.P173358887396462587

`(A119879(n)-1)*A081733(n)`
-/

namespace A162660.P173358887396462587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119879 n - 1) * A081733 n

end

end A162660.P173358887396462587

/-! ## A162660.P16398855319979855825

`A056594(A025581(n)+1)*A247453(n)`
-/

namespace A162660.P16398855319979855825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A025581 n + 1).toNat * A247453 n

end

end A162660.P16398855319979855825

/-! ## A162660.P8750663216042873073

`A109449(n)*A163805(A025581(n)+2)`
-/

namespace A162660.P8750663216042873073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A163805 (A025581 n + 2).toNat

end

end A162660.P8750663216042873073

/-! ## A162660.P4961558910360817419

`A117569(A025581(n)+2)*A247453(n)`
-/

namespace A162660.P4961558910360817419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A025581 n + 2).toNat * A247453 n

end

end A162660.P4961558910360817419

/-!
# A162661: G.f. satisfies: A(x) = 1 + x*A(x) * A( x*A(x)^2 ).

The programs for A162661, there is no canonical definition to state claims against.
-/

/-! ## A162661.P6948511684739239546

`A384651(∑[n+1]+n)`
-/

namespace A162661.P6948511684739239546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384651 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A162661.P6948511684739239546

/-! ## A162661.P12599499071068499214

`A186760(n)+A000120(A014381(n))`
-/

namespace A162661.P12599499071068499214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186760 n + A000120 (A014381 n).toNat

end

end A162661.P12599499071068499214

/-! ## A162661.P18341062705823555445

`A361498(A000079(n))+A198891(n)`
-/

namespace A162661.P18341062705823555445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361498 (A000079 n).toNat + A198891 n

end

end A162661.P18341062705823555445

/-!
# A162664: a(n) = sigma(n) + tau(n)^2.

The programs for A162664, the canonical program `A162664.P7556537559876333020` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162664 has offset 1).

The definition of A162664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162664.P7556537559876333020

`∑{d}[n+1, #]+∏{e}[n+1, #+1]²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162664

/-- `∑{d}[n+1, #]+∏{e}[n+1, #+1]²` -/
def P7556537559876333020.Spec : Prop :=
  ∀ n, (P7556537559876333020.a n : ℤ) = A162664 (n + 1)

theorem P7556537559876333020.correct : P7556537559876333020.Spec := by
  intro n
  simp only [A162664, Nat.add_sub_cancel]

end A162664

/-! ## A162664.P16685608895802402449

`∑{d}[n+1, #]+A000005(n+1)²`
-/

namespace A162664.P16685608895802402449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + A000005 (n + 1) ^ 2

end

end A162664.P16685608895802402449

namespace A162664

/-- `∑{d}[n+1, #]+A000005(n+1)²` -/
def P16685608895802402449.Spec : Prop :=
  ∀ n, P16685608895802402449.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P4314961233677718377

`A000203(n+1)+∏{e}[n+1, #+1]²`
-/

namespace A162664.P4314961233677718377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 : ℕ) : ℤ)

end

end A162664.P4314961233677718377

namespace A162664

/-- `A000203(n+1)+∏{e}[n+1, #+1]²` -/
def P4314961233677718377.Spec : Prop :=
  ∀ n, P4314961233677718377.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P13325298361335717659

`A000290(∏{e}[n+1, #+1])+∑{d}[n+1, #]`
-/

namespace A162664.P13325298361335717659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A162664.P13325298361335717659

namespace A162664

/-- `A000290(∏{e}[n+1, #+1])+∑{d}[n+1, #]` -/
def P13325298361335717659.Spec : Prop :=
  ∀ n, P13325298361335717659.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P10261672565601953001

`A035116(n+1)+A000203(n+1)`
-/

namespace A162664.P10261672565601953001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) + A000203 (n + 1)

end

end A162664.P10261672565601953001

namespace A162664

/-- `A035116(n+1)+A000203(n+1)` -/
def P10261672565601953001.Spec : Prop :=
  ∀ n, P10261672565601953001.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P12196763217073967856

`A337524(n+1)+A007503(n+1)`
-/

namespace A162664.P12196763217073967856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) + A007503 (n + 1)

end

end A162664.P12196763217073967856

namespace A162664

/-- `A337524(n+1)+A007503(n+1)` -/
def P12196763217073967856.Spec : Prop :=
  ∀ n, P12196763217073967856.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P6845620699070117826

`A152211(n+1)-A076627(n+1)`
-/

namespace A162664.P6845620699070117826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A076627 (n + 1)

end

end A162664.P6845620699070117826

namespace A162664

/-- `A152211(n+1)-A076627(n+1)` -/
def P6845620699070117826.Spec : Prop :=
  ∀ n, P6845620699070117826.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P5855894429949589622

`A000203(n+1)+Δ[A006218(n)]²`
-/

namespace A162664.P5855894429949589622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A162664.P5855894429949589622

namespace A162664

/-- `A000203(n+1)+Δ[A006218(n)]²` -/
def P5855894429949589622.Spec : Prop :=
  ∀ n, P5855894429949589622.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P9311397424450975367

`A000203(n+1)+Δ[A054519(n)]²`
-/

namespace A162664.P9311397424450975367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A162664.P9311397424450975367

namespace A162664

/-- `A000203(n+1)+Δ[A054519(n)]²` -/
def P9311397424450975367.Spec : Prop :=
  ∀ n, P9311397424450975367.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P10841551751896206648

`Δ[A160664(n)]+A000005(n+1)²`
-/

namespace A162664.P10841551751896206648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000005 (n + 1) ^ 2

end

end A162664.P10841551751896206648

namespace A162664

/-- `Δ[A160664(n)]+A000005(n+1)²` -/
def P10841551751896206648.Spec : Prop :=
  ∀ n, P10841551751896206648.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P7255741657039778704

`A000005(n+1)²+A000203(n+1)`
-/

namespace A162664.P7255741657039778704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + A000203 (n + 1)

end

end A162664.P7255741657039778704

namespace A162664

/-- `A000005(n+1)²+A000203(n+1)` -/
def P7255741657039778704.Spec : Prop :=
  ∀ n, P7255741657039778704.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P17704552585400678526

`A000203(n+1)+A329484(n+1)²`
-/

namespace A162664.P17704552585400678526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A329484 (n + 1) ^ 2

end

end A162664.P17704552585400678526

namespace A162664

/-- `A000203(n+1)+A329484(n+1)²` -/
def P17704552585400678526.Spec : Prop :=
  ∀ n, P17704552585400678526.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P721294036218649008

`A000005(n+1)²+abs(A143348(n+1))`
-/

namespace A162664.P721294036218649008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + |A143348 (n + 1)|

end

end A162664.P721294036218649008

namespace A162664

/-- `A000005(n+1)²+abs(A143348(n+1))` -/
def P721294036218649008.Spec : Prop :=
  ∀ n, P721294036218649008.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P17557406263794256313

`sqrt(A072861(n+1))+A000005(n+1)²`
-/

namespace A162664.P17557406263794256313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) + (A000005 (n + 1) ^ 2 : ℝ)

end

end A162664.P17557406263794256313

namespace A162664

/-- `sqrt(A072861(n+1))+A000005(n+1)²` -/
def P17557406263794256313.Spec : Prop :=
  ∀ n, P17557406263794256313.a n = (A162664 (n + 1) : ℝ)

end A162664

/-! ## A162664.P10416346892691553397

`A000203(n+1)+log2(A338506(n+1))²`
-/

namespace A162664.P10416346892691553397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℝ) + Real.logb 2 (A338506 (n + 1) : ℝ) ^ 2

end

end A162664.P10416346892691553397

namespace A162664

/-- `A000203(n+1)+log2(A338506(n+1))²` -/
def P10416346892691553397.Spec : Prop :=
  ∀ n, P10416346892691553397.a n = (A162664 (n + 1) : ℝ)

end A162664

/-! ## A162664.P1752774194085509767

`∑[A340793(n+1)]+A000005(n+1)²`
-/

namespace A162664.P1752774194085509767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (n + 1) ^ 2

end

end A162664.P1752774194085509767

namespace A162664

/-- `∑[A340793(n+1)]+A000005(n+1)²` -/
def P1752774194085509767.Spec : Prop :=
  ∀ n, P1752774194085509767.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P7416966919858351914

`A000203(n+1)+∑[A341062(n+1)]²`
-/

namespace A162664.P7416966919858351914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A162664.P7416966919858351914

namespace A162664

/-- `A000203(n+1)+∑[A341062(n+1)]²` -/
def P7416966919858351914.Spec : Prop :=
  ∀ n, P7416966919858351914.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P17648382615486531848

`A000005(n+1)²+A088580(n+1)-1`
-/

namespace A162664.P17648382615486531848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + (A088580 (n + 1) - 1)

end

end A162664.P17648382615486531848

namespace A162664

/-- `A000005(n+1)²+A088580(n+1)-1` -/
def P17648382615486531848.Spec : Prop :=
  ∀ n, P17648382615486531848.a n = A162664 (n + 1)

end A162664

/-! ## A162664.P14489355197245329515

`A000203(n+1)+(1-A334954(n+1))²`
-/

namespace A162664.P14489355197245329515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A334954 (n + 1)) ^ 2

end

end A162664.P14489355197245329515

namespace A162664

/-- `A000203(n+1)+(1-A334954(n+1))²` -/
def P14489355197245329515.Spec : Prop :=
  ∀ n, P14489355197245329515.a n = A162664 (n + 1)

end A162664

/-!
# A162665: a(n) = sigma_2(n) + 3 sigma(n) tau(n) + tau(n)^3.

The programs for A162665, there is no canonical definition to state claims against.
-/

/-! ## A162665.P3022162767549672470

`A162663(A167614(n+2))`
-/

namespace A162665.P3022162767549672470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A167614 (n + 2)).toNat

end

end A162665.P3022162767549672470

/-! ## A162665.P3638350991117428945

`A162663(A052905(n)+8)`
-/

namespace A162665.P3638350991117428945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A052905 n + 8).toNat

end

end A162665.P3638350991117428945

/-! ## A162665.P1482327671809953215

`A162663(A055999(n)+9)`
-/

namespace A162665.P1482327671809953215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055999 n + 9).toNat

end

end A162665.P1482327671809953215

/-! ## A162665.P3778379392838341907

`A162663(eq[3, A002262(n)])`
-/

namespace A162665.P3778379392838341907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162665.P3778379392838341907

/-! ## A162665.P12633580860983925601

`A162663(A167499(n+2)-2)`
-/

namespace A162665.P12633580860983925601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A167499 (n + 2) - 2).toNat

end

end A162665.P12633580860983925601

/-!
# A162666: a(n) = 20*a(n-1) - 98*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A162666, the canonical program `A162666.P17308628797943543473` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162666 has offset 0).

The definition of A162666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-98*a(n-2)` (program `A162666.P17308628797943543473`, by `A162666.P17308628797943543473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162666.P17308628797943543473

`20*a(n-1)-98*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162666

/-- `20*a(n-1)-98*a(n-2)` -/
def P17308628797943543473.Spec : Prop :=
  ∀ n, P17308628797943543473.a n = A162666 n

theorem P17308628797943543473.correct : P17308628797943543473.Spec := by
  intro n
  simp only [A162666]

end A162666

/-! ## A162666.P1465026953778727199

`((sqrt(2)+10)^n+(10-sqrt(2))^n)/2`
-/

namespace A162666.P1465026953778727199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 10) ^ n + (10 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A162666.P1465026953778727199

namespace A162666

/-- `((sqrt(2)+10)^n+(10-sqrt(2))^n)/2` -/
def P1465026953778727199.Spec : Prop :=
  ∀ n, P1465026953778727199.a n = (A162666 n : ℝ)

end A162666

/-! ## A162666.P14426782410745153362

`2*A163448(n)-A163416(n)`
-/

namespace A162666.P14426782410745153362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163448 n - A163416 n

end

end A162666.P14426782410745153362

namespace A162666

/-- `2*A163448(n)-A163416(n)` -/
def P14426782410745153362.Spec : Prop :=
  ∀ n, P14426782410745153362.a n = A162666 n

end A162666

/-! ## A162666.P13184737527590446197

`2*A163462(n)-A163448(n)`
-/

namespace A162666.P13184737527590446197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163462 n - A163448 n

end

end A162666.P13184737527590446197

namespace A162666

/-- `2*A163462(n)-A163448(n)` -/
def P13184737527590446197.Spec : Prop :=
  ∀ n, P13184737527590446197.a n = A162666 n

end A162666

/-!
# A162667: a(n) = 20*a(n-1) - 97*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A162667, the canonical program `A162667.P5637370728320976574` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162667 has offset 0).

The definition of A162667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-97*a(n-2)` (program `A162667.P5637370728320976574`, by `A162667.P5637370728320976574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162667.P3623014758625843190

`((10+sqrt(3))^n+(10-sqrt(3))^n)/2`
-/

namespace A162667.P3623014758625843190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + Real.sqrt (3 : ℝ)) ^ n + (10 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162667.P3623014758625843190

namespace A162667

/-- `((10+sqrt(3))^n+(10-sqrt(3))^n)/2` -/
def P3623014758625843190.Spec : Prop :=
  ∀ n, P3623014758625843190.a n = (A162667 n : ℝ)

end A162667

/-! ## A162667.P5637370728320976574

`20*a(n-1)-97*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162667

/-- `20*a(n-1)-97*a(n-2)` -/
def P5637370728320976574.Spec : Prop :=
  ∀ n, P5637370728320976574.a n = A162667 n

theorem P5637370728320976574.correct : P5637370728320976574.Spec := by
  intro n
  simp only [A162667]

end A162667

/-!
# A162668: a(n) = n*(n+1)*(n+2)*(n+3)/3.

The programs for A162668, the canonical program `A162668.P8323676352970519687` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162668 has offset 0).

The definition of A162668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162668.P8323676352970519687

`8*C(n+3, 4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162668

/-- `8*C(n+3, 4)` -/
def P8323676352970519687.Spec : Prop :=
  ∀ n, (P8323676352970519687.a n : ℤ) = A162668 n

theorem P8323676352970519687.correct : P8323676352970519687.Spec := by
  intro n
  simp only [A162668]

end A162668

/-! ## A162668.P3075271801713877696

`n*(n+1)*(n+2)*(n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162668.P3075271801713877696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) : ℚ) / 3

end

end A162668.P3075271801713877696

namespace A162668

/-- `n*(n+1)*(n+2)*(n+3)/3` -/
def P3075271801713877696.Spec : Prop :=
  ∀ n, P3075271801713877696.a n = (A162668 n : ℚ)

end A162668

/-! ## A162668.P7670881467007430448

`8*A000332(n+3)`
-/

namespace A162668.P7670881467007430448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000332 (n + 3)

end

end A162668.P7670881467007430448

namespace A162668

/-- `8*A000332(n+3)` -/
def P7670881467007430448.Spec : Prop :=
  ∀ n, P7670881467007430448.a n = A162668 n

end A162668

/-! ## A162668.P15599852980685908579

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=0`
-/

namespace A162668.P15599852980685908579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162668.P15599852980685908579

namespace A162668

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P15599852980685908579.Spec : Prop :=
  ∀ n, (P15599852980685908579.a n : ℤ) = A162668 n

end A162668

/-! ## A162668.P9533094269759893450

`a(n-1)-∑[∑[a(n-1)-8]]` with `a(0)=0`
-/

namespace A162668.P9533094269759893450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162668.P9533094269759893450

namespace A162668

/-- `a(n-1)-∑[∑[a(n-1)-8]]` -/
def P9533094269759893450.Spec : Prop :=
  ∀ n, P9533094269759893450.a n = A162668 n

end A162668

/-! ## A162668.P17307400424854160401

`lcm(2, 2*n*C(2*n-(n-3), n))`
-/

namespace A162668.P17307400424854160401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n * Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat n)

end

end A162668.P17307400424854160401

namespace A162668

/-- `lcm(2, 2*n*C(2*n-(n-3), n))` -/
def P17307400424854160401.Spec : Prop :=
  ∀ n, (P17307400424854160401.a n : ℤ) = A162668 n

end A162668

/-! ## A162668.P2067915817161200804

`∑[∑[A033996(n)]]`
-/

namespace A162668.P2067915817161200804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162668.P2067915817161200804

namespace A162668

/-- `∑[∑[A033996(n)]]` -/
def P2067915817161200804.Spec : Prop :=
  ∀ n, P2067915817161200804.a n = A162668 n

end A162668

/-! ## A162668.P4614166203871192500

`floor(A062938(n)/3)`
-/

namespace A162668.P4614166203871192500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062938 n : ℚ) / 3⌋

end

end A162668.P4614166203871192500

namespace A162668

/-- `floor(A062938(n)/3)` -/
def P4614166203871192500.Spec : Prop :=
  ∀ n, P4614166203871192500.a n = A162668 n

end A162668

/-! ## A162668.P10423735666370688469

`∑[A273316(n)-1]`
-/

namespace A162668.P10423735666370688469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162668.P10423735666370688469

namespace A162668

/-- `∑[A273316(n)-1]` -/
def P10423735666370688469.Spec : Prop :=
  ∀ n, P10423735666370688469.a n = A162668 n

end A162668

/-! ## A162668.P16879834987633744938

`∑[2*A210440(n)]`
-/

namespace A162668.P16879834987633744938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162668.P16879834987633744938

namespace A162668

/-- `∑[2*A210440(n)]` -/
def P16879834987633744938.Spec : Prop :=
  ∀ n, P16879834987633744938.a n = A162668 n

end A162668

/-! ## A162668.P6347880190430629084

`A006324(n+1)-∑[n+1]`
-/

namespace A162668.P6347880190430629084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162668.P6347880190430629084

namespace A162668

/-- `A006324(n+1)-∑[n+1]` -/
def P6347880190430629084.Spec : Prop :=
  ∀ n, P6347880190430629084.a n = A162668 n

end A162668

/-! ## A162668.P3953102816195153832

`A289643(n)+A134481(n)`
-/

namespace A162668.P3953102816195153832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A134481 n

end

end A162668.P3953102816195153832

namespace A162668

/-- `A289643(n)+A134481(n)` -/
def P3953102816195153832.Spec : Prop :=
  ∀ n, P3953102816195153832.a n = A162668 n

end A162668

/-! ## A162668.P12814043722566983397

`A033486(n)-A033488(n)`
-/

namespace A162668.P12814043722566983397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n - A033488 n

end

end A162668.P12814043722566983397

namespace A162668

/-- `A033486(n)-A033488(n)` -/
def P12814043722566983397.Spec : Prop :=
  ∀ n, P12814043722566983397.a n = A162668 n

end A162668

/-! ## A162668.P13269616663715119562

`A151974(n)-A293475(n)`
-/

namespace A162668.P13269616663715119562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n - A293475 n

end

end A162668.P13269616663715119562

namespace A162668

/-- `A151974(n)-A293475(n)` -/
def P13269616663715119562.Spec : Prop :=
  ∀ n, P13269616663715119562.a n = A162668 n

end A162668

/-! ## A162668.P15374622114525961701

`A395908(n)-A215863(n)`
-/

namespace A162668.P15374622114525961701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395908 n - A215863 n

end

end A162668.P15374622114525961701

namespace A162668

/-- `A395908(n)-A215863(n)` -/
def P15374622114525961701.Spec : Prop :=
  ∀ n, P15374622114525961701.a n = A162668 n

end A162668

/-! ## A162668.P676123424824299310

`A112742(n)+A035006(n+1)`
-/

namespace A162668.P676123424824299310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + A035006 (n + 1)

end

end A162668.P676123424824299310

namespace A162668

/-- `A112742(n)+A035006(n+1)` -/
def P676123424824299310.Spec : Prop :=
  ∀ n, P676123424824299310.a n = A162668 n

end A162668

/-! ## A162668.P7655126187836594802

`A051797(n)-A000292(n+1)`
-/

namespace A162668.P7655126187836594802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - A000292 (n + 1)

end

end A162668.P7655126187836594802

namespace A162668

/-- `A051797(n)-A000292(n+1)` -/
def P7655126187836594802.Spec : Prop :=
  ∀ n, P7655126187836594802.a n = A162668 n

end A162668

/-! ## A162668.P1577535557220921692

`A264851(n+1)-A051797(n)`
-/

namespace A162668.P1577535557220921692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264851 (n + 1) - A051797 n

end

end A162668.P1577535557220921692

namespace A162668

/-- `A264851(n+1)-A051797(n)` -/
def P1577535557220921692.Spec : Prop :=
  ∀ n, P1577535557220921692.a n = A162668 n

end A162668

/-! ## A162668.P451452724020136539

`A264852(n+1)-A051799(n)`
-/

namespace A162668.P451452724020136539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264852 (n + 1) - A051799 n

end

end A162668.P451452724020136539

namespace A162668

/-- `A264852(n+1)-A051799(n)` -/
def P451452724020136539.Spec : Prop :=
  ∀ n, P451452724020136539.a n = A162668 n

end A162668

/-! ## A162668.P16912705414741404538

`A108678(n)-A254749(n+1)`
-/

namespace A162668.P16912705414741404538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n - A254749 (n + 1)

end

end A162668.P16912705414741404538

namespace A162668

/-- `A108678(n)-A254749(n+1)` -/
def P16912705414741404538.Spec : Prop :=
  ∀ n, P16912705414741404538.a n = A162668 n

end A162668

/-!
# A162669: a(n) = n*(n+1)*(n+2)*(n+3)*(n+4)*(n+5)/5.

The programs for A162669, the canonical program `A162669.P4292203243403404247` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162669 has offset 0).

The definition of A162669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162669.P4292203243403404247

`144*C(n+5, 6)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162669

/-- `144*C(n+5, 6)` -/
def P4292203243403404247.Spec : Prop :=
  ∀ n, (P4292203243403404247.a n : ℤ) = A162669 n

theorem P4292203243403404247.correct : P4292203243403404247.Spec := by
  intro n
  simp only [A162669]

end A162669

/-! ## A162669.P11377406193101387132

`n*(n+1)*(n+2)*(n+3)*(n+4)*(n+5)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162669.P11377406193101387132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) : ℚ) / 5

end

end A162669.P11377406193101387132

namespace A162669

/-- `n*(n+1)*(n+2)*(n+3)*(n+4)*(n+5)/5` -/
def P11377406193101387132.Spec : Prop :=
  ∀ n, P11377406193101387132.a n = (A162669 n : ℚ)

end A162669

/-! ## A162669.P12883435424156897888

`144*A000579(n+5)`
-/

namespace A162669.P12883435424156897888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  144 * A000579 (n + 5)

end

end A162669.P12883435424156897888

namespace A162669

/-- `144*A000579(n+5)` -/
def P12883435424156897888.Spec : Prop :=
  ∀ n, P12883435424156897888.a n = A162669 n

end A162669

/-! ## A162669.P18153699523105801445

`∑[6*A158874(n)]`
-/

namespace A162669.P18153699523105801445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A158874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162669.P18153699523105801445

namespace A162669

/-- `∑[6*A158874(n)]` -/
def P18153699523105801445.Spec : Prop :=
  ∀ n, P18153699523105801445.a n = A162669 n

end A162669

/-! ## A162669.P17738385139900670284

`∑[∑[∑[A180413(n+1)]]]`
-/

namespace A162669.P17738385139900670284
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162669.P17738385139900670284

namespace A162669

/-- `∑[∑[∑[A180413(n+1)]]]` -/
def P17738385139900670284.Spec : Prop :=
  ∀ n, P17738385139900670284.a n = A162669 n

end A162669

/-! ## A162669.P8282932471090009645

`lcm(2, n*A158874(n+1))`
-/

namespace A162669.P8282932471090009645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A158874 (n + 1))

end

end A162669.P8282932471090009645

namespace A162669

/-- `lcm(2, n*A158874(n+1))` -/
def P8282932471090009645.Spec : Prop :=
  ∀ n, (P8282932471090009645.a n : ℤ) = A162669 n

end A162669

/-! ## A162669.P1303818636055824554

`∑[∑[A005563(n)*A067726(n+1)]]`
-/

namespace A162669.P1303818636055824554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A067726 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162669.P1303818636055824554

namespace A162669

/-- `∑[∑[A005563(n)*A067726(n+1)]]` -/
def P1303818636055824554.Spec : Prop :=
  ∀ n, P1303818636055824554.a n = A162669 n

end A162669

/-!
# A162670: Expansion of x/(1 - x - 100*x^2).

The programs for A162670, the canonical program `A162670.P14270997879635688014` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162670 has offset 1).

The definition of A162670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-100x^2))` (program `A162670.P14270997879635688014`, by `A162670.P14270997879635688014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162670.P14270997879635688014

`ogf(1/(1-x-100x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162670

/-- `ogf(1/(1-x-100x^2))` -/
def P14270997879635688014.Spec : Prop :=
  ∀ n, P14270997879635688014.a n = A162670 (n + 1)

theorem P14270997879635688014.correct : P14270997879635688014.Spec := by
  intro n
  simp only [A162670, Nat.add_sub_cancel]

end A162670

/-! ## A162670.P16200263465181238391

`a(n-1)+100*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A162670.P16200263465181238391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 100 * a (n - 2)

end

end A162670.P16200263465181238391

namespace A162670

/-- `a(n-1)+100*a(n-2)` -/
def P16200263465181238391.Spec : Prop :=
  ∀ n, (P16200263465181238391.a n : ℤ) = A162670 (n + 1)

end A162670

/-! ## A162670.P14129066332713044065

`A055649(A015447(n))`
-/

namespace A162670.P14129066332713044065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (A015447 n).toNat

end

end A162670.P14129066332713044065

namespace A162670

/-- `A055649(A015447(n))` -/
def P14129066332713044065.Spec : Prop :=
  ∀ n, P14129066332713044065.a n = A162670 (n + 1)

end A162670

/-! ## A162670.P14856940093457551656

`A049872(A053404(n))`
-/

namespace A162670.P14856940093457551656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A053404 n).toNat

end

end A162670.P14856940093457551656

namespace A162670

/-- `A049872(A053404(n))` -/
def P14856940093457551656.Spec : Prop :=
  ∀ n, P14856940093457551656.a n = A162670 (n + 1)

end A162670

/-!
# A162671: For n even a(n) = a(n-1) + a(n-2), for n odd a(n) = 100*a(n-1) + a(n-2), with a(0) = 0, a(1) = 1.

The programs for A162671, the canonical program `A162671.P8811262995495568872` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162671 has offset 0).

The definition of A162671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162671.P8811262995495568872

`102*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=101`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162671

/-- `102*a(n-2)-a(n-4)` -/
def P8811262995495568872.Spec : Prop :=
  ∀ n, P8811262995495568872.a n = A162671 n

theorem P8811262995495568872.correct : P8811262995495568872.Spec := by
  intro n
  simp only [A162671]

end A162671

/-! ## A162671.P6489802728577657243

`gcd(∑[A099374(n)], A099374(n))`
-/

namespace A162671.P6489802728577657243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A099374 n)

end

end A162671.P6489802728577657243

namespace A162671

/-- `gcd(∑[A099374(n)], A099374(n))` -/
def P6489802728577657243.Spec : Prop :=
  ∀ n, (P6489802728577657243.a n : ℤ) = A162671 n

end A162671

/-!
# A162672: Lunar product 19*n.

The programs for A162672, there is no canonical definition to state claims against.
-/

/-! ## A162672.P15026740687568458500

`A261684(A167614(n+16)+A016777(n+11))`
-/

namespace A162672.P15026740687568458500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A167614 (n + 16) + A016777 (n + 11)).toNat

end

end A162672.P15026740687568458500

/-! ## A162672.P9265053836865111500

`A165265(A000079(n))*A178334(n)`
-/

namespace A162672.P9265053836865111500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165265 (A000079 n).toNat * A178334 n

end

end A162672.P9265053836865111500

/-! ## A162672.P9328344568459859545

`A318926(A095121(n))-A318886(n+1)`
-/

namespace A162672.P9328344568459859545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318926 (A095121 n).toNat - A318886 (n + 1)

end

end A162672.P9328344568459859545

/-! ## A162672.P16037328554133552380

`A216589(A377903(n+1))`
-/

namespace A162672.P16037328554133552380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216589 (A377903 (n + 1)).toNat

end

end A162672.P16037328554133552380

/-! ## A162672.P5672100134687587338

`A321485(n)%A004023(n+1)`
-/

namespace A162672.P5672100134687587338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321485 n) (A004023 (n + 1))

end

end A162672.P5672100134687587338

/-!
# A162673: Number of different fixed (possibly) disconnected trominoes bounded (not necessarily tightly) by an n*n square.

The programs for A162673, the canonical program `A162673.P2526148060157975849` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162673 has offset 1).

The definition of A162673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162673.P2526148060157975849

`(n+1)*n*(3*(n+1)²-3*(n+1)-2)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162673

/-- `(n+1)*n*(3*(n+1)²-3*(n+1)-2)/2` -/
def P2526148060157975849.Spec : Prop :=
  ∀ n, P2526148060157975849.a n = (A162673 (n + 1) : ℚ)

end A162673

/-! ## A162673.P14693108699935472828

`lcm(2-∑[6*n], ∑[2*n])`
-/

namespace A162673.P14693108699935472828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A162673.P14693108699935472828

namespace A162673

/-- `lcm(2-∑[6*n], ∑[2*n])` -/
def P14693108699935472828.Spec : Prop :=
  ∀ n, (P14693108699935472828.a n : ℤ) = A162673 (n + 1)

end A162673

/-! ## A162673.P15844570400801366525

`A143008(n)-(2*n+1)²`
-/

namespace A162673.P15844570400801366525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n - ((2 * n + 1) ^ 2 : ℤ)

end

end A162673.P15844570400801366525

namespace A162673

/-- `A143008(n)-(2*n+1)²` -/
def P15844570400801366525.Spec : Prop :=
  ∀ n, P15844570400801366525.a n = A162673 (n + 1)

end A162673

/-! ## A162673.P16718509890725993753

`A007204(n)-A365205(n+1)`
-/

namespace A162673.P16718509890725993753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A365205 (n + 1)

end

end A162673.P16718509890725993753

namespace A162673

/-- `A007204(n)-A365205(n+1)` -/
def P16718509890725993753.Spec : Prop :=
  ∀ n, P16718509890725993753.a n = A162673 (n + 1)

end A162673

/-! ## A162673.P9984652835935255923

`6*A000217(n)²-A002378(n)`
-/

namespace A162673.P9984652835935255923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000217 n ^ 2 - A002378 n

end

end A162673.P9984652835935255923

namespace A162673

/-- `6*A000217(n)²-A002378(n)` -/
def P9984652835935255923.Spec : Prop :=
  ∀ n, P9984652835935255923.a n = A162673 (n + 1)

end A162673

/-! ## A162673.P913821673373511735

`A254371(n)-(A163102(n)+A002378(n))`
-/

namespace A162673.P913821673373511735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n - (A163102 n + A002378 n)

end

end A162673.P913821673373511735

namespace A162673

/-- `A254371(n)-(A163102(n)+A002378(n))` -/
def P913821673373511735.Spec : Prop :=
  ∀ n, P913821673373511735.a n = A162673 (n + 1)

end A162673

/-! ## A162673.P11075114568994915743

`A000217(n)*A004538(n)-A000217(n)`
-/

namespace A162673.P11075114568994915743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A004538 n - A000217 n

end

end A162673.P11075114568994915743

namespace A162673

/-- `A000217(n)*A004538(n)-A000217(n)` -/
def P11075114568994915743.Spec : Prop :=
  ∀ n, P11075114568994915743.a n = A162673 (n + 1)

end A162673

/-! ## A162673.P9164239234051979731

`A000217(n)*A028896(n)-A002378(n)`
-/

namespace A162673.P9164239234051979731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A028896 n - A002378 n

end

end A162673.P9164239234051979731

namespace A162673

/-- `A000217(n)*A028896(n)-A002378(n)` -/
def P9164239234051979731.Spec : Prop :=
  ∀ n, P9164239234051979731.a n = A162673 (n + 1)

end A162673

/-!
# A162674: Number of different fixed (possibly) disconnected tetrominoes bounded (not necessarily tightly) by an n X n square.

The programs for A162674, the canonical program `A162674.P961037487476831316` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162674 has offset 1).

The definition of A162674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162674.P961037487476831316

`(n+1)*n*(8*(n+1)^4-16*(n+1)^3-9*(n+1)²+17*(n+1)+8)/12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162674

/-- `(n+1)*n*(8*(n+1)^4-16*(n+1)^3-9*(n+1)²+17*(n+1)+8)/12` -/
def P961037487476831316.Spec : Prop :=
  ∀ n, P961037487476831316.a n = (A162674 (n + 1) : ℚ)

end A162674

/-! ## A162674.P13732316279343034254

`A011894(∑[4*n])-A264853(n)`
-/

namespace A162674.P13732316279343034254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (∑ j ∈ Finset.range (n + 1), f1 j) - A264853 n

end

end A162674.P13732316279343034254

namespace A162674

/-- `A011894(∑[4*n])-A264853(n)` -/
def P13732316279343034254.Spec : Prop :=
  ∀ n, P13732316279343034254.a n = A162674 (n + 1)

end A162674

/-! ## A162674.P6209690779471456819

`A011894(A046092(n))-∑[A004466(n)]`
-/

namespace A162674.P6209690779471456819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (A046092 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162674.P6209690779471456819

namespace A162674

/-- `A011894(A046092(n))-∑[A004466(n)]` -/
def P6209690779471456819.Spec : Prop :=
  ∀ n, P6209690779471456819.a n = A162674 (n + 1)

end A162674

/-!
# A162676: Number of different fixed (possibly) disconnected n-ominoes bounded (not necessarily tightly) by an n*n square.

The programs for A162676, the canonical program `A162676.P11307868679253517483` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162676 has offset 1).

The definition of A162676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162676.P11307868679253517483

`C((n+1)², n+1)-2*C(n*(n+1), n+1)+C(n², n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162676

/-- `C((n+1)², n+1)-2*C(n*(n+1), n+1)+C(n², n+1)` -/
def P11307868679253517483.Spec : Prop :=
  ∀ n, P11307868679253517483.a n = A162676 (n + 1)

theorem P11307868679253517483.correct : P11307868679253517483.Spec := by
  intro n
  simp only [A162676, Nat.add_sub_cancel]

end A162676

/-! ## A162676.P10543350986949388618

`A162678(n+1)+A001168(n+1)`
-/

namespace A162676.P10543350986949388618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162678 (n + 1) + A001168 (n + 1)

end

end A162676.P10543350986949388618

namespace A162676

/-- `A162678(n+1)+A001168(n+1)` -/
def P10543350986949388618.Spec : Prop :=
  ∀ n, P10543350986949388618.a n = A162676 (n + 1)

end A162676

/-!
# A162677: Number of different fixed (possibly) disconnected polyominoes (of any area) bounded (not necessarily tightly) by an n*n square.

The programs for A162677, the canonical program `A162677.P14222737320738684263` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162677 has offset 1).

The definition of A162677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162677.P14222737320738684263

`2^(n+1)²-2*2^(n*(n+1))+2^n²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162677

/-- `2^(n+1)²-2*2^(n*(n+1))+2^n²` -/
def P14222737320738684263.Spec : Prop :=
  ∀ n, P14222737320738684263.a n = A162677 (n + 1)

theorem P14222737320738684263.correct : P14222737320738684263.Spec := by
  intro n
  simp only [A162677, Nat.add_sub_cancel]

end A162677

/-! ## A162677.P1397218704007419012

`2^n²*A092440(n)`
-/

namespace A162677.P1397218704007419012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A092440 n

end

end A162677.P1397218704007419012

namespace A162677

/-- `2^n²*A092440(n)` -/
def P1397218704007419012.Spec : Prop :=
  ∀ n, P1397218704007419012.a n = A162677 (n + 1)

end A162677

/-! ## A162677.P1333738269565641834

`or(A002416(n), A153836(n+1))`
-/

namespace A162677.P1333738269565641834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002416 n) (A153836 (n + 1))

end

end A162677.P1333738269565641834

namespace A162677

/-- `or(A002416(n), A153836(n+1))` -/
def P1333738269565641834.Spec : Prop :=
  ∀ n, P1333738269565641834.a n = A162677 (n + 1)

end A162677

/-! ## A162677.P12407586727101309547

`or(∏[A081294(n)], A153836(n+1))`
-/

namespace A162677.P12407586727101309547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ j ∈ Finset.range (n + 1), f1 j) (A153836 (n + 1))

end

end A162677.P12407586727101309547

namespace A162677

/-- `or(∏[A081294(n)], A153836(n+1))` -/
def P12407586727101309547.Spec : Prop :=
  ∀ n, P12407586727101309547.a n = A162677 (n + 1)

end A162677

/-! ## A162677.P9988006741627694019

`lcm(A233411(Δ[n²])+1, A171449(n²))`
-/

namespace A162677.P9988006741627694019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A233411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) (A171449 (n ^ 2))

end

end A162677.P9988006741627694019

namespace A162677

/-- `lcm(A233411(Δ[n²])+1, A171449(n²))` -/
def P9988006741627694019.Spec : Prop :=
  ∀ n, (P9988006741627694019.a n : ℤ) = A162677 (n + 1)

end A162677

/-!
# A162678: Number of fixed strictly disconnected n-ominoes bounded (not necessarily tightly) by an n*n square.

The programs for A162678, there is no canonical definition to state claims against.
-/

/-! ## A162678.P10867902031800511627

`A162676(n+1)-A001168(n+1)`
-/

namespace A162678.P10867902031800511627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162676 (n + 1) - A001168 (n + 1)

end

end A162678.P10867902031800511627

/-!
# A162679: G.f. is the polynomial (Product_{k=1..22} (1 - x^(3*k)))/(1-x)^22.

The programs for A162679, there is no canonical definition to state claims against.
-/

/-! ## A162679.P17518053731231755355

`A062745(∑[A185335(n)*A381242(2*(n+2))]²+n)`
-/

namespace A162679.P17518053731231755355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185335 n * A381242 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062745 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)).toNat

end

end A162679.P17518053731231755355

/-!
# A162682: If S is countable finite set, we can define n as number of elements in S. There are n^n distinct functions f(S)->S. Each function has a fixed point, or an orbit in S. This sequence is a number of distinct functions g(S)->S, with largest orbit.

The programs for A162682, there is no canonical definition to state claims against.
-/

/-! ## A162682.P8507768302158493335

`A222029(∑[A000793(n)]-1)`
-/

namespace A162682.P8507768302158493335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222029 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A162682.P8507768302158493335

/-! ## A162682.P13908863801373932020

`A222029(∑[A000793(n)%A071356(n)])`
-/

namespace A162682.P13908863801373932020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000793 n) (A071356 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162682.P13908863801373932020

/-! ## A162682.P10515035179595638457

`lcm(A074115(n), A140737(A077215(n+1)))`
-/

namespace A162682.P10515035179595638457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074115 n) (A140737 (A077215 (n + 1)).toNat)

end

end A162682.P10515035179595638457

/-! ## A162682.P13615079971449110626

`A074115(n)*A225636(A063699(n))`
-/

namespace A162682.P13615079971449110626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074115 n * A225636 (A063699 n).toNat

end

end A162682.P13615079971449110626

/-! ## A162682.P1689795194650758

`lcm(n!/A000793(n), A161474(A063699(n)))`
-/

namespace A162682.P1689795194650758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A000793 n : ℚ))) (A161474 (A063699 n).toNat)

end

end A162682.P1689795194650758

/-!
# A162683: a(0)=1. a(n) = the number of terms among (a(0),a(1),...a(n-1)) that either are coprime to n or divide n.

The programs for A162683, there is no canonical definition to state claims against.
-/

/-! ## A162683.P5351135114837847598

`A053737(A265005(n+1)+A094537(n))`
-/

namespace A162683.P5351135114837847598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A265005 (n + 1) + A094537 n).toNat

end

end A162683.P5351135114837847598

/-!
# A162685: Positive integers that are not prime powers and are not divisible by any consecutive primes.

The programs for A162685, the canonical program `A162685.P17395901824190597140` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162685 has offset 1).

The definition of A162685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162685.P17395901824190597140

`lt[1, A297173(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A162685

/-- `lt[1, A297173(n+1)]+1` -/
def P17395901824190597140.Spec : Prop :=
  ∀ n, (P17395901824190597140.a n : ℤ) = A162685 (n + 1)

theorem P17395901824190597140.correct : P17395901824190597140.Spec := by
  intro n
  simp only [A162685, Nat.add_sub_cancel]

end A162685

/-! ## A162685.P15699509815438981912

`eq[0, A025480(a(A297173(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A162685.P15699509815438981912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A025480 (f2 (A297173 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162685.P15699509815438981912

namespace A162685

/-- `eq[0, A025480(a(A297173(n)))]` -/
def P15699509815438981912.Spec : Prop :=
  ∀ n, (P15699509815438981912.a n : ℤ) = A162685 (n + 1)

end A162685

/-! ## A162685.P4308116154768313251

`record[A348990(A073492(n+1))]`
-/

namespace A162685.P4308116154768313251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (A073492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162685.P4308116154768313251

namespace A162685

/-- `record[A348990(A073492(n+1))]` -/
def P4308116154768313251.Spec : Prop :=
  ∀ n, P4308116154768313251.a n = A162685 (n + 1)

end A162685

/-! ## A162685.P18326939299208073285

`filter[A073492(n+1), A356173(#)]`
-/

namespace A162685.P18326939299208073285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A162685.P18326939299208073285

namespace A162685

/-- `filter[A073492(n+1), A356173(#)]` -/
def P18326939299208073285.Spec : Prop :=
  ∀ n, P18326939299208073285.a n = A162685 (n + 1)

end A162685

/-! ## A162685.P14192777052839789761

`∩[A073492(n+1), A319630(n+1)]`
-/

namespace A162685.P14192777052839789761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162685.P14192777052839789761

namespace A162685

/-- `∩[A073492(n+1), A319630(n+1)]` -/
def P14192777052839789761.Spec : Prop :=
  ∀ n, (P14192777052839789761.a n : ℤ) = A162685 (n + 1)

end A162685

/-! ## A162685.P2570273258424455124

`filter[A081062(n+1), A356173(#)]`
-/

namespace A162685.P2570273258424455124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A162685.P2570273258424455124

namespace A162685

/-- `filter[A081062(n+1), A356173(#)]` -/
def P2570273258424455124.Spec : Prop :=
  ∀ n, P2570273258424455124.a n = A162685 (n + 1)

end A162685

/-! ## A162685.P8618102443112663250

`∩[A081062(n+1), A319630(n+1)]`
-/

namespace A162685.P8618102443112663250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162685.P8618102443112663250

namespace A162685

/-- `∩[A081062(n+1), A319630(n+1)]` -/
def P8618102443112663250.Spec : Prop :=
  ∀ n, (P8618102443112663250.a n : ℤ) = A162685 (n + 1)

end A162685

/-! ## A162685.P3980409546214535241

`filter[A024619(n+1), A356173(#)]`
-/

namespace A162685.P3980409546214535241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A162685.P3980409546214535241

namespace A162685

/-- `filter[A024619(n+1), A356173(#)]` -/
def P3980409546214535241.Spec : Prop :=
  ∀ n, P3980409546214535241.a n = A162685 (n + 1)

end A162685

/-! ## A162685.P2812168369636819018

`∩[A024619(n+1), A319630(n+1)]`
-/

namespace A162685.P2812168369636819018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162685.P2812168369636819018

namespace A162685

/-- `∩[A024619(n+1), A319630(n+1)]` -/
def P2812168369636819018.Spec : Prop :=
  ∀ n, (P2812168369636819018.a n : ℤ) = A162685 (n + 1)

end A162685

/-! ## A162685.P1984168884846727324

`filter[A361102(n+2), A356173(#)]`
-/

namespace A162685.P1984168884846727324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A162685.P1984168884846727324

namespace A162685

/-- `filter[A361102(n+2), A356173(#)]` -/
def P1984168884846727324.Spec : Prop :=
  ∀ n, P1984168884846727324.a n = A162685 (n + 1)

end A162685

/-! ## A162685.P7967547455118320179

`record[A319626(A024619(n+2))]`
-/

namespace A162685.P7967547455118320179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A024619 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162685.P7967547455118320179

namespace A162685

/-- `record[A319626(A024619(n+2))]` -/
def P7967547455118320179.Spec : Prop :=
  ∀ n, P7967547455118320179.a n = A162685 (n + 1)

end A162685

/-! ## A162685.P14731507194209240996

`filter[A319630(n+1), A143731(#)]`
-/

namespace A162685.P14731507194209240996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A162685.P14731507194209240996

namespace A162685

/-- `filter[A319630(n+1), A143731(#)]` -/
def P14731507194209240996.Spec : Prop :=
  ∀ n, P14731507194209240996.a n = A162685 (n + 1)

end A162685

/-!
# A162687: Write the distinct primes dividing n in binary, in order with the largest prime on the left and smallest on the right. Concatenate, and convert to decimal to get a(n).

The programs for A162687, there is no canonical definition to state claims against.
-/

/-! ## A162687.P10531202530125069215

`A112417(A007947(n+1))-A000007(n)`
-/

namespace A162687.P10531202530125069215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A007947 (n + 1)).toNat - A000007 n

end

end A162687.P10531202530125069215

/-! ## A162687.P17897522966146827545

`A112417(A007947(n+1))%A008458(n)`
-/

namespace A162687.P17897522966146827545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112417 (A007947 (n + 1)).toNat) (A008458 n)

end

end A162687.P17897522966146827545

/-! ## A162687.P11487125915217378838

`char[A052938(n)]*A112417(A007947(n+1))`
-/

namespace A162687.P11487125915217378838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A112417 (A007947 (n + 1)).toNat

end

end A162687.P11487125915217378838

/-! ## A162687.P1857920889236611048

`char[A133310(n)]*A112417(A007947(n+1))`
-/

namespace A162687.P1857920889236611048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A112417 (A007947 (n + 1)).toNat

end

end A162687.P1857920889236611048

/-! ## A162687.P14959171174493219242

`xor(A000007(2*n), A112417(A007947(n+1)))`
-/

namespace A162687.P14959171174493219242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A112417 (A007947 (n + 1)).toNat)

end

end A162687.P14959171174493219242

/-! ## A162687.P7805336748859951349

`char[A032742(n+1)]*A112417(A007947(n+1))`
-/

namespace A162687.P7805336748859951349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A112417 (A007947 (n + 1)).toNat

end

end A162687.P7805336748859951349

/-! ## A162687.P17158931860607691887

`A112417(A007947(n+1))-A015439(A034444(n+1))`
-/

namespace A162687.P17158931860607691887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A007947 (n + 1)).toNat - A015439 (A034444 (n + 1)).toNat

end

end A162687.P17158931860607691887

/-!
# A162688: Strictly positive numbers k such that 12*k/(12+k) are integers.

The programs for A162688, there is no canonical definition to state claims against.
-/

/-! ## A162688.P12621274853014790542

`∑[(abs(4-n)+1)*a(n-1)]` with `a(0)=4, a(1)=2`
-/

namespace A162688.P12621274853014790542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (|4 - (n : ℤ)| + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162688.P12621274853014790542

/-! ## A162688.P2680595253524610517

`A127730(n+22)`
-/

namespace A162688.P2680595253524610517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (n + 22)

end

end A162688.P2680595253524610517

/-! ## A162688.P1362542968192755934

`∑[A096075(n+1)]+3`
-/

namespace A162688.P1362542968192755934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A162688.P1362542968192755934

/-!
# A162689: Strictly positive numbers k such that (18*k)/(18+k) are integers.

The programs for A162689, there is no canonical definition to state claims against.
-/

/-! ## A162689.P343705012789464580

`record[lcm(9, A173726(n))]`
-/

namespace A162689.P343705012789464580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A173726 (n + 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162689.P343705012789464580

/-! ## A162689.P5062565729734775458

`9*(A014371(n)+2*n)`
-/

namespace A162689.P5062565729734775458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A014371 n + (2 * n : ℤ))

end

end A162689.P5062565729734775458

/-! ## A162689.P2203471571398309479

`A051063(A328076(n+1))`
-/

namespace A162689.P2203471571398309479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051063 (A328076 (n + 1)).toNat

end

end A162689.P2203471571398309479

/-!
# A162690: Strictly positive numbers k such that 20*k/(20+k) are integers.

The programs for A162690, there is no canonical definition to state claims against.
-/

/-! ## A162690.P17673842299032525161

`5*(A018275(n+4)-4)`
-/

namespace A162690.P17673842299032525161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A018275 (n + 4) - 4)

end

end A162690.P17673842299032525161

/-! ## A162690.P2197856756610165581

`∑[5*Δ[A018275(n+3)]]`
-/

namespace A162690.P2197856756610165581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018275 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162690.P2197856756610165581

/-! ## A162690.P14130653971104046723

`A162817(comp[Δ[n*C(n, 2)]])/2`
-/

namespace A162690.P14130653971104046723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162817 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A162690.P14130653971104046723

/-!
# A162691: Strictly positive numbers k such that 24*k/(24+k) is an integer.

The programs for A162691, there is no canonical definition to state claims against.
-/

/-! ## A162691.P14831950815435373050

`A127730(n+67)`
-/

namespace A162691.P14831950815435373050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (n + 67)

end

end A162691.P14831950815435373050

/-! ## A162691.P14269822796403126896

`A162819(A018609(n+1))/2`
-/

namespace A162691.P14269822796403126896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162819 (A018609 (n + 1)).toNat : ℚ) / 2

end

end A162691.P14269822796403126896

/-! ## A162691.P15612479073463671578

`A162819(A051037(n+1))/2`
-/

namespace A162691.P15612479073463671578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162819 (A051037 (n + 1)).toNat : ℚ) / 2

end

end A162691.P15612479073463671578

/-! ## A162691.P6256836096191839120

`A162819(A051250(n+1))/2`
-/

namespace A162691.P6256836096191839120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162819 (A051250 (n + 1)).toNat : ℚ) / 2

end

end A162691.P6256836096191839120

/-!
# A162692: Strictly positive numbers k such that 28*k/(28+k) are integers.

The programs for A162692, there is no canonical definition to state claims against.
-/

/-! ## A162692.P12697621174953041756

`A127730(n+86)`
-/

namespace A162692.P12697621174953041756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (n + 86)

end

end A162692.P12697621174953041756

/-!
# A162693: Strictly positive numbers k such that 30*k/(30+k) are integers.

The programs for A162693, there is no canonical definition to state claims against.
-/

/-! ## A162693.P4010665209652020296

`A127730(n+94)`
-/

namespace A162693.P4010665209652020296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (n + 94)

end

end A162693.P4010665209652020296

/-!
# A162694: Strictly positive numbers n such that 36*n/(36+n) are integers.

The programs for A162694, there is no canonical definition to state claims against.
-/

/-! ## A162694.P5678734800705910883

`A247624(A003586(n+1)*A338869(n+2))`
-/

namespace A162694.P5678734800705910883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (A003586 (n + 1) * A338869 (n + 2)).toNat

end

end A162694.P5678734800705910883

/-! ## A162694.P9127599101705291391

`A171674(A049445(A343680(A085370(n+1))))`
-/

namespace A162694.P9127599101705291391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (A049445 (A343680 (A085370 (n + 1)).toNat).toNat).toNat

end

end A162694.P9127599101705291391

/-!
# A162695: E.g.f. satisfies A(x) = exp( x*A(x) * exp(x*A(x)) ).

The programs for A162695, there is no canonical definition to state claims against.
-/

/-! ## A162695.P9516020030161080278

`A323400(A000902(n)*A005802(n))`
-/

namespace A162695.P9516020030161080278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (A000902 n * A005802 n).toNat

end

end A162695.P9516020030161080278

/-!
# A162696: Trajectory of 1 under morphism taking n to sorted divisors of n+1.

The programs for A162696, there is no canonical definition to state claims against.
-/

/-! ## A162696.P12034263486938963316

`A001511(A056126(∑[A007947(n+1)]))`
-/

namespace A162696.P12034263486938963316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A056126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A162696.P12034263486938963316

/-! ## A162696.P18259679988905688778

`A087230(A133263(∑[A007947(n+1)]))`
-/

namespace A162696.P18259679988905688778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (A133263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A162696.P18259679988905688778

/-! ## A162696.P8361625086160405134

`A080577(A358824(n)+A176289(n))`
-/

namespace A162696.P8361625086160405134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A358824 n + A176289 n).toNat

end

end A162696.P8361625086160405134

/-! ## A162696.P10318401425008704859

`A007814(A078122(n)*A289509(n+1))`
-/

namespace A162696.P10318401425008704859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A078122 n * A289509 (n + 1)).toNat

end

end A162696.P10318401425008704859

/-! ## A162696.P754172347757432225

`A067029(lcm(A142048(n), A289509(n+1)))`
-/

namespace A162696.P754172347757432225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.lcm (A142048 n) (A289509 (n + 1)))

end

end A162696.P754172347757432225

/-!
# A162697: E.g.f. satisfies: A(x) = 1+x + x^2*exp(x*A(x)).

The programs for A162697, there is no canonical definition to state claims against.
-/

/-! ## A162697.P11549673023443126728

`A028310(A351825(n))`
-/

namespace A162697.P11549673023443126728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A351825 n).toNat

end

end A162697.P11549673023443126728

/-! ## A162697.P4606675216256295323

`A028310(A358080(n))`
-/

namespace A162697.P4606675216256295323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A358080 n).toNat

end

end A162697.P4606675216256295323

/-! ## A162697.P16491320561220885277

`A065190(A351825(n)+1)`
-/

namespace A162697.P16491320561220885277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A351825 n + 1).toNat

end

end A162697.P16491320561220885277

/-!
# A162698: Numbers n such that the incidence matrix of the grid n X n has -1 as eigenvalue.

The programs for A162698, the canonical program `A162698.P11871349947871155946` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162698 has offset 1).

The definition of A162698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162698.P11871349947871155946

`lt[lcm(30, n+1)/10, n]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162698

/-- `lt[lcm(30, n+1)/10, n]` -/
def P11871349947871155946.Spec : Prop :=
  ∀ n, (P11871349947871155946.a n : ℤ) = A162698 (n + 1)

theorem P11871349947871155946.correct : P11871349947871155946.Spec := by
  intro n
  simp only [A162698, Nat.add_sub_cancel]

end A162698

/-! ## A162698.P7916100350104726327

`∪[A016897(n), A016969(n)]`
-/

namespace A162698.P7916100350104726327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162698.P7916100350104726327

namespace A162698

/-- `∪[A016897(n), A016969(n)]` -/
def P7916100350104726327.Spec : Prop :=
  ∀ n, (P7916100350104726327.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P696779687845597734

`A093509(n+2)-1`
-/

namespace A162698.P696779687845597734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093509 (n + 2) - 1

end

end A162698.P696779687845597734

namespace A162698

/-- `A093509(n+2)-1` -/
def P696779687845597734.Spec : Prop :=
  ∀ n, P696779687845597734.a n = A162698 (n + 1)

end A162698

/-! ## A162698.P13814073043637034203

`A066182(A093509(n+2))`
-/

namespace A162698.P13814073043637034203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A093509 (n + 2)).toNat

end

end A162698.P13814073043637034203

namespace A162698

/-- `A066182(A093509(n+2))` -/
def P13814073043637034203.Spec : Prop :=
  ∀ n, P13814073043637034203.a n = A162698 (n + 1)

end A162698

/-! ## A162698.P12082988090884467280

`lt[A291431(n+1), 7]`
-/

namespace A162698.P12082988090884467280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291431 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162698.P12082988090884467280

namespace A162698

/-- `lt[A291431(n+1), 7]` -/
def P12082988090884467280.Spec : Prop :=
  ∀ n, (P12082988090884467280.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P14241478160523716735

`lt[A291432(n+1), 7]`
-/

namespace A162698.P14241478160523716735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291432 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162698.P14241478160523716735

namespace A162698

/-- `lt[A291432(n+1), 7]` -/
def P14241478160523716735.Spec : Prop :=
  ∀ n, (P14241478160523716735.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P9909956960763840975

`lt[A291433(n+1), 7]`
-/

namespace A162698.P9909956960763840975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291433 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162698.P9909956960763840975

namespace A162698

/-- `lt[A291433(n+1), 7]` -/
def P9909956960763840975.Spec : Prop :=
  ∀ n, (P9909956960763840975.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P3610435326218048548

`lt[A291434(n+1), 7]`
-/

namespace A162698.P3610435326218048548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291434 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162698.P3610435326218048548

namespace A162698

/-- `lt[A291434(n+1), 7]` -/
def P3610435326218048548.Spec : Prop :=
  ∀ n, (P3610435326218048548.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P16817542135433275426

`lt[A291435(n+1), 7]`
-/

namespace A162698.P16817542135433275426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291435 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162698.P16817542135433275426

namespace A162698

/-- `lt[A291435(n+1), 7]` -/
def P16817542135433275426.Spec : Prop :=
  ∀ n, (P16817542135433275426.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P6063812505761403221

`eq[A087560(n+1)%10, A010054(n)]`
-/

namespace A162698.P6063812505761403221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087560 (n + 1)) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162698.P6063812505761403221

namespace A162698

/-- `eq[A087560(n+1)%10, A010054(n)]` -/
def P6063812505761403221.Spec : Prop :=
  ∀ n, (P6063812505761403221.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P7557755904310839347

`lt[A291436(n+1), A291436(A291436(n+1)-2)]`
-/

namespace A162698.P7557755904310839347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291436 (A291436 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162698.P7557755904310839347

namespace A162698

/-- `lt[A291436(n+1), A291436(A291436(n+1)-2)]` -/
def P7557755904310839347.Spec : Prop :=
  ∀ n, (P7557755904310839347.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P13897758318144787610

`eq[A255680(n+1), A256480(n+1)]`
-/

namespace A162698.P13897758318144787610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162698.P13897758318144787610

namespace A162698

/-- `eq[A255680(n+1), A256480(n+1)]` -/
def P13897758318144787610.Spec : Prop :=
  ∀ n, (P13897758318144787610.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P6573219541907816665

`eq[A256480(n+1), A316569(n+1)]`
-/

namespace A162698.P6573219541907816665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162698.P6573219541907816665

namespace A162698

/-- `eq[A256480(n+1), A316569(n+1)]` -/
def P6573219541907816665.Spec : Prop :=
  ∀ n, (P6573219541907816665.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P9401230054556931199

`eq[A049347(n)*A084681(n+6), A084681(n+1)]`
-/

namespace A162698.P9401230054556931199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A084681 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162698.P9401230054556931199

namespace A162698

/-- `eq[A049347(n)*A084681(n+6), A084681(n+1)]` -/
def P9401230054556931199.Spec : Prop :=
  ∀ n, (P9401230054556931199.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P5680494165071706657

`lt[A283442(A146307(n+1)), 2*n]`
-/

namespace A162698.P5680494165071706657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A146307 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162698.P5680494165071706657

namespace A162698

/-- `lt[A283442(A146307(n+1)), 2*n]` -/
def P5680494165071706657.Spec : Prop :=
  ∀ n, (P5680494165071706657.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P4087947126678800991

`eq[A255680(A181762(n+1)), A255680(n+1)]`
-/

namespace A162698.P4087947126678800991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 (A181762 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162698.P4087947126678800991

namespace A162698

/-- `eq[A255680(A181762(n+1)), A255680(n+1)]` -/
def P4087947126678800991.Spec : Prop :=
  ∀ n, (P4087947126678800991.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P10514101140727479281

`eq[0, A020485(A087560(n+1))]`
-/

namespace A162698.P10514101140727479281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A087560 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162698.P10514101140727479281

namespace A162698

/-- `eq[0, A020485(A087560(n+1))]` -/
def P10514101140727479281.Spec : Prop :=
  ∀ n, (P10514101140727479281.a n : ℤ) = A162698 (n + 1)

end A162698

/-! ## A162698.P10162520448360421206

`eq[A256480(n+1)², A256480(A064614(n+1))]`
-/

namespace A162698.P10162520448360421206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (A064614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162698.P10162520448360421206

namespace A162698

/-- `eq[A256480(n+1)², A256480(A064614(n+1))]` -/
def P10162520448360421206.Spec : Prop :=
  ∀ n, (P10162520448360421206.a n : ℤ) = A162698 (n + 1)

end A162698

/-!
# A162699: Odd numbers not divisible by 7.

The programs for A162699, the canonical program `A162699.P15300663152558488513` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162699 has offset 1).

The definition of A162699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162699.P15300663152558488513

`2*(n+1)+1+2*floor((2*(n+1)-7)/12)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162699

/-- `2*(n+1)+1+2*floor((2*(n+1)-7)/12)` -/
def P15300663152558488513.Spec : Prop :=
  ∀ n, P15300663152558488513.a n = A162699 (n + 1)

theorem P15300663152558488513.correct : P15300663152558488513.Spec := by
  intro n
  simp only [A162699, Nat.add_sub_cancel]

end A162699

/-! ## A162699.P7483823126171002748

`or(1, comp[4*n]+n)`
-/

namespace A162699.P7483823126171002748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A162699.P7483823126171002748

namespace A162699

/-- `or(1, comp[4*n]+n)` -/
def P7483823126171002748.Spec : Prop :=
  ∀ n, (P7483823126171002748.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P5705790005537686346

`comp[n*7^(n%2)]`
-/

namespace A162699.P5705790005537686346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162699.P5705790005537686346

namespace A162699

/-- `comp[n*7^(n%2)]` -/
def P5705790005537686346.Spec : Prop :=
  ∀ n, (P5705790005537686346.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P2942382387427139178

`comp[∪[2*n, 7*n]]`
-/

namespace A162699.P2942382387427139178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162699.P2942382387427139178

namespace A162699

/-- `comp[∪[2*n, 7*n]]` -/
def P2942382387427139178.Spec : Prop :=
  ∀ n, (P2942382387427139178.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P1387364086716064287

`record[lcm(7, 2*n+1)/7]`
-/

namespace A162699.P1387364086716064287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 7 (2 * n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162699.P1387364086716064287

namespace A162699

/-- `record[lcm(7, 2*n+1)/7]` -/
def P1387364086716064287.Spec : Prop :=
  ∀ n, P1387364086716064287.a n = (A162699 (n + 1) : ℚ)

end A162699

/-! ## A162699.P4954140215300825388

`eq[n+1, gcd(14, n)²+n]`
-/

namespace A162699.P4954140215300825388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 14 n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162699.P4954140215300825388

namespace A162699

/-- `eq[n+1, gcd(14, n)²+n]` -/
def P4954140215300825388.Spec : Prop :=
  ∀ n, (P4954140215300825388.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P11853649782680497590

`record[(2*n+1)/gcd(7, 3-n)]`
-/

namespace A162699.P11853649782680497590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd 7 (3 - (n : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162699.P11853649782680497590

namespace A162699

/-- `record[(2*n+1)/gcd(7, 3-n)]` -/
def P11853649782680497590.Spec : Prop :=
  ∀ n, P11853649782680497590.a n = (A162699 (n + 1) : ℚ)

end A162699

/-! ## A162699.P9335736576785416334

`record[gcd(2*n+1, val(2*n+1, 7))]`
-/

namespace A162699.P9335736576785416334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) (SequenceMachineLib.valuation (2 * n + 1) 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162699.P9335736576785416334

namespace A162699

/-- `record[gcd(2*n+1, val(2*n+1, 7))]` -/
def P9335736576785416334.Spec : Prop :=
  ∀ n, (P9335736576785416334.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P15163363305218682972

`record[2*n+1-val((2*n+1)², 7)]`
-/

namespace A162699.P15163363305218682972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.valuation ((2 * n + 1) ^ 2) 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162699.P15163363305218682972

namespace A162699

/-- `record[2*n+1-val((2*n+1)², 7)]` -/
def P15163363305218682972.Spec : Prop :=
  ∀ n, P15163363305218682972.a n = A162699 (n + 1)

end A162699

/-! ## A162699.P809313960373705639

`∑[A040252(n)%A040216(n)]`
-/

namespace A162699.P809313960373705639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040252 n) (A040216 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162699.P809313960373705639

namespace A162699

/-- `∑[A040252(n)%A040216(n)]` -/
def P809313960373705639.Spec : Prop :=
  ∀ n, P809313960373705639.a n = A162699 (n + 1)

end A162699

/-! ## A162699.P10116495483349470201

`abs(2*∑[A093718(n+2)!]-1)`
-/

namespace A162699.P10116495483349470201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093718 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1|

end

end A162699.P10116495483349470201

namespace A162699

/-- `abs(2*∑[A093718(n+2)!]-1)` -/
def P10116495483349470201.Spec : Prop :=
  ∀ n, P10116495483349470201.a n = A162699 (n + 1)

end A162699

/-! ## A162699.P9975072097248943623

`record[A242603(2*n+1)]`
-/

namespace A162699.P9975072097248943623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162699.P9975072097248943623

namespace A162699

/-- `record[A242603(2*n+1)]` -/
def P9975072097248943623.Spec : Prop :=
  ∀ n, P9975072097248943623.a n = A162699 (n + 1)

end A162699

/-! ## A162699.P12195067260396478643

`A004273(A032775(n+2))`
-/

namespace A162699.P12195067260396478643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A032775 (n + 2)).toNat

end

end A162699.P12195067260396478643

namespace A162699

/-- `A004273(A032775(n+2))` -/
def P12195067260396478643.Spec : Prop :=
  ∀ n, P12195067260396478643.a n = A162699 (n + 1)

end A162699

/-! ## A162699.P11537226049987575556

`eq[A010143(n), A050932(n)]`
-/

namespace A162699.P11537226049987575556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162699.P11537226049987575556

namespace A162699

/-- `eq[A010143(n), A050932(n)]` -/
def P11537226049987575556.Spec : Prop :=
  ∀ n, (P11537226049987575556.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P13776977282162830088

`eq[A010143(n), A123726(n)]`
-/

namespace A162699.P13776977282162830088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162699.P13776977282162830088

namespace A162699

/-- `eq[A010143(n), A123726(n)]` -/
def P13776977282162830088.Spec : Prop :=
  ∀ n, (P13776977282162830088.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P4442326088078207260

`eq[A010143(n), A057237(n+1)]`
-/

namespace A162699.P4442326088078207260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162699.P4442326088078207260

namespace A162699

/-- `eq[A010143(n), A057237(n+1)]` -/
def P4442326088078207260.Spec : Prop :=
  ∀ n, (P4442326088078207260.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P3901717329881620109

`eq[A010143(n), A135521(n+1)]`
-/

namespace A162699.P3901717329881620109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162699.P3901717329881620109

namespace A162699

/-- `eq[A010143(n), A135521(n+1)]` -/
def P3901717329881620109.Spec : Prop :=
  ∀ n, (P3901717329881620109.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P13781542348869091736

`eq[A010143(n), A115716(n)]`
-/

namespace A162699.P13781542348869091736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162699.P13781542348869091736

namespace A162699

/-- `eq[A010143(n), A115716(n)]` -/
def P13781542348869091736.Spec : Prop :=
  ∀ n, (P13781542348869091736.a n : ℤ) = A162699 (n + 1)

end A162699

/-! ## A162699.P1389834969177026455

`∩[2*n+1, comp[7*n]]`
-/

namespace A162699.P1389834969177026455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A162699.P1389834969177026455

namespace A162699

/-- `∩[2*n+1, comp[7*n]]` -/
def P1389834969177026455.Spec : Prop :=
  ∀ n, (P1389834969177026455.a n : ℤ) = A162699 (n + 1)

end A162699

