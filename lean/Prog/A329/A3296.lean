import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
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

/-!
# A329600: Smallest number with the same set of distinct prime exponents as A108951(n).

The programs for A329600, the canonical program `A329600.P5147459895201057700` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329600 has offset 1).

The definition of A329600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A122111, A181821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329600.P5030627297158562124

`A181821(A329607(n+1))`
-/

namespace A329600.P5030627297158562124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A329607 (n + 1)).toNat

end

end A329600.P5030627297158562124

namespace A329600

/-- `A181821(A329607(n+1))` -/
def P5030627297158562124.Spec : Prop :=
  ∀ n, P5030627297158562124.a n = A329600 (n + 1)

end A329600

/-! ## A329600.P15577404493454267116

`A181821(A122111(A071364(n+1)))`
-/

namespace A329600.P15577404493454267116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A122111 (A071364 (n + 1)).toNat).toNat

end

end A329600.P15577404493454267116

namespace A329600

/-- `A181821(A122111(A071364(n+1)))` -/
def P15577404493454267116.Spec : Prop :=
  ∀ n, P15577404493454267116.a n = A329600 (n + 1)

end A329600

/-! ## A329600.P5147459895201057700

`A181821(A007947(A122111(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329600

/-- `A181821(A007947(A122111(n+1)))` -/
def P5147459895201057700.Spec : Prop :=
  ∀ n, P5147459895201057700.a n = A329600 (n + 1)

theorem P5147459895201057700.correct : P5147459895201057700.Spec := by
  intro n
  simp only [A329600, Nat.add_sub_cancel]

end A329600

/-! ## A329600.P2424220514155805103

`A328400(A108951(n+1))`
-/

namespace A329600.P2424220514155805103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (A108951 (n + 1)).toNat

end

end A329600.P2424220514155805103

namespace A329600

/-- `A328400(A108951(n+1))` -/
def P2424220514155805103.Spec : Prop :=
  ∀ n, P2424220514155805103.a n = A329600 (n + 1)

end A329600

/-! ## A329600.P9139459366430489579

`A181821(gcd(A086568(n+1), A122111(n+1)))`
-/

namespace A329600.P9139459366430489579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (Int.gcd (A086568 (n + 1)) (A122111 (n + 1)))

end

end A329600.P9139459366430489579

namespace A329600

/-- `A181821(gcd(A086568(n+1), A122111(n+1)))` -/
def P9139459366430489579.Spec : Prop :=
  ∀ n, P9139459366430489579.a n = A329600 (n + 1)

end A329600

/-! ## A329600.P9242946200061191693

`A331188(13*A071364(n+1))`
-/

namespace A329600.P9242946200061191693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (13 * A071364 (n + 1)).toNat

end

end A329600.P9242946200061191693

namespace A329600

/-- `A331188(13*A071364(n+1))` -/
def P9242946200061191693.Spec : Prop :=
  ∀ n, P9242946200061191693.a n = A329600 (n + 1)

end A329600

/-! ## A329600.P5641129247702726770

`A108951(A071364(n+1))`
-/

namespace A329600.P5641129247702726770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A071364 (n + 1)).toNat

end

end A329600.P5641129247702726770

namespace A329600

/-- `A108951(A071364(n+1))` -/
def P5641129247702726770.Spec : Prop :=
  ∀ n, P5641129247702726770.a n = A329600 (n + 1)

end A329600

/-! ## A329600.P16536469965255897063

`A331188(A071364((n+1)²))/A331188(A071364(n+1))`
-/

namespace A329600.P16536469965255897063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A071364 ((n + 1) ^ 2)).toNat : ℚ) / (A331188 (A071364 (n + 1)).toNat : ℚ)

end

end A329600.P16536469965255897063

namespace A329600

/-- `A331188(A071364((n+1)²))/A331188(A071364(n+1))` -/
def P16536469965255897063.Spec : Prop :=
  ∀ n, P16536469965255897063.a n = (A329600 (n + 1) : ℚ)

end A329600

/-! ## A329600.P17125429906271044352

`A362227(A334032(n+1))`
-/

namespace A329600.P17125429906271044352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A334032 (n + 1)).toNat

end

end A329600.P17125429906271044352

namespace A329600

/-- `A362227(A334032(n+1))` -/
def P17125429906271044352.Spec : Prop :=
  ∀ n, P17125429906271044352.a n = A329600 (n + 1)

end A329600

/-!
# A329601: The squarefree kernel of Product prime(e(i)), when n = Product prime(i)^e(i).

The programs for A329601, the canonical program `A329601.P6561842529353265612` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329601 has offset 1).

The definition of A329601 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329601.P6561842529353265612

`A007947(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329601

/-- `A007947(A181819(n+1))` -/
def P6561842529353265612.Spec : Prop :=
  ∀ n, P6561842529353265612.a n = A329601 (n + 1)

theorem P6561842529353265612.correct : P6561842529353265612.Spec := by
  intro n
  simp only [A329601, Nat.add_sub_cancel]

end A329601

/-! ## A329601.P17599424456029627293

`A019565(A297404(n+1))`
-/

namespace A329601.P17599424456029627293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A297404 (n + 1)).toNat

end

end A329601.P17599424456029627293

namespace A329601

/-- `A019565(A297404(n+1))` -/
def P17599424456029627293.Spec : Prop :=
  ∀ n, P17599424456029627293.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P284244942624948226

`A181819(A328400(n+1))`
-/

namespace A329601.P284244942624948226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A328400 (n + 1)).toNat

end

end A329601.P284244942624948226

namespace A329601

/-- `A181819(A328400(n+1))` -/
def P284244942624948226.Spec : Prop :=
  ∀ n, P284244942624948226.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P6503849426797588034

`A329607(A238745(n+1))`
-/

namespace A329601.P6503849426797588034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A238745 (n + 1)).toNat

end

end A329601.P6503849426797588034

namespace A329601

/-- `A329607(A238745(n+1))` -/
def P6503849426797588034.Spec : Prop :=
  ∀ n, P6503849426797588034.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P2206816677978511736

`A007947(∏{e}[n+1, A000040(#)])`
-/

namespace A329601.P2206816677978511736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A329601.P2206816677978511736

namespace A329601

/-- `A007947(∏{e}[n+1, A000040(#)])` -/
def P2206816677978511736.Spec : Prop :=
  ∀ n, P2206816677978511736.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P14072259045717020393

`A007947(∏{e}[n+1, A058853(#)])`
-/

namespace A329601.P14072259045717020393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A329601.P14072259045717020393

namespace A329601

/-- `A007947(∏{e}[n+1, A058853(#)])` -/
def P14072259045717020393.Spec : Prop :=
  ∀ n, P14072259045717020393.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P17379697381685660850

`A181819(n+1)/A351944(n+1)`
-/

namespace A329601.P17379697381685660850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A351944 (n + 1) : ℚ)

end

end A329601.P17379697381685660850

namespace A329601

/-- `A181819(n+1)/A351944(n+1)` -/
def P17379697381685660850.Spec : Prop :=
  ∀ n, P17379697381685660850.a n = (A329601 (n + 1) : ℚ)

end A329601

/-! ## A329601.P11544176165690816198

`gcd(A086568(n+1), A181819(n+1))`
-/

namespace A329601.P11544176165690816198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086568 (n + 1)) (A181819 (n + 1))

end

end A329601.P11544176165690816198

namespace A329601

/-- `gcd(A086568(n+1), A181819(n+1))` -/
def P11544176165690816198.Spec : Prop :=
  ∀ n, (P11544176165690816198.a n : ℤ) = A329601 (n + 1)

end A329601

/-! ## A329601.P16436030725735791789

`A181819(n+1)/A295658(A181819(n+1)²)`
-/

namespace A329601.P16436030725735791789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A295658 (A181819 (n + 1) ^ 2).toNat : ℚ)

end

end A329601.P16436030725735791789

namespace A329601

/-- `A181819(n+1)/A295658(A181819(n+1)²)` -/
def P16436030725735791789.Spec : Prop :=
  ∀ n, P16436030725735791789.a n = (A329601 (n + 1) : ℚ)

end A329601

/-! ## A329601.P3763193766532830060

`A329607(A122111(A181819(A071364(n+1))))`
-/

namespace A329601.P3763193766532830060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A122111 (A181819 (A071364 (n + 1)).toNat).toNat).toNat

end

end A329601.P3763193766532830060

namespace A329601

/-- `A329607(A122111(A181819(A071364(n+1))))` -/
def P3763193766532830060.Spec : Prop :=
  ∀ n, P3763193766532830060.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P5146087650517894771

`A156061(A328878(A181819(A046523(n+1))))`
-/

namespace A329601.P5146087650517894771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A328878 (A181819 (A046523 (n + 1)).toNat).toNat).toNat

end

end A329601.P5146087650517894771

namespace A329601

/-- `A156061(A328878(A181819(A046523(n+1))))` -/
def P5146087650517894771.Spec : Prop :=
  ∀ n, P5146087650517894771.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P6030306774226199143

`A076618(A181819(n+1)²)-1`
-/

namespace A329601.P6030306774226199143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A181819 (n + 1) ^ 2).toNat - 1

end

end A329601.P6030306774226199143

namespace A329601

/-- `A076618(A181819(n+1)²)-1` -/
def P6030306774226199143.Spec : Prop :=
  ∀ n, P6030306774226199143.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P11377490492747025433

`A156061(A328878(A181819(n+1)²))`
-/

namespace A329601.P11377490492747025433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A328878 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A329601.P11377490492747025433

namespace A329601

/-- `A156061(A328878(A181819(n+1)²))` -/
def P11377490492747025433.Spec : Prop :=
  ∀ n, P11377490492747025433.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P14853627212185168916

`A355261(A181819(n+1)²)/A181819(n+1)`
-/

namespace A329601.P14853627212185168916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (A181819 (n + 1) ^ 2).toNat : ℚ) / (A181819 (n + 1) : ℚ)

end

end A329601.P14853627212185168916

namespace A329601

/-- `A355261(A181819(n+1)²)/A181819(n+1)` -/
def P14853627212185168916.Spec : Prop :=
  ∀ n, P14853627212185168916.a n = (A329601 (n + 1) : ℚ)

end A329601

/-! ## A329601.P10060777719499576870

`A181819(n+1)²/A003557(A181819(n+1)²)`
-/

namespace A329601.P10060777719499576870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) ^ 2 : ℚ) / (A003557 (A181819 (n + 1) ^ 2).toNat : ℚ)

end

end A329601.P10060777719499576870

namespace A329601

/-- `A181819(n+1)²/A003557(A181819(n+1)²)` -/
def P10060777719499576870.Spec : Prop :=
  ∀ n, P10060777719499576870.a n = (A329601 (n + 1) : ℚ)

end A329601

/-! ## A329601.P12619393137004572490

`A329607(A122111(A181819(A122111(A329607(n+1)))))`
-/

namespace A329601.P12619393137004572490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A122111 (A181819 (A122111 (A329607 (n + 1)).toNat).toNat).toNat).toNat

end

end A329601.P12619393137004572490

namespace A329601

/-- `A329607(A122111(A181819(A122111(A329607(n+1)))))` -/
def P12619393137004572490.Spec : Prop :=
  ∀ n, P12619393137004572490.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P9016859925374017235

`A329607(A122111(A181819(n+1)²))`
-/

namespace A329601.P9016859925374017235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A122111 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A329601.P9016859925374017235

namespace A329601

/-- `A329607(A122111(A181819(n+1)²))` -/
def P9016859925374017235.Spec : Prop :=
  ∀ n, P9016859925374017235.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P2657065434853113273

`A156061(A064988(A181819(A064988(n+1))))`
-/

namespace A329601.P2657065434853113273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A064988 (A181819 (A064988 (n + 1)).toNat).toNat).toNat

end

end A329601.P2657065434853113273

namespace A329601

/-- `A156061(A064988(A181819(A064988(n+1))))` -/
def P2657065434853113273.Spec : Prop :=
  ∀ n, P2657065434853113273.a n = A329601 (n + 1)

end A329601

/-! ## A329601.P7133027266677314559

`A007947(A295879((n+1)*A007947(n+1)))`
-/

namespace A329601.P7133027266677314559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A295879 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A329601.P7133027266677314559

namespace A329601

/-- `A007947(A295879((n+1)*A007947(n+1)))` -/
def P7133027266677314559.Spec : Prop :=
  ∀ n, P7133027266677314559.a n = A329601 (n + 1)

end A329601

/-!
# A329602: Square root of largest square dividing A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329602, the canonical program `A329602.P10208597524849077270` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329602 has offset 1).

The definition of A329602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329602.P10208597524849077270

`A000188(A108951(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329602

/-- `A000188(A108951(n+1))` -/
def P10208597524849077270.Spec : Prop :=
  ∀ n, P10208597524849077270.a n = A329602 (n + 1)

theorem P10208597524849077270.correct : P10208597524849077270.Spec := by
  intro n
  simp only [A329602, Nat.add_sub_cancel]

end A329602

/-! ## A329602.P9132197480572497600

`A108951(A329888(n+1))`
-/

namespace A329602.P9132197480572497600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A329888 (n + 1)).toNat

end

end A329602.P9132197480572497600

namespace A329602

/-- `A108951(A329888(n+1))` -/
def P9132197480572497600.Spec : Prop :=
  ∀ n, P9132197480572497600.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P17175716308646310227

`A331188(A085392(n+1)*A329888(n+1))`
-/

namespace A329602.P17175716308646310227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A085392 (n + 1) * A329888 (n + 1)).toNat

end

end A329602.P17175716308646310227

namespace A329602

/-- `A331188(A085392(n+1)*A329888(n+1))` -/
def P17175716308646310227.Spec : Prop :=
  ∀ n, P17175716308646310227.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P5752410632017879047

`A331188(A087039(n+1)*A329888(n+1))`
-/

namespace A329602.P5752410632017879047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A087039 (n + 1) * A329888 (n + 1)).toNat

end

end A329602.P5752410632017879047

namespace A329602

/-- `A331188(A087039(n+1)*A329888(n+1))` -/
def P5752410632017879047.Spec : Prop :=
  ∀ n, P5752410632017879047.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P14022144909454412449

`A331188(A111089(n+1)*A329888(n+1))`
-/

namespace A329602.P14022144909454412449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A111089 (n + 1) * A329888 (n + 1)).toNat

end

end A329602.P14022144909454412449

namespace A329602

/-- `A331188(A111089(n+1)*A329888(n+1))` -/
def P14022144909454412449.Spec : Prop :=
  ∀ n, P14022144909454412449.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P7828332640365871163

`A331188(A117366(n+1)*A329888(n+1))`
-/

namespace A329602.P7828332640365871163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A117366 (n + 1) * A329888 (n + 1)).toNat

end

end A329602.P7828332640365871163

namespace A329602

/-- `A331188(A117366(n+1)*A329888(n+1))` -/
def P7828332640365871163.Spec : Prop :=
  ∀ n, P7828332640365871163.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P17021865186478501433

`A331188(A189172(n+1)*A329888(n+1))`
-/

namespace A329602.P17021865186478501433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A189172 (n + 1) * A329888 (n + 1)).toNat

end

end A329602.P17021865186478501433

namespace A329602

/-- `A331188(A189172(n+1)*A329888(n+1))` -/
def P17021865186478501433.Spec : Prop :=
  ∀ n, P17021865186478501433.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P18437690940868163384

`A331188(A217581(n+1)*A329888(n+1))`
-/

namespace A329602.P18437690940868163384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A217581 (n + 1) * A329888 (n + 1)).toNat

end

end A329602.P18437690940868163384

namespace A329602

/-- `A331188(A217581(n+1)*A329888(n+1))` -/
def P18437690940868163384.Spec : Prop :=
  ∀ n, P18437690940868163384.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P11558481537052253306

`A019554(A331188(n+1))`
-/

namespace A329602.P11558481537052253306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A331188 (n + 1)).toNat

end

end A329602.P11558481537052253306

namespace A329602

/-- `A019554(A331188(n+1))` -/
def P11558481537052253306.Spec : Prop :=
  ∀ n, P11558481537052253306.a n = A329602 (n + 1)

end A329602

/-! ## A329602.P5725119751859138646

`A331188(2*(n+1))/A000188(A331188(4*(n+1)))`
-/

namespace A329602.P5725119751859138646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (2 * (n + 1)) : ℚ) / (A000188 (A331188 (4 * (n + 1))).toNat : ℚ)

end

end A329602.P5725119751859138646

namespace A329602

/-- `A331188(2*(n+1))/A000188(A331188(4*(n+1)))` -/
def P5725119751859138646.Spec : Prop :=
  ∀ n, P5725119751859138646.a n = (A329602 (n + 1) : ℚ)

end A329602

/-!
# A329603: a(n) = A005940(1+(1+(3*A156552(n)))) = (1/2) * A005940(1+(3*A156552(2*n))).

The programs for A329603, the canonical program `A329603.P2980382662565195103` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329603 has offset 1).

The definition of A329603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329603.P11503318111513941494

`A332449(2*(n+1))/2`
-/

namespace A329603.P11503318111513941494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (2 * (n + 1)) : ℚ) / 2

end

end A329603.P11503318111513941494

namespace A329603

/-- `A332449(2*(n+1))/2` -/
def P11503318111513941494.Spec : Prop :=
  ∀ n, P11503318111513941494.a n = (A329603 (n + 1) : ℚ)

end A329603

/-! ## A329603.P2980382662565195103

`A005940(1+1+3*A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329603

/-- `A005940(1+1+3*A156552(n+1))` -/
def P2980382662565195103.Spec : Prop :=
  ∀ n, P2980382662565195103.a n = A329603 (n + 1)

theorem P2980382662565195103.correct : P2980382662565195103.Spec := by
  intro n
  simp only [A329603, Nat.add_sub_cancel]

end A329603

/-! ## A329603.P15138477329581615389

`A005940(1+A016777(A156552(n+1)))`
-/

namespace A329603.P15138477329581615389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A016777 (A156552 (n + 1)).toNat).toNat

end

end A329603.P15138477329581615389

namespace A329603

/-- `A005940(1+A016777(A156552(n+1)))` -/
def P15138477329581615389.Spec : Prop :=
  ∀ n, P15138477329581615389.a n = A329603 (n + 1)

end A329603

/-! ## A329603.P14933370220411931019

`1/2*A005940(1+3*A156552(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329603.P14933370220411931019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A005940 (1 + 3 * A156552 (2 * (n + 1))).toNat : ℚ)

end

end A329603.P14933370220411931019

namespace A329603

/-- `1/2*A005940(1+3*A156552(2*(n+1)))` -/
def P14933370220411931019.Spec : Prop :=
  ∀ n, P14933370220411931019.a n = (A329603 (n + 1) : ℚ)

end A329603

/-! ## A329603.P10112953442876529066

`∑{d}[n+1, A347117(#)]`
-/

namespace A329603.P10112953442876529066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347117 d

end

end A329603.P10112953442876529066

namespace A329603

/-- `∑{d}[n+1, A347117(#)]` -/
def P10112953442876529066.Spec : Prop :=
  ∀ n, P10112953442876529066.a n = A329603 (n + 1)

end A329603

/-! ## A329603.P11506749094126241970

`ceil(A332449(Δ[n²]+1)/2)`
-/

namespace A329603.P11506749094126241970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332449 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌉

end

end A329603.P11506749094126241970

namespace A329603

/-- `ceil(A332449(Δ[n²]+1)/2)` -/
def P11506749094126241970.Spec : Prop :=
  ∀ n, P11506749094126241970.a n = A329603 (n + 1)

end A329603

/-! ## A329603.P2473111780912361539

`A353270(2*(n+1))*A353272(2*(n+1))/2`
-/

namespace A329603.P2473111780912361539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353270 (2 * (n + 1)) * A353272 (2 * (n + 1)) : ℚ) / 2

end

end A329603.P2473111780912361539

namespace A329603

/-- `A353270(2*(n+1))*A353272(2*(n+1))/2` -/
def P2473111780912361539.Spec : Prop :=
  ∀ n, P2473111780912361539.a n = (A329603 (n + 1) : ℚ)

end A329603

/-! ## A329603.P4190652068840269553

`A353267(2*(n+1))/2`
-/

namespace A329603.P4190652068840269553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353267 (2 * (n + 1)) : ℚ) / 2

end

end A329603.P4190652068840269553

namespace A329603

/-- `A353267(2*(n+1))/2` -/
def P4190652068840269553.Spec : Prop :=
  ∀ n, P4190652068840269553.a n = (A329603 (n + 1) : ℚ)

end A329603

/-! ## A329603.P5005546204643562690

`∑{d}[2*(n+1), A347118(#)]/2`
-/

namespace A329603.P5005546204643562690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A347118 d : ℤ) : ℚ) / 2

end

end A329603.P5005546204643562690

namespace A329603

/-- `∑{d}[2*(n+1), A347118(#)]/2` -/
def P5005546204643562690.Spec : Prop :=
  ∀ n, P5005546204643562690.a n = (A329603 (n + 1) : ℚ)

end A329603

/-! ## A329603.P5250278116387139056

`2^A325970(A006512(n+1))*A332449(2*(n+1))`
-/

namespace A329603.P5250278116387139056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A325970 (A006512 (n + 1)).toNat : ℤ) * (A332449 (2 * (n + 1)) : ℚ)

end

end A329603.P5250278116387139056

namespace A329603

/-- `2^A325970(A006512(n+1))*A332449(2*(n+1))` -/
def P5250278116387139056.Spec : Prop :=
  ∀ n, P5250278116387139056.a n = (A329603 (n + 1) : ℚ)

end A329603

/-! ## A329603.P18084123116189151147

`A014682(A332449(2*(n+1)))`
-/

namespace A329603.P18084123116189151147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332449 (2 * (n + 1))).toNat

end

end A329603.P18084123116189151147

namespace A329603

/-- `A014682(A332449(2*(n+1)))` -/
def P18084123116189151147.Spec : Prop :=
  ∀ n, P18084123116189151147.a n = A329603 (n + 1)

end A329603

/-! ## A329603.P2245742087442609201

`A297165(A332449(n+1))`
-/

namespace A329603.P2245742087442609201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297165 (A332449 (n + 1)).toNat

end

end A329603.P2245742087442609201

namespace A329603

/-- `A297165(A332449(n+1))` -/
def P2245742087442609201.Spec : Prop :=
  ∀ n, P2245742087442609201.a n = A329603 (n + 1)

end A329603

/-!
# A329604: Numbers k such that A156552(k) == 1 (mod 3); numbers k for which A156552(2*k) is a multiple of 3.

The programs for A329604, the canonical program `A329604.P13811925627146038030` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329604 has offset 1).

The definition of A329604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329604.P13811925627146038030

`eq[1, A329903(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329604

/-- `eq[1, A329903(n+1)]+1` -/
def P13811925627146038030.Spec : Prop :=
  ∀ n, (P13811925627146038030.a n : ℤ) = A329604 (n + 1)

theorem P13811925627146038030.correct : P13811925627146038030.Spec := by
  intro n
  simp only [A329604, Nat.add_sub_cancel]

end A329604

/-! ## A329604.P12295048826694683673

`eq[1, A332814(n+1)]+1`
-/

namespace A329604.P12295048826694683673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329604.P12295048826694683673

namespace A329604

/-- `eq[1, A332814(n+1)]+1` -/
def P12295048826694683673.Spec : Prop :=
  ∀ n, (P12295048826694683673.a n : ℤ) = A329604 (n + 1)

end A329604

/-! ## A329604.P3588565442477330426

`record[(n+2)*A332814(n+2)]`
-/

namespace A329604.P3588565442477330426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A332814 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329604.P3588565442477330426

namespace A329604

/-- `record[(n+2)*A332814(n+2)]` -/
def P3588565442477330426.Spec : Prop :=
  ∀ n, P3588565442477330426.a n = A329604 (n + 1)

end A329604

/-! ## A329604.P12722868549766058637

`eq[1, A353269(2*(n+1))]+1`
-/

namespace A329604.P12722868549766058637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329604.P12722868549766058637

namespace A329604

/-- `eq[1, A353269(2*(n+1))]+1` -/
def P12722868549766058637.Spec : Prop :=
  ∀ n, (P12722868549766058637.a n : ℤ) = A329604 (n + 1)

end A329604

/-! ## A329604.P10363576006468014364

`lt[A329903(2*(n+1)), 1]+1`
-/

namespace A329604.P10363576006468014364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A329604.P10363576006468014364

namespace A329604

/-- `lt[A329903(2*(n+1)), 1]+1` -/
def P10363576006468014364.Spec : Prop :=
  ∀ n, (P10363576006468014364.a n : ℤ) = A329604 (n + 1)

end A329604

/-! ## A329604.P4183654960190395765

`filter[A092206(n+1), A353307(#)]`
-/

namespace A329604.P4183654960190395765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353307 (f1 j).toNat = 1) n)

end

end A329604.P4183654960190395765

namespace A329604

/-- `filter[A092206(n+1), A353307(#)]` -/
def P4183654960190395765.Spec : Prop :=
  ∀ n, P4183654960190395765.a n = A329604 (n + 1)

end A329604

/-! ## A329604.P5792396188843776525

`filter[A000037(n+1), A353307(#)]`
-/

namespace A329604.P5792396188843776525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353307 (f1 j).toNat = 1) n)

end

end A329604.P5792396188843776525

namespace A329604

/-- `filter[A000037(n+1), A353307(#)]` -/
def P5792396188843776525.Spec : Prop :=
  ∀ n, P5792396188843776525.a n = A329604 (n + 1)

end A329604

/-! ## A329604.P8697299811442199091

`filter[A057717(n+1), A353307(#)]`
-/

namespace A329604.P8697299811442199091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353307 (f1 j).toNat = 1) n)

end

end A329604.P8697299811442199091

namespace A329604

/-- `filter[A057717(n+1), A353307(#)]` -/
def P8697299811442199091.Spec : Prop :=
  ∀ n, P8697299811442199091.a n = A329604 (n + 1)

end A329604

/-! ## A329604.P3669594429547801093

`filter[n+1, A353307(#)]`
-/

namespace A329604.P3669594429547801093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353307 (f1 j) = 1) n)

end

end A329604.P3669594429547801093

namespace A329604

/-- `filter[n+1, A353307(#)]` -/
def P3669594429547801093.Spec : Prop :=
  ∀ n, (P3669594429547801093.a n : ℤ) = A329604 (n + 1)

end A329604

/-! ## A329604.P12124129295053834908

`lt[1, A332814(A028310(n))+1]`
-/

namespace A329604.P12124129295053834908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329604.P12124129295053834908

namespace A329604

/-- `lt[1, A332814(A028310(n))+1]` -/
def P12124129295053834908.Spec : Prop :=
  ∀ n, (P12124129295053834908.a n : ℤ) = A329604 (n + 1)

end A329604

/-! ## A329604.P805582670915064701

`eq[1, A156552(n+1)%3]+1`
-/

namespace A329604.P805582670915064701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329604.P805582670915064701

namespace A329604

/-- `eq[1, A156552(n+1)%3]+1` -/
def P805582670915064701.Spec : Prop :=
  ∀ n, (P805582670915064701.a n : ℤ) = A329604 (n + 1)

end A329604

/-! ## A329604.P7344388281827166406

`eq[1, A253564(n+1)%3]+1`
-/

namespace A329604.P7344388281827166406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253564 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329604.P7344388281827166406

namespace A329604

/-- `eq[1, A253564(n+1)%3]+1` -/
def P7344388281827166406.Spec : Prop :=
  ∀ n, (P7344388281827166406.a n : ℤ) = A329604 (n + 1)

end A329604

/-!
# A329605: Number of divisors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329605, the canonical program `A329605.P12049727505081655757` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329605 has offset 1).

The definition of A329605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329605.P12049727505081655757

`A000005(A108951(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329605

/-- `A000005(A108951(n+1))` -/
def P12049727505081655757.Spec : Prop :=
  ∀ n, P12049727505081655757.a n = A329605 (n + 1)

theorem P12049727505081655757.correct : P12049727505081655757.Spec := by
  intro n
  simp only [A329605, Nat.add_sub_cancel]

end A329605

/-! ## A329605.P16394283522804019599

`(A001222(n+1)+1)*a(A064989(n+1)-1)` with `a(0)=1`
-/

namespace A329605.P16394283522804019599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A001222 (n + 1) + 1) * a (A064989 (n + 1) - 1).toNat

end

end A329605.P16394283522804019599

namespace A329605

/-- `(A001222(n+1)+1)*a(A064989(n+1)-1)` -/
def P16394283522804019599.Spec : Prop :=
  ∀ n, P16394283522804019599.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P8564854967110200936

`A329382(A129598(n+1))`
-/

namespace A329605.P8564854967110200936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A129598 (n + 1)).toNat

end

end A329605.P8564854967110200936

namespace A329605

/-- `A329382(A129598(n+1))` -/
def P8564854967110200936.Spec : Prop :=
  ∀ n, P8564854967110200936.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P3041862120924353103

`A329382(A253560(n+1))`
-/

namespace A329605.P3041862120924353103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A253560 (n + 1)).toNat

end

end A329605.P3041862120924353103

namespace A329605

/-- `A329382(A253560(n+1))` -/
def P3041862120924353103.Spec : Prop :=
  ∀ n, P3041862120924353103.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P7649898892670587643

`A329382(A256017(n+1))`
-/

namespace A329605.P7649898892670587643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A256017 (n + 1)).toNat

end

end A329605.P7649898892670587643

namespace A329605

/-- `A329382(A256017(n+1))` -/
def P7649898892670587643.Spec : Prop :=
  ∀ n, P7649898892670587643.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P5018625596030566418

`A329382(A130064(2*(n+1)))`
-/

namespace A329605.P5018625596030566418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A130064 (2 * (n + 1))).toNat

end

end A329605.P5018625596030566418

namespace A329605

/-- `A329382(A130064(2*(n+1)))` -/
def P5018625596030566418.Spec : Prop :=
  ∀ n, P5018625596030566418.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P4853793325093011516

`A329382((n+1)*A006530(n+1))`
-/

namespace A329605.P4853793325093011516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A329605.P4853793325093011516

namespace A329605

/-- `A329382((n+1)*A006530(n+1))` -/
def P4853793325093011516.Spec : Prop :=
  ∀ n, P4853793325093011516.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P6813830117474471214

`A329382((n+1)*A303077(n+1))`
-/

namespace A329605.P6813830117474471214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 ((n + 1 : ℤ) * A303077 (n + 1)).toNat

end

end A329605.P6813830117474471214

namespace A329605

/-- `A329382((n+1)*A303077(n+1))` -/
def P6813830117474471214.Spec : Prop :=
  ∀ n, P6813830117474471214.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P3474446857287597984

`A329382((n+1)²/A052126(n+1))`
-/

namespace A329605.P3474446857287597984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A329605.P3474446857287597984

namespace A329605

/-- `A329382((n+1)²/A052126(n+1))` -/
def P3474446857287597984.Spec : Prop :=
  ∀ n, P3474446857287597984.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P13406824925038962927

`A329382(A053024(n+1))`
-/

namespace A329605.P13406824925038962927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A053024 (n + 1)).toNat

end

end A329605.P13406824925038962927

namespace A329605

/-- `A329382(A053024(n+1))` -/
def P13406824925038962927.Spec : Prop :=
  ∀ n, P13406824925038962927.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P2654907624197765292

`A329382(A158128(n+1)+n)`
-/

namespace A329605.P2654907624197765292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A158128 (n + 1) + (n : ℤ)).toNat

end

end A329605.P2654907624197765292

namespace A329605

/-- `A329382(A158128(n+1)+n)` -/
def P2654907624197765292.Spec : Prop :=
  ∀ n, P2654907624197765292.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P11214479394014022141

`A329382(A013636(n+1))`
-/

namespace A329605.P11214479394014022141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A013636 (n + 1)).toNat

end

end A329605.P11214479394014022141

namespace A329605

/-- `A329382(A013636(n+1))` -/
def P11214479394014022141.Spec : Prop :=
  ∀ n, P11214479394014022141.a n = A329605 (n + 1)

end A329605

/-! ## A329605.P3945476574594383810

`A329382(A119416(n+1))`
-/

namespace A329605.P3945476574594383810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A119416 (n + 1)).toNat

end

end A329605.P3945476574594383810

namespace A329605

/-- `A329382(A119416(n+1))` -/
def P3945476574594383810.Spec : Prop :=
  ∀ n, P3945476574594383810.a n = A329605 (n + 1)

end A329605

/-!
# A329607: a(n) = A007947(A122111(n)).

The programs for A329607, the canonical program `A329607.P16260753851820396302` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329607 has offset 1).

The definition of A329607 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329607.P10996681377924061753

`A122111(A071364(n+1))`
-/

namespace A329607.P10996681377924061753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A071364 (n + 1)).toNat

end

end A329607.P10996681377924061753

namespace A329607

/-- `A122111(A071364(n+1))` -/
def P10996681377924061753.Spec : Prop :=
  ∀ n, P10996681377924061753.a n = A329607 (n + 1)

end A329607

/-! ## A329607.P16260753851820396302

`A007947(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329607

/-- `A007947(A122111(n+1))` -/
def P16260753851820396302.Spec : Prop :=
  ∀ n, P16260753851820396302.a n = A329607 (n + 1)

theorem P16260753851820396302.correct : P16260753851820396302.Spec := by
  intro n
  simp only [A329607, Nat.add_sub_cancel]

end A329607

/-! ## A329607.P15749591685844628531

`A007947(A181819(A108951(n+1)))`
-/

namespace A329607.P15749591685844628531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A181819 (A108951 (n + 1)).toNat).toNat

end

end A329607.P15749591685844628531

namespace A329607

/-- `A007947(A181819(A108951(n+1)))` -/
def P15749591685844628531.Spec : Prop :=
  ∀ n, P15749591685844628531.a n = A329607 (n + 1)

end A329607

/-! ## A329607.P4798542281873229657

`gcd(A086568(n+1), A122111(n+1))`
-/

namespace A329607.P4798542281873229657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086568 (n + 1)) (A122111 (n + 1))

end

end A329607.P4798542281873229657

namespace A329607

/-- `gcd(A086568(n+1), A122111(n+1))` -/
def P4798542281873229657.Spec : Prop :=
  ∀ n, (P4798542281873229657.a n : ℤ) = A329607 (n + 1)

end A329607

/-! ## A329607.P7210791968053644767

`∏{e}[A329600(n+1), A000040(#)]`
-/

namespace A329607.P7210791968053644767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A329607.P7210791968053644767

namespace A329607

/-- `∏{e}[A329600(n+1), A000040(#)]` -/
def P7210791968053644767.Spec : Prop :=
  ∀ n, P7210791968053644767.a n = A329607 (n + 1)

end A329607

/-! ## A329607.P4027121696188852863

`A329601(A329600(n+1))`
-/

namespace A329607.P4027121696188852863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329601 (A329600 (n + 1)).toNat

end

end A329607.P4027121696188852863

namespace A329607

/-- `A329601(A329600(n+1))` -/
def P4027121696188852863.Spec : Prop :=
  ∀ n, P4027121696188852863.a n = A329607 (n + 1)

end A329607

/-! ## A329607.P9771975939733420926

`A181819(2*A329600(n+1)-A329600(n+1))`
-/

namespace A329607.P9771975939733420926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (2 * A329600 (n + 1) - A329600 (n + 1)).toNat

end

end A329607.P9771975939733420926

namespace A329607

/-- `A181819(2*A329600(n+1)-A329600(n+1))` -/
def P9771975939733420926.Spec : Prop :=
  ∀ n, P9771975939733420926.a n = A329607 (n + 1)

end A329607

/-! ## A329607.P16660528676607032641

`A007947(A331597(n+1)*A331598(n+1))`
-/

namespace A329607.P16660528676607032641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A331597 (n + 1) * A331598 (n + 1)).toNat

end

end A329607.P16660528676607032641

namespace A329607

/-- `A007947(A331597(n+1)*A331598(n+1))` -/
def P16660528676607032641.Spec : Prop :=
  ∀ n, P16660528676607032641.a n = A329607 (n + 1)

end A329607

/-!
# A329608: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A329605(n) for all other n, except for odd primes p, f(p) = 0.

The programs for A329608, there is no canonical definition to state claims against.
-/

/-! ## A329608.P875725018556409116

`A307092(2^A305801(n+1))`
-/

namespace A329608.P875725018556409116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307092 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A305801 (n + 1) : ℤ))).toNat

end

end A329608.P875725018556409116

/-! ## A329608.P13573949554810353309

`A307092(2^A352898(n+1))`
-/

namespace A329608.P13573949554810353309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307092 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A352898 (n + 1) : ℤ))).toNat

end

end A329608.P13573949554810353309

/-! ## A329608.P1043915734865187519

`A319349(n+1)-A321936(A321990(n+1))`
-/

namespace A329608.P1043915734865187519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319349 (n + 1) - A321936 (A321990 (n + 1)).toNat

end

end A329608.P1043915734865187519

/-!
# A329609: Numbers k such that A156552(k) is a multiple of 3.

The programs for A329609, the canonical program `A329609.P1855842996502073883` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329609 has offset 1).

The definition of A329609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329609.P1855842996502073883

`eq[0, A332814(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329609

/-- `eq[0, A332814(n+1)]+1` -/
def P1855842996502073883.Spec : Prop :=
  ∀ n, (P1855842996502073883.a n : ℤ) = A329609 (n + 1)

theorem P1855842996502073883.correct : P1855842996502073883.Spec := by
  intro n
  simp only [A329609, Nat.add_sub_cancel]

end A329609

/-! ## A329609.P12414424456218634476

`eq[1, A353269(n+1)]+1`
-/

namespace A329609.P12414424456218634476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329609.P12414424456218634476

namespace A329609

/-- `eq[1, A353269(n+1)]+1` -/
def P12414424456218634476.Spec : Prop :=
  ∀ n, (P12414424456218634476.a n : ℤ) = A329609 (n + 1)

end A329609

/-! ## A329609.P9913475739240694799

`lt[A329903(n+1), 1]+1`
-/

namespace A329609.P9913475739240694799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A329609.P9913475739240694799

namespace A329609

/-- `lt[A329903(n+1), 1]+1` -/
def P9913475739240694799.Spec : Prop :=
  ∀ n, (P9913475739240694799.a n : ℤ) = A329609 (n + 1)

end A329609

/-! ## A329609.P3404712587465176638

`eq[1, A329903(2*(n+1))]+1`
-/

namespace A329609.P3404712587465176638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329609.P3404712587465176638

namespace A329609

/-- `eq[1, A329903(2*(n+1))]+1` -/
def P3404712587465176638.Spec : Prop :=
  ∀ n, (P3404712587465176638.a n : ℤ) = A329609 (n + 1)

end A329609

/-! ## A329609.P10411068667798659995

`record[(n+2)^A332814(2*(n+2))]`
-/

namespace A329609.P10411068667798659995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A332814 (2 * (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329609.P10411068667798659995

namespace A329609

/-- `record[(n+2)^A332814(2*(n+2))]` -/
def P10411068667798659995.Spec : Prop :=
  ∀ n, P10411068667798659995.a n = (A329609 (n + 1) : ℚ)

end A329609

/-! ## A329609.P16585459911429972446

`eq[2, A014197(a(A329903(n)))]` with `a(0)=1`
-/

namespace A329609.P16585459911429972446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A014197 (f2 (A329903 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329609.P16585459911429972446

namespace A329609

/-- `eq[2, A014197(a(A329903(n)))]` -/
def P16585459911429972446.Spec : Prop :=
  ∀ n, (P16585459911429972446.a n : ℤ) = A329609 (n + 1)

end A329609

/-! ## A329609.P12272931730565412431

`filter[A233182(n+1), A353269(#)]`
-/

namespace A329609.P12272931730565412431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P12272931730565412431

namespace A329609

/-- `filter[A233182(n+1), A353269(#)]` -/
def P12272931730565412431.Spec : Prop :=
  ∀ n, P12272931730565412431.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P5890531862804801323

`filter[A018252(n+1), A353269(#)]`
-/

namespace A329609.P5890531862804801323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P5890531862804801323

namespace A329609

/-- `filter[A018252(n+1), A353269(#)]` -/
def P5890531862804801323.Spec : Prop :=
  ∀ n, P5890531862804801323.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P7503687980884036283

`filter[A141468(n+2), A353269(#)]`
-/

namespace A329609.P7503687980884036283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P7503687980884036283

namespace A329609

/-- `filter[A141468(n+2), A353269(#)]` -/
def P7503687980884036283.Spec : Prop :=
  ∀ n, P7503687980884036283.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P7993412648538034880

`filter[A222307(2*n+1), A353269(#)]`
-/

namespace A329609.P7993412648538034880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P7993412648538034880

namespace A329609

/-- `filter[A222307(2*n+1), A353269(#)]` -/
def P7993412648538034880.Spec : Prop :=
  ∀ n, P7993412648538034880.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P955727329756312649

`filter[A065090(n+1), A353269(#)]`
-/

namespace A329609.P955727329756312649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P955727329756312649

namespace A329609

/-- `filter[A065090(n+1), A353269(#)]` -/
def P955727329756312649.Spec : Prop :=
  ∀ n, P955727329756312649.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P486526887870148788

`filter[A171581(n+1), A353269(#)]`
-/

namespace A329609.P486526887870148788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P486526887870148788

namespace A329609

/-- `filter[A171581(n+1), A353269(#)]` -/
def P486526887870148788.Spec : Prop :=
  ∀ n, P486526887870148788.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P17430842883453005393

`filter[A338924(n+1), A353269(#)]`
-/

namespace A329609.P17430842883453005393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P17430842883453005393

namespace A329609

/-- `filter[A338924(n+1), A353269(#)]` -/
def P17430842883453005393.Spec : Prop :=
  ∀ n, P17430842883453005393.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P16028147828184835545

`filter[A173905(n+2), A353269(#)]`
-/

namespace A329609.P16028147828184835545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P16028147828184835545

namespace A329609

/-- `filter[A173905(n+2), A353269(#)]` -/
def P16028147828184835545.Spec : Prop :=
  ∀ n, P16028147828184835545.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P16620660450643772151

`filter[A073900(n+1), A353269(#)]`
-/

namespace A329609.P16620660450643772151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P16620660450643772151

namespace A329609

/-- `filter[A073900(n+1), A353269(#)]` -/
def P16620660450643772151.Spec : Prop :=
  ∀ n, P16620660450643772151.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P16790542861594838709

`filter[A073899(n+1), A353269(#)]`
-/

namespace A329609.P16790542861594838709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P16790542861594838709

namespace A329609

/-- `filter[A073899(n+1), A353269(#)]` -/
def P16790542861594838709.Spec : Prop :=
  ∀ n, P16790542861594838709.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P419515299442972963

`filter[A171085(n+1), A353269(#)]`
-/

namespace A329609.P419515299442972963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P419515299442972963

namespace A329609

/-- `filter[A171085(n+1), A353269(#)]` -/
def P419515299442972963.Spec : Prop :=
  ∀ n, P419515299442972963.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P9853835028991578165

`filter[A121543(n+1), A353269(#)]`
-/

namespace A329609.P9853835028991578165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P9853835028991578165

namespace A329609

/-- `filter[A121543(n+1), A353269(#)]` -/
def P9853835028991578165.Spec : Prop :=
  ∀ n, P9853835028991578165.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P12496552123143635717

`filter[A101513(n+1), A353269(#)]`
-/

namespace A329609.P12496552123143635717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P12496552123143635717

namespace A329609

/-- `filter[A101513(n+1), A353269(#)]` -/
def P12496552123143635717.Spec : Prop :=
  ∀ n, P12496552123143635717.a n = A329609 (n + 1)

end A329609

/-! ## A329609.P18086913031240823997

`filter[A089088(n), A353269(#)]`
-/

namespace A329609.P18086913031240823997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A329609.P18086913031240823997

namespace A329609

/-- `filter[A089088(n), A353269(#)]` -/
def P18086913031240823997.Spec : Prop :=
  ∀ n, P18086913031240823997.a n = A329609 (n + 1)

end A329609

/-!
# A329611: Numbers n for which A071187(n^2) <> A329614(n^2).

The programs for A329611, there is no canonical definition to state claims against.
-/

/-! ## A329611.P11957581999896418978

`sqrt(A329613(n+1))`
-/

namespace A329611.P11957581999896418978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A329613 (n + 1) : ℝ)

end

end A329611.P11957581999896418978

/-! ## A329611.P10509662140057937681

`A000027(root(A329613(n+1), 2))`
-/

namespace A329611.P10509662140057937681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A329613 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A329611.P10509662140057937681

/-! ## A329611.P3918114661820494969

`root(A329613(n+1), A071187(A071187(n+2)))`
-/

namespace A329611.P3918114661820494969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A329613 (n + 1) : ℝ) ^ (1 / (A071187 (A071187 (n + 2)).toNat : ℝ))

end

end A329611.P3918114661820494969

/-! ## A329611.P6005698403034601822

`root(A329613(n+1), A071188(A071188(n+2)))`
-/

namespace A329611.P6005698403034601822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A329613 (n + 1) : ℝ) ^ (1 / (A071188 (A071188 (n + 2)).toNat : ℝ))

end

end A329611.P6005698403034601822

/-!
# A329612: a(n) = gcd(d(n), d(A108951(n))), where d(n) gives the number of divisors of n, A000005(n), and A108951 is fully multiplicative with a(prime(i)) = prime(i)# = prime(1) * ... * prime(i).

The programs for A329612, the canonical program `A329612.P6289246993398966991` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329612 has offset 1).

The definition of A329612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A329605, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329612.P6289246993398966991

`gcd(A000005(n+1), A329605(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329612

/-- `gcd(A000005(n+1), A329605(n+1))` -/
def P6289246993398966991.Spec : Prop :=
  ∀ n, (P6289246993398966991.a n : ℤ) = A329612 (n + 1)

theorem P6289246993398966991.correct : P6289246993398966991.Spec := by
  intro n
  simp only [A329612, Nat.add_sub_cancel]

end A329612

/-! ## A329612.P2002854286701140363

`gcd(Δ[A006218(n)], A329605(n+1))`
-/

namespace A329612.P2002854286701140363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A329605 (n + 1))

end

end A329612.P2002854286701140363

namespace A329612

/-- `gcd(Δ[A006218(n)], A329605(n+1))` -/
def P2002854286701140363.Spec : Prop :=
  ∀ n, (P2002854286701140363.a n : ℤ) = A329612 (n + 1)

end A329612

/-! ## A329612.P18114835094380517860

`gcd(Δ[A054519(n)], A329605(A000027(n+1)))`
-/

namespace A329612.P18114835094380517860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A329605 (A000027 (n + 1)).toNat)

end

end A329612.P18114835094380517860

namespace A329612

/-- `gcd(Δ[A054519(n)], A329605(A000027(n+1)))` -/
def P18114835094380517860.Spec : Prop :=
  ∀ n, (P18114835094380517860.a n : ℤ) = A329612 (n + 1)

end A329612

/-! ## A329612.P8431990027211785232

`gcd(∑{d}[n+1, n²%#]+1, A329382(A256017(n+1)))`
-/

namespace A329612.P8431990027211785232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℤ) (A329382 (A256017 (n + 1)).toNat)

end

end A329612.P8431990027211785232

namespace A329612

/-- `gcd(∑{d}[n+1, n²%#]+1, A329382(A256017(n+1)))` -/
def P8431990027211785232.Spec : Prop :=
  ∀ n, (P8431990027211785232.a n : ℤ) = A329612 (n + 1)

end A329612

/-! ## A329612.P17788457099782629128

`gcd(A032741(n+1)+1, A329382((n+1)*A006530(n+1)))`
-/

namespace A329612.P17788457099782629128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1) + 1) (A329382 ((n + 1 : ℤ) * A006530 (n + 1)).toNat)

end

end A329612.P17788457099782629128

namespace A329612

/-- `gcd(A032741(n+1)+1, A329382((n+1)*A006530(n+1)))` -/
def P17788457099782629128.Spec : Prop :=
  ∀ n, (P17788457099782629128.a n : ℤ) = A329612 (n + 1)

end A329612

/-! ## A329612.P7872526316547140215

`gcd(A179941(n+1), A329382(A119416(n+1)))`
-/

namespace A329612.P7872526316547140215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179941 (n + 1)) (A329382 (A119416 (n + 1)).toNat)

end

end A329612.P7872526316547140215

namespace A329612

/-- `gcd(A179941(n+1), A329382(A119416(n+1)))` -/
def P7872526316547140215.Spec : Prop :=
  ∀ n, (P7872526316547140215.a n : ℤ) = A329612 (n + 1)

end A329612

/-!
# A329613: Numbers k such that A071187(k) <> A329614(k).

The programs for A329613, there is no canonical definition to state claims against.
-/

/-! ## A329613.P7887083885338706727

`A329611(n+1)²`
-/

namespace A329613.P7887083885338706727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329611 (n + 1) ^ 2

end

end A329613.P7887083885338706727

/-! ## A329613.P645411202339823202

`A329611(n+1)^A000034(or(3, n))`
-/

namespace A329613.P645411202339823202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329611 (n + 1) : ℚ) ^ (A000034 (Nat.lor 3 n) : ℤ)

end

end A329613.P645411202339823202

/-! ## A329613.P10094031306679451849

`A329611(n+1)^A020639(A000010(3*(n+1)))`
-/

namespace A329613.P10094031306679451849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329611 (n + 1) : ℚ) ^ (A020639 (A000010 (3 * (n + 1))).toNat : ℤ)

end

end A329613.P10094031306679451849

/-! ## A329613.P16708937181977303676

`A329611(n+1)%A237189(n+1)*A329611(n+1)`
-/

namespace A329613.P16708937181977303676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329611 (n + 1)) (A237189 (n + 1)) * A329611 (n + 1)

end

end A329613.P16708937181977303676

/-! ## A329613.P14546807931886704946

`A010052(A048760(n))*A329611(n+1)*A329611(n+1)`
-/

namespace A329613.P14546807931886704946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A048760 n).toNat * A329611 (n + 1) * A329611 (n + 1)

end

end A329613.P14546807931886704946

/-! ## A329613.P11753886391264303856

`A038712(A038712(n+1))*A329611(n+1)*A329611(n+1)`
-/

namespace A329613.P11753886391264303856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A038712 (n + 1)).toNat * A329611 (n + 1) * A329611 (n + 1)

end

end A329613.P11753886391264303856

/-! ## A329613.P18181150450055392527

`A000290(abs(1-A329611(n+1))+1)`
-/

namespace A329613.P18181150450055392527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (|1 - A329611 (n + 1)| + 1).toNat

end

end A329613.P18181150450055392527

/-! ## A329613.P7700691610931952242

`A000290(A329611(2*(n+1)-(n+1)))`
-/

namespace A329613.P7700691610931952242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A329611 (2 * (n + 1) - (n + 1))).toNat

end

end A329613.P7700691610931952242

/-! ## A329613.P14575511514261010997

`A000290(A329611(n+1))*A010052(A048760(n))`
-/

namespace A329613.P14575511514261010997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A329611 (n + 1)).toNat * A010052 (A048760 n).toNat

end

end A329613.P14575511514261010997

/-! ## A329613.P2560361515025118136

`A000290(A329611(n+1))*A008836(A048760(n+1))`
-/

namespace A329613.P2560361515025118136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A329611 (n + 1)).toNat * A008836 (A048760 (n + 1)).toNat

end

end A329613.P2560361515025118136

/-! ## A329613.P11133468595300066436

`A000290(A008836(n+1)*A329611(n+1)*A008836(n+1))`
-/

namespace A329613.P11133468595300066436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008836 (n + 1) * A329611 (n + 1) * A008836 (n + 1)).toNat

end

end A329613.P11133468595300066436

/-! ## A329613.P5624902855513911797

`A000290(A329611(n+1))*A010052(A000290(n))`
-/

namespace A329613.P5624902855513911797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A329611 (n + 1)).toNat * A010052 (A000290 n).toNat

end

end A329613.P5624902855513911797

/-! ## A329613.P9911323927052667961

`A000290(A329611(n+1))*A008836(A000290(n+1))`
-/

namespace A329613.P9911323927052667961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A329611 (n + 1)).toNat * A008836 (A000290 (n + 1)).toNat

end

end A329613.P9911323927052667961

/-!
# A329614: 

The programs for A329614, there is no canonical definition to state claims against.
-/

/-! ## A329614.P4710185182355236994

`A020639(A329605(n+1))`
-/

namespace A329614.P4710185182355236994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A329605 (n + 1)).toNat

end

end A329614.P4710185182355236994

/-! ## A329614.P15383860854202808640

`A020639(A000005(A167338(n+1)/A061142(n+1)))`
-/

namespace A329614.P15383860854202808640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 (SequenceMachineLib.roundAway ((A167338 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ))).toNat).toNat

end

end A329614.P15383860854202808640

/-! ## A329614.P8169749970883459469

`A020639(A329612(n+1)^A215926(3*(n+2)))`
-/

namespace A329614.P8169749970883459469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A329612 (n + 1) : ℚ) ^ (A215926 (3 * (n + 2)) : ℤ))).toNat

end

end A329614.P8169749970883459469

/-! ## A329614.P10100169631086525344

`and(A048500(n), A071187(n+1))`
-/

namespace A329614.P10100169631086525344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048500 n) (A071187 (n + 1))

end

end A329614.P10100169631086525344

/-! ## A329614.P8010952661060059340

`and(A003261(n+1), A071187(n+1))`
-/

namespace A329614.P8010952661060059340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A071187 (n + 1))

end

end A329614.P8010952661060059340

/-! ## A329614.P11071111548761788193

`and(A071187(n+1), A163383(n+1))`
-/

namespace A329614.P11071111548761788193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A163383 (n + 1))

end

end A329614.P11071111548761788193

/-! ## A329614.P13104529793518332425

`and(A063396(n), A071187(n+1))`
-/

namespace A329614.P13104529793518332425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A071187 (n + 1))

end

end A329614.P13104529793518332425

/-! ## A329614.P16594483562541416186

`and(A071187(n+1), A297621(n))`
-/

namespace A329614.P16594483562541416186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A297621 n)

end

end A329614.P16594483562541416186

/-! ## A329614.P490193419899983204

`and(A055580(n), A071187(n+1))`
-/

namespace A329614.P490193419899983204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A071187 (n + 1))

end

end A329614.P490193419899983204

/-! ## A329614.P1940914384193401075

`and(A071187(n+1), A107392(n))`
-/

namespace A329614.P1940914384193401075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A107392 n)

end

end A329614.P1940914384193401075

/-! ## A329614.P3149187592359523240

`A020639(A005361(A064549(n+1)))`
-/

namespace A329614.P3149187592359523240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005361 (A064549 (n + 1)).toNat).toNat

end

end A329614.P3149187592359523240

/-! ## A329614.P8316280716591626681

`and(A071187(n+1), A107464(n))`
-/

namespace A329614.P8316280716591626681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A107464 n)

end

end A329614.P8316280716591626681

/-! ## A329614.P15104159039856278820

`A071187(n+1)%A014346(n)`
-/

namespace A329614.P15104159039856278820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071187 (n + 1)) (A014346 n)

end

end A329614.P15104159039856278820

/-! ## A329614.P8632084170996902710

`and(A063397(n), A071187(n+1))`
-/

namespace A329614.P8632084170996902710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063397 n) (A071187 (n + 1))

end

end A329614.P8632084170996902710

/-! ## A329614.P2666776524277522784

`and(A071187(n+1), A107953(n))`
-/

namespace A329614.P2666776524277522784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A107953 n)

end

end A329614.P2666776524277522784

/-! ## A329614.P8443028069771292443

`and(A063398(n), A071187(n+1))`
-/

namespace A329614.P8443028069771292443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063398 n) (A071187 (n + 1))

end

end A329614.P8443028069771292443

/-! ## A329614.P2013042907212085787

`gcd(A052793(n), A071187(n+1))`
-/

namespace A329614.P2013042907212085787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052793 n) (A071187 (n + 1))

end

end A329614.P2013042907212085787

/-! ## A329614.P7049819298699763633

`and(A071187(n+1), A211386(n))`
-/

namespace A329614.P7049819298699763633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A211386 n)

end

end A329614.P7049819298699763633

/-! ## A329614.P16519191071600446702

`and(A071187(n+1), A107954(n))`
-/

namespace A329614.P16519191071600446702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A107954 n)

end

end A329614.P16519191071600446702

/-! ## A329614.P16192822716768591018

`and(A071187(n+1), A107955(n))`
-/

namespace A329614.P16192822716768591018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071187 (n + 1)) (A107955 n)

end

end A329614.P16192822716768591018

/-!
# A329615: Bitwise-AND of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329615, the canonical program `A329615.P10117181717344935644` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329615 has offset 1).

The definition of A329615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329615.P12432190898674457068

`A267115(A329600(n+1))`
-/

namespace A329615.P12432190898674457068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267115 (A329600 (n + 1)).toNat

end

end A329615.P12432190898674457068

namespace A329615

/-- `A267115(A329600(n+1))` -/
def P12432190898674457068.Spec : Prop :=
  ∀ n, P12432190898674457068.a n = A329615 (n + 1)

end A329615

/-! ## A329615.P8828523940910343764

`A267115(A108951(n+1))`
-/

namespace A329615.P8828523940910343764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267115 (A108951 (n + 1)).toNat

end

end A329615.P8828523940910343764

namespace A329615

/-- `A267115(A108951(n+1))` -/
def P8828523940910343764.Spec : Prop :=
  ∀ n, P8828523940910343764.a n = A329615 (n + 1)

end A329615

/-! ## A329615.P10117181717344935644

`A008480(n+1)%A178815(n+1)*A071178(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A329615

/-- `A008480(n+1)%A178815(n+1)*A071178(n+1)` -/
def P10117181717344935644.Spec : Prop :=
  ∀ n, P10117181717344935644.a n = A329615 (n + 1)

theorem P10117181717344935644.correct : P10117181717344935644.Spec := by
  intro n
  simp only [A329615, Nat.add_sub_cancel]

end A329615

/-! ## A329615.P13905913938068102168

`and(A071178(n+1), A136566(A242420(n+1)))`
-/

namespace A329615.P13905913938068102168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071178 (n + 1)) (A136566 (A242420 (n + 1)).toNat)

end

end A329615.P13905913938068102168

namespace A329615

/-- `and(A071178(n+1), A136566(A242420(n+1)))` -/
def P13905913938068102168.Spec : Prop :=
  ∀ n, P13905913938068102168.a n = A329615 (n + 1)

end A329615

/-! ## A329615.P15151071978476319612

`and(A087179(A242419(n+1)), A136566(n+1))`
-/

namespace A329615.P15151071978476319612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087179 (A242419 (n + 1)).toNat) (A136566 (n + 1))

end

end A329615.P15151071978476319612

namespace A329615

/-- `and(A087179(A242419(n+1)), A136566(n+1))` -/
def P15151071978476319612.Spec : Prop :=
  ∀ n, P15151071978476319612.a n = A329615 (n + 1)

end A329615

/-! ## A329615.P3261334500671520079

`A329378(n+1)%A348044(A191002(n+1))`
-/

namespace A329615.P3261334500671520079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329378 (n + 1)) (A348044 (A191002 (n + 1)).toNat)

end

end A329615.P3261334500671520079

namespace A329615

/-- `A329378(n+1)%A348044(A191002(n+1))` -/
def P3261334500671520079.Spec : Prop :=
  ∀ n, P3261334500671520079.a n = A329615 (n + 1)

end A329615

/-!
# A329616: Bitwise-OR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329616, the canonical program `A329616.P252579871882611197` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329616 has offset 1).

The definition of A329616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329616.P3158888279503582884

`A267116(A329600(n+1))`
-/

namespace A329616.P3158888279503582884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A329600 (n + 1)).toNat

end

end A329616.P3158888279503582884

namespace A329616

/-- `A267116(A329600(n+1))` -/
def P3158888279503582884.Spec : Prop :=
  ∀ n, P3158888279503582884.a n = A329616 (n + 1)

end A329616

/-! ## A329616.P10925947540748592850

`A267116(A108951(n+1))`
-/

namespace A329616.P10925947540748592850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A108951 (n + 1)).toNat

end

end A329616.P10925947540748592850

namespace A329616

/-- `A267116(A108951(n+1))` -/
def P10925947540748592850.Spec : Prop :=
  ∀ n, P10925947540748592850.a n = A329616 (n + 1)

end A329616

/-! ## A329616.P252579871882611197

`or(a(A064989(n+1)-1), A001222(n+1))` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329616

/-- `or(a(A064989(n+1)-1), A001222(n+1))` -/
def P252579871882611197.Spec : Prop :=
  ∀ n, P252579871882611197.a n = A329616 (n + 1)

theorem P252579871882611197.correct : P252579871882611197.Spec := by
  intro n
  simp only [A329616, Nat.add_sub_cancel]

end A329616

/-! ## A329616.P6145463711877520927

`A327041(A334032(n+1))`
-/

namespace A329616.P6145463711877520927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A334032 (n + 1)).toNat

end

end A329616.P6145463711877520927

namespace A329616

/-- `A327041(A334032(n+1))` -/
def P6145463711877520927.Spec : Prop :=
  ∀ n, P6145463711877520927.a n = A329616 (n + 1)

end A329616

/-! ## A329616.P1596600356278192627

`or(A061395(A122111(n+1)), A071178(n+1))`
-/

namespace A329616.P1596600356278192627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061395 (A122111 (n + 1)).toNat) (A071178 (n + 1))

end

end A329616.P1596600356278192627

namespace A329616

/-- `or(A061395(A122111(n+1)), A071178(n+1))` -/
def P1596600356278192627.Spec : Prop :=
  ∀ n, P1596600356278192627.a n = A329616 (n + 1)

end A329616

/-! ## A329616.P6448221911602499027

`or(A061395(A153212(n+1)), A071178(n+1))`
-/

namespace A329616.P6448221911602499027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061395 (A153212 (n + 1)).toNat) (A071178 (n + 1))

end

end A329616.P6448221911602499027

namespace A329616

/-- `or(A061395(A153212(n+1)), A071178(n+1))` -/
def P6448221911602499027.Spec : Prop :=
  ∀ n, P6448221911602499027.a n = A329616 (n + 1)

end A329616

/-!
# A329617: Product of distinct exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329617, the canonical program `A329617.P11232025716192906367` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329617 has offset 1).

The definition of A329617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290107, A329600, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329617.P11232025716192906367

`A290107(A329600(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A329617

/-- `A290107(A329600(n+1))` -/
def P11232025716192906367.Spec : Prop :=
  ∀ n, P11232025716192906367.a n = A329617 (n + 1)

theorem P11232025716192906367.correct : P11232025716192906367.Spec := by
  intro n
  simp only [A329617, Nat.add_sub_cancel]

end A329617

/-! ## A329617.P13790317205707481115

`A003963(A329607(n+1))`
-/

namespace A329617.P13790317205707481115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A329607 (n + 1)).toNat

end

end A329617.P13790317205707481115

namespace A329617

/-- `A003963(A329607(n+1))` -/
def P13790317205707481115.Spec : Prop :=
  ∀ n, P13790317205707481115.a n = A329617 (n + 1)

end A329617

/-! ## A329617.P2743299009870359042

`A329382(A071364(n+1))`
-/

namespace A329617.P2743299009870359042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A071364 (n + 1)).toNat

end

end A329617.P2743299009870359042

namespace A329617

/-- `A329382(A071364(n+1))` -/
def P2743299009870359042.Spec : Prop :=
  ∀ n, P2743299009870359042.a n = A329617 (n + 1)

end A329617

/-! ## A329617.P15175661791816918921

`A156061(A329607(n+1)+A000007(n))`
-/

namespace A329617.P15175661791816918921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A329607 (n + 1) + A000007 n).toNat

end

end A329617.P15175661791816918921

namespace A329617

/-- `A156061(A329607(n+1)+A000007(n))` -/
def P15175661791816918921.Spec : Prop :=
  ∀ n, P15175661791816918921.a n = A329617 (n + 1)

end A329617

/-! ## A329617.P1364167692621074173

`A156061(A322865(n+1))`
-/

namespace A329617.P1364167692621074173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A322865 (n + 1)).toNat

end

end A329617.P1364167692621074173

namespace A329617

/-- `A156061(A322865(n+1))` -/
def P1364167692621074173.Spec : Prop :=
  ∀ n, P1364167692621074173.a n = A329617 (n + 1)

end A329617

/-! ## A329617.P6717352609106930290

`∏{p}[A122111(n+1), A000720(#)]`
-/

namespace A329617.P6717352609106930290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A329617.P6717352609106930290

namespace A329617

/-- `∏{p}[A122111(n+1), A000720(#)]` -/
def P6717352609106930290.Spec : Prop :=
  ∀ n, P6717352609106930290.a n = A329617 (n + 1)

end A329617

/-!
# A329618: a(n) = gcd(A001222(n), A324888(n)), where A324888(n) is the minimal number of primorials (A002110) that add to A108951(n).

The programs for A329618, the canonical program `A329618.P9436330837344439563` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329618 has offset 1).

The definition of A329618 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A324888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329618.P9436330837344439563

`gcd(A001222(n+1), A324888(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329618

/-- `gcd(A001222(n+1), A324888(n+1))` -/
def P9436330837344439563.Spec : Prop :=
  ∀ n, (P9436330837344439563.a n : ℤ) = A329618 (n + 1)

theorem P9436330837344439563.correct : P9436330837344439563.Spec := by
  intro n
  simp only [A329618, Nat.add_sub_cancel]

end A329618

/-! ## A329618.P14004415193818788190

`gcd(Δ[A022559(n)], A324888(n+1))`
-/

namespace A329618.P14004415193818788190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A324888 (n + 1))

end

end A329618.P14004415193818788190

namespace A329618

/-- `gcd(Δ[A022559(n)], A324888(n+1))` -/
def P14004415193818788190.Spec : Prop :=
  ∀ n, (P14004415193818788190.a n : ℤ) = A329618 (n + 1)

end A329618

/-! ## A329618.P6276980967322418731

`gcd(A028310(A324888(n+1)), A086436(n+1))`
-/

namespace A329618.P6276980967322418731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A324888 (n + 1)).toNat) (A086436 (n + 1))

end

end A329618.P6276980967322418731

namespace A329618

/-- `gcd(A028310(A324888(n+1)), A086436(n+1))` -/
def P6276980967322418731.Spec : Prop :=
  ∀ n, (P6276980967322418731.a n : ℤ) = A329618 (n + 1)

end A329618

/-! ## A329618.P2307182546793683428

`gcd(A144494(n+1), A324888(A000027(n+1)))`
-/

namespace A329618.P2307182546793683428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144494 (n + 1)) (A324888 (A000027 (n + 1)).toNat)

end

end A329618.P2307182546793683428

namespace A329618

/-- `gcd(A144494(n+1), A324888(A000027(n+1)))` -/
def P2307182546793683428.Spec : Prop :=
  ∀ n, (P2307182546793683428.a n : ℤ) = A329618 (n + 1)

end A329618

/-! ## A329618.P12774990327699366698

`gcd(A073093(n+1)-1, A249817(A324888(n+1)))`
-/

namespace A329618.P12774990327699366698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073093 (n + 1) - 1) (A249817 (A324888 (n + 1)).toNat)

end

end A329618.P12774990327699366698

namespace A329618

/-- `gcd(A073093(n+1)-1, A249817(A324888(n+1)))` -/
def P12774990327699366698.Spec : Prop :=
  ∀ n, (P12774990327699366698.a n : ℤ) = A329618 (n + 1)

end A329618

/-!
# A329619: Difference between the maximal digit value used when A108951(n) is written in primorial base and its 2-adic valuation.

The programs for A329619, there is no canonical definition to state claims against.
-/

/-! ## A329619.P6068569894164356272

`A329344(n+1)-A001222(n+1)`
-/

namespace A329619.P6068569894164356272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1) - A001222 (n + 1)

end

end A329619.P6068569894164356272

/-! ## A329619.P16143843368956372801

`A329344(n+1)-Δ[A022559(n)]`
-/

namespace A329619.P16143843368956372801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1) - (f1 (n + 1) - f1 n)

end

end A329619.P16143843368956372801

/-! ## A329619.P8074257320309904099

`A329344(n+1)-∑{d}[n+1, A070039(A014963(#))]`
-/

namespace A329619.P8074257320309904099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A070039 (A014963 d).toNat

end

end A329619.P8074257320309904099

/-! ## A329619.P2851561905596801449

`A329344(n+1)+A331289(n+1)-A329348(n+1)`
-/

namespace A329619.P2851561905596801449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1) + (A331289 (n + 1) - A329348 (n + 1))

end

end A329619.P2851561905596801449

/-! ## A329619.P11736274626238055047

`A329344(n+1)-A051903(A108951(A046523(n+1)))`
-/

namespace A329619.P11736274626238055047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1) - A051903 (A108951 (A046523 (n + 1)).toNat).toNat

end

end A329619.P11736274626238055047

/-!
# A329620: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A046523(n), A246277(A324886(n))].

The programs for A329620, there is no canonical definition to state claims against.
-/

/-! ## A329620.P7798626372261102574

`A300246(n+1)-A037288(A363941(2*(n+1)))`
-/

namespace A329620.P7798626372261102574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300246 (n + 1) - A037288 (A363941 (2 * (n + 1))).toNat

end

end A329620.P7798626372261102574

/-! ## A329620.P537979668861694061

`and(A300246(n+1), A349820(n+1))`
-/

namespace A329620.P537979668861694061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300246 (n + 1)) (A349820 (n + 1))

end

end A329620.P537979668861694061

/-! ## A329620.P10532124557123320232

`A300246(n+1)+A000007(A015951(n+1))`
-/

namespace A329620.P10532124557123320232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300246 (n + 1) + A000007 (A015951 (n + 1)).toNat

end

end A329620.P10532124557123320232

/-!
# A329621: a(n) = gcd(A056239(n), A324888(n)) = gcd(A001222(A108951(n)), A001222(A324886(n))).

The programs for A329621, the canonical program `A329621.P7387511581687043559` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329621 has offset 1).

The definition of A329621 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A324888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329621.P7387511581687043559

`gcd(A056239(n+1), A324888(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329621

/-- `gcd(A056239(n+1), A324888(n+1))` -/
def P7387511581687043559.Spec : Prop :=
  ∀ n, (P7387511581687043559.a n : ℤ) = A329621 (n + 1)

theorem P7387511581687043559.correct : P7387511581687043559.Spec := by
  intro n
  simp only [A329621, Nat.add_sub_cancel]

end A329621

/-! ## A329621.P1198062587794069494

`gcd(A028310(A056239(n+1)), A329622(n+1))`
-/

namespace A329621.P1198062587794069494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A056239 (n + 1)).toNat) (A329622 (n + 1))

end

end A329621.P1198062587794069494

namespace A329621

/-- `gcd(A028310(A056239(n+1)), A329622(n+1))` -/
def P1198062587794069494.Spec : Prop :=
  ∀ n, (P1198062587794069494.a n : ℤ) = A329621 (n + 1)

end A329621

/-! ## A329621.P9887355552150885195

`gcd(A316436(2*(n+1))-1, A028310(A324888(n+1)))`
-/

namespace A329621.P9887355552150885195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316436 (2 * (n + 1)) - 1) (A028310 (A324888 (n + 1)).toNat)

end

end A329621.P9887355552150885195

namespace A329621

/-- `gcd(A316436(2*(n+1))-1, A028310(A324888(n+1)))` -/
def P9887355552150885195.Spec : Prop :=
  ∀ n, (P9887355552150885195.a n : ℤ) = A329621 (n + 1)

end A329621

/-! ## A329621.P6617304376976939294

`gcd(A318994(n+1)-A001222(n+1), A324888(A028242(2*n)))`
-/

namespace A329621.P6617304376976939294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318994 (n + 1) - A001222 (n + 1)) (A324888 (A028242 (2 * n)).toNat)

end

end A329621.P6617304376976939294

namespace A329621

/-- `gcd(A318994(n+1)-A001222(n+1), A324888(A028242(2*n)))` -/
def P6617304376976939294.Spec : Prop :=
  ∀ n, (P6617304376976939294.a n : ℤ) = A329621 (n + 1)

end A329621

/-! ## A329621.P8408201473236113568

`gcd(-A329622(n+1), log2(A248692(n+1)))`
-/

namespace A329621.P8408201473236113568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A329622 (n + 1)) (SequenceMachineLib.roundAway (Real.logb 2 (A248692 (n + 1) : ℝ)))

end

end A329621.P8408201473236113568

namespace A329621

/-- `gcd(-A329622(n+1), log2(A248692(n+1)))` -/
def P8408201473236113568.Spec : Prop :=
  ∀ n, (P8408201473236113568.a n : ℤ) = A329621 (n + 1)

end A329621

/-!
# A329622: a(n) = A056239(n) - A324888(n) = A001222(A108951(n)) - A001222(A324886(n)).

The programs for A329622, the canonical program `A329622.P7903740635264919835` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329622 has offset 1).

The definition of A329622 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A324888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329622.P7903740635264919835

`A056239(n+1)-A324888(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329622

/-- `A056239(n+1)-A324888(n+1)` -/
def P7903740635264919835.Spec : Prop :=
  ∀ n, P7903740635264919835.a n = A329622 (n + 1)

theorem P7903740635264919835.correct : P7903740635264919835.Spec := by
  intro n
  simp only [A329622, Nat.add_sub_cancel]

end A329622

/-! ## A329622.P14768959217488696858

`A001222(A108951(n+1))-A001222(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329622.P14768959217488696858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (n + 1)).toNat - A001222 (A324886 (n + 1)).toNat

end

end A329622.P14768959217488696858

namespace A329622

/-- `A001222(A108951(n+1))-A001222(A324886(n+1))` -/
def P14768959217488696858.Spec : Prop :=
  ∀ n, P14768959217488696858.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P15350220050317194947

`n+1-A178503(n+1)-A324888(n+1)`
-/

namespace A329622.P15350220050317194947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1) - A324888 (n + 1)

end

end A329622.P15350220050317194947

namespace A329622

/-- `n+1-A178503(n+1)-A324888(n+1)` -/
def P15350220050317194947.Spec : Prop :=
  ∀ n, P15350220050317194947.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P8672892470957606067

`A304739(A064664(n+1))-A324888(n+1)`
-/

namespace A329622.P8672892470957606067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat - A324888 (n + 1)

end

end A329622.P8672892470957606067

namespace A329622

/-- `A304739(A064664(n+1))-A324888(n+1)` -/
def P8672892470957606067.Spec : Prop :=
  ∀ n, P8672892470957606067.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P5494515038580493889

`A001222(n+1)+A318995(n+1)-A324888(n+1)`
-/

namespace A329622.P5494515038580493889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A318995 (n + 1) - A324888 (n + 1))

end

end A329622.P5494515038580493889

namespace A329622

/-- `A001222(n+1)+A318995(n+1)-A324888(n+1)` -/
def P5494515038580493889.Spec : Prop :=
  ∀ n, P5494515038580493889.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P1373570228081571775

`A318994(n+1)-(A324888(n+1)+A001222(n+1))`
-/

namespace A329622.P1373570228081571775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - (A324888 (n + 1) + A001222 (n + 1))

end

end A329622.P1373570228081571775

namespace A329622

/-- `A318994(n+1)-(A324888(n+1)+A001222(n+1))` -/
def P1373570228081571775.Spec : Prop :=
  ∀ n, P1373570228081571775.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P2722082348334896149

`A297113(n+1)+A325166(n+1)-A324888(n+1)`
-/

namespace A329622.P2722082348334896149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + (A325166 (n + 1) - A324888 (n + 1))

end

end A329622.P2722082348334896149

namespace A329622

/-- `A297113(n+1)+A325166(n+1)-A324888(n+1)` -/
def P2722082348334896149.Spec : Prop :=
  ∀ n, P2722082348334896149.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P16746684693474837197

`log2(A248692(n+1))-A324888(n+1)`
-/

namespace A329622.P16746684693474837197
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) - (A324888 (n + 1) : ℝ)

end

end A329622.P16746684693474837197

namespace A329622

/-- `log2(A248692(n+1))-A324888(n+1)` -/
def P16746684693474837197.Spec : Prop :=
  ∀ n, P16746684693474837197.a n = (A329622 (n + 1) : ℝ)

end A329622

/-! ## A329622.P11119737000556504116

`A318995(A003961(n+1))-A324888(n+1)`
-/

namespace A329622.P11119737000556504116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat - A324888 (n + 1)

end

end A329622.P11119737000556504116

namespace A329622

/-- `A318995(A003961(n+1))-A324888(n+1)` -/
def P11119737000556504116.Spec : Prop :=
  ∀ n, P11119737000556504116.a n = A329622 (n + 1)

end A329622

/-! ## A329622.P9426972303530359026

`A318995(A045965(n+1))-A324888(n+1)`
-/

namespace A329622.P9426972303530359026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat - A324888 (n + 1)

end

end A329622.P9426972303530359026

namespace A329622

/-- `A318995(A045965(n+1))-A324888(n+1)` -/
def P9426972303530359026.Spec : Prop :=
  ∀ n, P9426972303530359026.a n = A329622 (n + 1)

end A329622

/-!
# A329623: The absolute value of the difference between n and A053392(n), the concatenation of the sums of every pair of consecutive digits of n.

The programs for A329623, there is no canonical definition to state claims against.
-/

/-! ## A329623.P2700581365566601660

`abs(n-A053392(n))`
-/

namespace A329623.P2700581365566601660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A053392 n|

end

end A329623.P2700581365566601660

/-! ## A329623.P13863998418437433324

`A064876((n-A053392(n))²)`
-/

namespace A329623.P13863998418437433324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (((n : ℤ) - A053392 n) ^ 2).toNat

end

end A329623.P13863998418437433324

/-! ## A329623.P261935037020189602

`n-A007953(A307560(A093882(n)))`
-/

namespace A329623.P261935037020189602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 (A307560 (A093882 n).toNat).toNat

end

end A329623.P261935037020189602

/-! ## A329623.P17162305161711852476

`n-A062329(A051022(n))`
-/

namespace A329623.P17162305161711852476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A062329 (A051022 n).toNat

end

end A329623.P17162305161711852476

/-! ## A329623.P4695978809130097869

`∏{digits}[A087052(A087052(n)), #]`
-/

namespace A329623.P4695978809130097869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A087052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A329623.P4695978809130097869

/-! ## A329623.P9401772251767860071

`A334387(A334387(n)+A053392(n))`
-/

namespace A329623.P9401772251767860071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 (A334387 n + A053392 n).toNat

end

end A329623.P9401772251767860071

/-! ## A329623.P11601340501050320592

`n-log2(A113010(n))`
-/

namespace A329623.P11601340501050320592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A113010 n : ℝ)

end

end A329623.P11601340501050320592

/-!
# A329624: Number of iterations of A329623 for starting value n before a repeated value appears, or -1 if this never happens.

The programs for A329624, the canonical program `A329624.P3166854944000482372` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329624 has offset 1).

The definition of A329624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329624.P15132291255051284921

`A122953(2^A059995(n+1))`
-/

namespace A329624.P15132291255051284921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122953 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059995 (n + 1) : ℤ))).toNat

end

end A329624.P15132291255051284921

namespace A329624

/-- `A122953(2^A059995(n+1))` -/
def P15132291255051284921.Spec : Prop :=
  ∀ n, P15132291255051284921.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P682074770431483225

`A000005(3^A059995(n+1))`
-/

namespace A329624.P682074770431483225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A059995 (n + 1) : ℤ))).toNat

end

end A329624.P682074770431483225

namespace A329624

/-- `A000005(3^A059995(n+1))` -/
def P682074770431483225.Spec : Prop :=
  ∀ n, P682074770431483225.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P3166854944000482372

`A000005(A108411(floor((n+1)/5)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329624

/-- `A000005(A108411(floor((n+1)/5)))` -/
def P3166854944000482372.Spec : Prop :=
  ∀ n, P3166854944000482372.a n = A329624 (n + 1)

theorem P3166854944000482372.correct : P3166854944000482372.Spec := by
  intro n
  simp only [A329624, Nat.add_sub_cancel]

end A329624

/-! ## A329624.P758185013306332751

`A000005(A000244(floor((n+1)/10)))`
-/

namespace A329624.P758185013306332751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000244 ⌊(n + 1 : ℚ) / 10⌋.toNat).toNat

end

end A329624.P758185013306332751

namespace A329624

/-- `A000005(A000244(floor((n+1)/10)))` -/
def P758185013306332751.Spec : Prop :=
  ∀ n, P758185013306332751.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P5116221878764528653

`A000005(∏[A132972(val(n+1, 10))])`
-/

namespace A329624.P5116221878764528653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132972 (SequenceMachineLib.valuation (n + 1) 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329624.P5116221878764528653

namespace A329624

/-- `A000005(∏[A132972(val(n+1, 10))])` -/
def P5116221878764528653.Spec : Prop :=
  ∀ n, P5116221878764528653.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P14010319339044906078

`A000005(∏[A244540(val(n+1, 10))])`
-/

namespace A329624.P14010319339044906078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 (SequenceMachineLib.valuation (n + 1) 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329624.P14010319339044906078

namespace A329624

/-- `A000005(∏[A244540(val(n+1, 10))])` -/
def P14010319339044906078.Spec : Prop :=
  ∀ n, P14010319339044906078.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P4434792780161475387

`A000005(∏[A303822(val(n+1, 10)+1)])`
-/

namespace A329624.P4434792780161475387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (SequenceMachineLib.valuation (n + 1) 10 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329624.P4434792780161475387

namespace A329624

/-- `A000005(∏[A303822(val(n+1, 10)+1)])` -/
def P4434792780161475387.Spec : Prop :=
  ∀ n, P4434792780161475387.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P15095699716816882991

`A345992(A014442(n+1))+A059995(n+1)`
-/

namespace A329624.P15095699716816882991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (A014442 (n + 1)).toNat + A059995 (n + 1)

end

end A329624.P15095699716816882991

namespace A329624

/-- `A345992(A014442(n+1))+A059995(n+1)` -/
def P15095699716816882991.Spec : Prop :=
  ∀ n, P15095699716816882991.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P6069258032263099787

`A008619(floor((n+1)/5)%A202587(n+1))`
-/

namespace A329624.P6069258032263099787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod ⌊(n + 1 : ℚ) / 5⌋ (A202587 (n + 1))).toNat

end

end A329624.P6069258032263099787

namespace A329624

/-- `A008619(floor((n+1)/5)%A202587(n+1))` -/
def P6069258032263099787.Spec : Prop :=
  ∀ n, P6069258032263099787.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P15329912518810745796

`ceil((A337279(A337279(n+1))+n+1)/10)`
-/

namespace A329624.P15329912518810745796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337279 (A337279 (n + 1)).toNat + (n + 1 : ℤ) : ℚ) / 10⌉

end

end A329624.P15329912518810745796

namespace A329624

/-- `ceil((A337279(A337279(n+1))+n+1)/10)` -/
def P15329912518810745796.Spec : Prop :=
  ∀ n, P15329912518810745796.a n = A329624 (n + 1)

end A329624

/-! ## A329624.P9950460330382443296

`∑[A051493(Δ[A095827(n+1)]+2)]`
-/

namespace A329624.P9950460330382443296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329624.P9950460330382443296

namespace A329624

/-- `∑[A051493(Δ[A095827(n+1)]+2)]` -/
def P9950460330382443296.Spec : Prop :=
  ∀ n, P9950460330382443296.a n = A329624 (n + 1)

end A329624

/-!
# A329625: Smallest BII-number of a connected set-system with n edges.

The programs for A329625, there is no canonical definition to state claims against.
-/

/-! ## A329625.P2980771529559699133

`or(a(n-1), A045663(n))` with `a(0)=0, a(1)=1`
-/

namespace A329625.P2980771529559699133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a (n - 1)) (A045663 n)

end

end A329625.P2980771529559699133

/-! ## A329625.P11637578963256029458

`A089633(∑[A160017(n)])`
-/

namespace A329625.P11637578963256029458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329625.P11637578963256029458

/-! ## A329625.P12551135475291817539

`A089633(∑[A266089(n)])`
-/

namespace A329625.P12551135475291817539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329625.P12551135475291817539

/-! ## A329625.P17566931100945871539

`A230445(∑[A160017(n)])`
-/

namespace A329625.P17566931100945871539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329625.P17566931100945871539

/-! ## A329625.P11525051395193569974

`∑[A131577(A266154(n))]`
-/

namespace A329625.P11525051395193569974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A266154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329625.P11525051395193569974

/-!
# A329626: Smallest BII-number of an antichain with n edges.

The programs for A329626, there is no canonical definition to state claims against.
-/

/-! ## A329626.P10782184387308790589

`A072639(n)%A345556(A218298(n))`
-/

namespace A329626.P10782184387308790589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072639 n) (A345556 (A218298 n).toNat)

end

end A329626.P10782184387308790589

/-! ## A329626.P6036588372411145599

`xor(A006530(A154828(n)), A181187(n+1))`
-/

namespace A329626.P6036588372411145599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006530 (A154828 n).toNat) (A181187 (n + 1))

end

end A329626.P6036588372411145599

/-!
# A329627: Smallest BII-number of a clutter (connected antichain) with n edges.

The programs for A329627, there is no canonical definition to state claims against.
-/

/-! ## A329627.P7364094159539930725

`and(A329625(2*n), A329626(A329623(2*n+1)))`
-/

namespace A329627.P7364094159539930725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A329625 (2 * n)) (A329626 (A329623 (2 * n + 1)).toNat)

end

end A329627.P7364094159539930725

/-! ## A329627.P2779412031193287186

`(∑[2^(2*n-n%2)]+1)%A100883(∑[2^(2*n-n%2)])`
-/

namespace A329627.P2779412031193287186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A100883 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat)

end

end A329627.P2779412031193287186

/-!
# A329628: Smallest BII-number of an intersecting antichain with n edges.

The programs for A329628, there is no canonical definition to state claims against.
-/

/-! ## A329628.P9170824392262558439

`A329561(record[∑[A178904(3*n)]])`
-/

namespace A329628.P9170824392262558439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178904 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329628.P9170824392262558439

/-!
# A329629: Products of distinct odd primes of squarefree index.

The programs for A329629, there is no canonical definition to state claims against.
-/

/-! ## A329629.P1842841576286413941

`record[A204455(A302478(n+1))]`
-/

namespace A329629.P1842841576286413941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A302478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329629.P1842841576286413941

/-! ## A329629.P14383746648226899543

`filter[A302478(n+1), A323239(#)]`
-/

namespace A329629.P14383746648226899543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A329629.P14383746648226899543

/-! ## A329629.P592061236856116025

`record[A083346(A302478(n+1)²)]`
-/

namespace A329629.P592061236856116025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A302478 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329629.P592061236856116025

/-! ## A329629.P10591616235687723556

`∩[A056911(n+1), A302478(n+1)]`
-/

namespace A329629.P10591616235687723556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329629.P10591616235687723556

/-! ## A329629.P6227030777826695873

`∪[A074979(n+1), A340019(n+1)]`
-/

namespace A329629.P6227030777826695873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329629.P6227030777826695873

/-! ## A329629.P9470901186257926793

`∪[A107159(n+1), A340019(n+1)]`
-/

namespace A329629.P9470901186257926793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329629.P9470901186257926793

/-! ## A329629.P12556759686948098807

`∪[A124584(n+1), A340019(n+1)]`
-/

namespace A329629.P12556759686948098807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329629.P12556759686948098807

/-! ## A329629.P16823136386396052242

`∪[A140542(n+1), A340019(n+1)]`
-/

namespace A329629.P16823136386396052242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329629.P16823136386396052242

/-! ## A329629.P2862317524891447862

`∪[A302521(n+1), A340019(n+1)]`
-/

namespace A329629.P2862317524891447862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329629.P2862317524891447862

/-!
# A329630: Products of distinct primes of nonprime squarefree index.

The programs for A329630, there is no canonical definition to state claims against.
-/

/-! ## A329630.P360007070038965202

`∩[A302534(n+1), A320628(n+1)]`
-/

namespace A329630.P360007070038965202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329630.P360007070038965202

/-! ## A329630.P16471307068699028611

`∩[A302534(n+1), A340104(n+1)]`
-/

namespace A329630.P16471307068699028611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329630.P16471307068699028611

/-! ## A329630.P9757654037099360478

`∩[A302494(n+1), A320628(n+1)]`
-/

namespace A329630.P9757654037099360478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329630.P9757654037099360478

/-! ## A329630.P14310883737072026450

`∩[A302494(n+1), A340104(n+1)]`
-/

namespace A329630.P14310883737072026450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329630.P14310883737072026450

/-! ## A329630.P11001379941818204462

`∩[A320628(n+1), A382201(n+1)]`
-/

namespace A329630.P11001379941818204462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329630.P11001379941818204462

/-!
# A329631: Irregular triangle read by rows where row n lists the prime indices of the n-th squarefree number.

The programs for A329631, there is no canonical definition to state claims against.
-/

/-! ## A329631.P3020495636910523435

`A000720(A265668(n+2))`
-/

namespace A329631.P3020495636910523435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A265668 (n + 2)).toNat

end

end A329631.P3020495636910523435

/-! ## A329631.P18311877444559404885

`A055396(A265668(n+2)²)`
-/

namespace A329631.P18311877444559404885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A265668 (n + 2) ^ 2).toNat

end

end A329631.P18311877444559404885

/-! ## A329631.P11236023942247129835

`A061395(A265668(n+2)²)`
-/

namespace A329631.P11236023942247129835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A265668 (n + 2) ^ 2).toNat

end

end A329631.P11236023942247129835

/-! ## A329631.P4008544344603780999

`A003963(p?[A265668(n+1)])`
-/

namespace A329631.P4008544344603780999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P4008544344603780999

/-! ## A329631.P17265097633895266728

`A026233(p?[A265668(n+1)])`
-/

namespace A329631.P17265097633895266728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P17265097633895266728

/-! ## A329631.P12621965172610647891

`A026238(p?[A265668(n+1)])`
-/

namespace A329631.P12621965172610647891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P12621965172610647891

/-! ## A329631.P4281102798664473930

`A049084(p?[A265668(n+1)])`
-/

namespace A329631.P4281102798664473930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P4281102798664473930

/-! ## A329631.P664914578810700869

`A055396(p?[A265668(n+1)])`
-/

namespace A329631.P664914578810700869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P664914578810700869

/-! ## A329631.P4496031347175690438

`A056239(p?[A265668(n+1)])`
-/

namespace A329631.P4496031347175690438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P4496031347175690438

/-! ## A329631.P14616333406053143674

`A058933(p?[A265668(n+1)])`
-/

namespace A329631.P14616333406053143674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329631.P14616333406053143674

/-!
# A329632: Number of connected integer partitions of n whose distinct parts are pairwise indivisible.

The programs for A329632, there is no canonical definition to state claims against.
-/

/-! ## A329632.P4415680844845206643

`A328871(n)-A001221(A011782(n))`
-/

namespace A329632.P4415680844845206643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328871 n - A001221 (A011782 n).toNat

end

end A329632.P4415680844845206643

/-! ## A329632.P2777262767131160078

`A328871(n)-A049240(A056040(n))`
-/

namespace A329632.P2777262767131160078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328871 n - A049240 (A056040 n).toNat

end

end A329632.P2777262767131160078

/-! ## A329632.P14343067870445197708

`A082023(n)+A003989(A008663(n))`
-/

namespace A329632.P14343067870445197708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n + A003989 (A008663 n).toNat

end

end A329632.P14343067870445197708

/-! ## A329632.P13633751045613050637

`A331991(n+1)-A178798(A123975(n+1))`
-/

namespace A329632.P13633751045613050637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) - A178798 (A123975 (n + 1)).toNat

end

end A329632.P13633751045613050637

/-! ## A329632.P217310339616924104

`A002024(A328187(n))%A324517(3*n+4)`
-/

namespace A329632.P217310339616924104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A328187 n).toNat) (A324517 (3 * n + 4))

end

end A329632.P217310339616924104

/-!
# A329634: Numbers that are sums of consecutive centered tetrahedral numbers (A005894).

The programs for A329634, there is no canonical definition to state claims against.
-/

/-! ## A329634.P4411245722310066755

`A143130(A038722(n+1)*A061603(n))`
-/

namespace A329634.P4411245722310066755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (A038722 (n + 1) * A061603 n).toNat

end

end A329634.P4411245722310066755

/-! ## A329634.P5489464509250226000

`A143130(A038722(n+1)^A061603(n))`
-/

namespace A329634.P5489464509250226000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A061603 n : ℤ))).toNat

end

end A329634.P5489464509250226000

/-! ## A329634.P7873009577157599015

`A143130(lcm(A038722(n+1), A061603(n)))`
-/

namespace A329634.P7873009577157599015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (Int.lcm (A038722 (n + 1)) (A061603 n))

end

end A329634.P7873009577157599015

/-!
# A329635: Numbers that are sums of consecutive centered octahedral numbers (A001845).

The programs for A329635, there is no canonical definition to state claims against.
-/

/-! ## A329635.P1573421005048137764

`(A329636(n+1)+A143130(A038722(n+1)*A061603(n)))/2`
-/

namespace A329635.P1573421005048137764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329636 (n + 1) + A143130 (A038722 (n + 1) * A061603 n).toNat : ℚ) / 2

end

end A329635.P1573421005048137764

/-! ## A329635.P16145735462057547792

`(A329636(n+1)+A143130(A038722(n+1)^A061603(n)))/2`
-/

namespace A329635.P16145735462057547792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329636 (n + 1) + A143130 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A061603 n : ℤ))).toNat : ℚ) / 2

end

end A329635.P16145735462057547792

/-!
# A329637: Square array A(n, k) = A329644(prime(n)^k), read by falling antidiagonals: (1,1), (1,2), (2,1), (1,3), (2,2), (3,1), ...

The programs for A329637, there is no canonical definition to state claims against.
-/

/-! ## A329637.P3735973152346736743

`A329644(A182944(n+1))`
-/

namespace A329637.P3735973152346736743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329644 (A182944 (n + 1)).toNat

end

end A329637.P3735973152346736743

/-! ## A329637.P13213931627582827726

`A329644(A037126(n+1)^A004736(n+1))`
-/

namespace A329637.P13213931627582827726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329644 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat

end

end A329637.P13213931627582827726

/-!
# A329638: Sum of A329644(d) for all such divisors d of n for which that value is positive. Here A329644 is the Möbius transform of A323244, the deficiency of A156552(n).

The programs for A329638, there is no canonical definition to state claims against.
-/

/-! ## A329638.P5231451222469956428

`A323244(n+1)+A329639(n+1)`
-/

namespace A329638.P5231451222469956428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + A329639 (n + 1)

end

end A329638.P5231451222469956428

/-! ## A329638.P6477839415492304450

`A001222(n+1)+A329639(n+1)+A323248(n+1)`
-/

namespace A329638.P6477839415492304450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A329639 (n + 1) + A323248 (n + 1))

end

end A329638.P6477839415492304450

/-! ## A329638.P10417255425392057610

`A329639(n+1)+A329645(n+1)-A329646(n+1)`
-/

namespace A329638.P10417255425392057610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1) + (A329645 (n + 1) - A329646 (n + 1))

end

end A329638.P10417255425392057610

/-! ## A329638.P6495309524102887530

`A329639(n+1)+A323243(n+1)-2*A324865(n+1)`
-/

namespace A329638.P6495309524102887530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1) + (A323243 (n + 1) - 2 * A324865 (n + 1))

end

end A329638.P6495309524102887530

/-! ## A329638.P16191708316901499645

`A329639(n+1)+2*A324716(n+1)-A324713(n+1)`
-/

namespace A329638.P16191708316901499645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1) + (2 * A324716 (n + 1) - A324713 (n + 1))

end

end A329638.P16191708316901499645

/-! ## A329638.P1365014785509871326

`A329639(n+1)+A324575(A332462(n+1))`
-/

namespace A329638.P1365014785509871326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1) + A324575 (A332462 (n + 1)).toNat

end

end A329638.P1365014785509871326

/-!
# A329639: Sum of -A329644(d) for all such divisors d of n for which A329644(d) < 0. Here A329644 is the Möbius transform of A323244, the deficiency of A156552(n).

The programs for A329639, there is no canonical definition to state claims against.
-/

/-! ## A329639.P687246703371644158

`A329638(n+1)-A323244(n+1)`
-/

namespace A329639.P687246703371644158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - A323244 (n + 1)

end

end A329639.P687246703371644158

/-! ## A329639.P13206633744762949622

`A329638(n+1)-∑{d}[n+1, A329644(#)]`
-/

namespace A329639.P13206633744762949622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A329644 d

end

end A329639.P13206633744762949622

/-! ## A329639.P13647213832036286467

`A329638(n+1)-(A323248(n+1)+A001222(n+1))`
-/

namespace A329639.P13647213832036286467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - (A323248 (n + 1) + A001222 (n + 1))

end

end A329639.P13647213832036286467

/-! ## A329639.P17438170463350792224

`A329638(n+1)+A329646(n+1)-A329645(n+1)`
-/

namespace A329639.P17438170463350792224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) + (A329646 (n + 1) - A329645 (n + 1))

end

end A329639.P17438170463350792224

/-! ## A329639.P4460179280140671274

`A324865(n+1)+A329638(n+1)-A156552(n+1)`
-/

namespace A329639.P4460179280140671274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1) + (A329638 (n + 1) - A156552 (n + 1))

end

end A329639.P4460179280140671274

/-! ## A329639.P3623932190730844795

`A329638(n+1)-(2*A156552(n+1)-A323243(n+1))`
-/

namespace A329639.P3623932190730844795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - (2 * A156552 (n + 1) - A323243 (n + 1))

end

end A329639.P3623932190730844795

/-! ## A329639.P15990002569126362082

`A329638(n+1)-(A324716(n+1)+A324815(n+1)-A323243(n+1))`
-/

namespace A329639.P15990002569126362082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - (A324716 (n + 1) + (A324815 (n + 1) - A323243 (n + 1)))

end

end A329639.P15990002569126362082

/-! ## A329639.P2577694017215693497

`A329638(n+1)-(2*A324716(n+1)-A324713(n+1))`
-/

namespace A329639.P2577694017215693497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - (2 * A324716 (n + 1) - A324713 (n + 1))

end

end A329639.P2577694017215693497

/-! ## A329639.P6219332423998734312

`A329638(n+1)-A324575(A332462(n+1))`
-/

namespace A329639.P6219332423998734312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) - A324575 (A332462 (n + 1)).toNat

end

end A329639.P6219332423998734312

/-!
# A329640: Numbers n for which A329639(n) is equal to gcd(A329638(n), A329639(n)).

The programs for A329640, there is no canonical definition to state claims against.
-/

/-! ## A329640.P1405177021498910882

`eq[A329639(n+1), A329641(n+1)]+1`
-/

namespace A329640.P1405177021498910882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329640.P1405177021498910882

/-!
# A329641: a(n) = gcd(A329638(n), A329639(n)).

The programs for A329641, there is no canonical definition to state claims against.
-/

/-! ## A329641.P8111087652941218654

`gcd(A329638(n+1), A329639(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329641.P8111087652941218654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329638 (n + 1)) (A329639 (n + 1))

end

end A329641.P8111087652941218654

/-! ## A329641.P18071365333513390488

`A323244(n+1)^A055749(A329638(n+1)-A323244(n+1))`
-/

namespace A329641.P18071365333513390488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323244 (n + 1) : ℚ) ^ (A055749 (A329638 (n + 1) - A323244 (n + 1)).toNat : ℤ)

end

end A329641.P18071365333513390488

/-! ## A329641.P16613464540668468204

`A323244(n+1)^A228360(A348717(3*n+4))`
-/

namespace A329641.P16613464540668468204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323244 (n + 1) : ℚ) ^ (A228360 (A348717 (3 * n + 4)).toNat : ℤ)

end

end A329641.P16613464540668468204

/-!
# A329642: a(n) = Sum_{d|n} [1 == A008683(n/d)] * A323244(d), where A323244(x) gives the deficiency of A156552(x).

The programs for A329642, there is no canonical definition to state claims against.
-/

/-! ## A329642.P5733287734893903392

`A329643(n+1)+A329644(n+1)`
-/

namespace A329642.P5733287734893903392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329643 (n + 1) + A329644 (n + 1)

end

end A329642.P5733287734893903392

/-! ## A329642.P15054068818624177580

`∑{d}[n+1, A007875(#)*A329644((n+1)/#)]`
-/

namespace A329642.P15054068818624177580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A329644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329642.P15054068818624177580

/-! ## A329642.P4432748852697277800

`∑{d}[n+1, A008683(#)*A329645((n+1)/#)]`
-/

namespace A329642.P4432748852697277800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A329645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329642.P4432748852697277800

/-! ## A329642.P17005755842751331528

`∑{d}[n+1, A323244(#)*A353629((n+1)/#)]`
-/

namespace A329642.P17005755842751331528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323244 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329642.P17005755842751331528

/-! ## A329642.P600336205373773824

`A329643(n+1)+2*A297112(n+1)-A324543(n+1)`
-/

namespace A329642.P600336205373773824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329643 (n + 1) + (2 * A297112 (n + 1) - A324543 (n + 1))

end

end A329642.P600336205373773824

/-! ## A329642.P4568267432607960422

`A297112(A003961(n+1))+A329643(n+1)-A324543(n+1)`
-/

namespace A329642.P4568267432607960422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A003961 (n + 1)).toNat + (A329643 (n + 1) - A324543 (n + 1))

end

end A329642.P4568267432607960422

/-!
# A329643: a(n) = Sum_{d|n} [-1 == A008683(n/d)] * A323244(d), where A323244(x) gives the deficiency of A156552(x).

The programs for A329643, there is no canonical definition to state claims against.
-/

/-! ## A329643.P7563681256669300972

`A329642(n+1)-A329644(n+1)`
-/

namespace A329643.P7563681256669300972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329642 (n + 1) - A329644 (n + 1)

end

end A329643.P7563681256669300972

/-! ## A329643.P15107788540958587478

`∑{d}[n+1, A008683(#)*A329646((n+1)/#)]`
-/

namespace A329643.P15107788540958587478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A329646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329643.P15107788540958587478

/-! ## A329643.P8223838236125839553

`∑{d}[n+1, A252233(#)*A323244((n+1)/#)]`
-/

namespace A329643.P8223838236125839553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252233 d * A323244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329643.P8223838236125839553

/-! ## A329643.P1270511692585960608

`∑{d}[n+1, A007875(#)*A329644((n+1)/#)]-A329644(n+1)`
-/

namespace A329643.P1270511692585960608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A329644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A329644 (n + 1)

end

end A329643.P1270511692585960608

/-! ## A329643.P2813028303582965918

`A329642(n+1)-(2*A297112(n+1)-A324543(n+1))`
-/

namespace A329643.P2813028303582965918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329642 (n + 1) - (2 * A297112 (n + 1) - A324543 (n + 1))

end

end A329643.P2813028303582965918

/-! ## A329643.P11589933587262892179

`∑{p}[A349593(A001105(n+1)), A323244((n+1)/#)]`
-/

namespace A329643.P11589933587262892179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 (A001105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A329643.P11589933587262892179

/-!
# A329644: Möbius transform of A323244, the deficiency of A156552(n).

The programs for A329644, there is no canonical definition to state claims against.
-/

/-! ## A329644.P6737885851505587317

`A329642(n+1)-A329643(n+1)`
-/

namespace A329644.P6737885851505587317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329642 (n + 1) - A329643 (n + 1)

end

end A329644.P6737885851505587317

/-! ## A329644.P7849236370520054180

`2*A297112(n+1)-A324543(n+1)`
-/

namespace A329644.P7849236370520054180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297112 (n + 1) - A324543 (n + 1)

end

end A329644.P7849236370520054180

/-! ## A329644.P9314935913222113713

`∑{d}[n+1, A008683(#)*A323244((n+1)/#)]`
-/

namespace A329644.P9314935913222113713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A323244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329644.P9314935913222113713

/-! ## A329644.P12998125826337464047

`A329642(n+1)-∑{d}[n+1, A008683(#)*A329646((n+1)/#)]`
-/

namespace A329644.P12998125826337464047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329642 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A329646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329644.P12998125826337464047

/-! ## A329644.P15433244791097349994

`∑{d}[n+1, A323244(#)*A353629((n+1)/#)]-A329643(n+1)`
-/

namespace A329644.P15433244791097349994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323244 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A329643 (n + 1)

end

end A329644.P15433244791097349994

/-! ## A329644.P16986602379750179451

`A297112(A003961(n+1))-A324543(n+1)`
-/

namespace A329644.P16986602379750179451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (A003961 (n + 1)).toNat - A324543 (n + 1)

end

end A329644.P16986602379750179451

/-!
# A329645: Inverse Möbius transform of A329642.

The programs for A329645, there is no canonical definition to state claims against.
-/

/-! ## A329645.P11986147669965449459

`A323244(n+1)+A329646(n+1)`
-/

namespace A329645.P11986147669965449459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + A329646 (n + 1)

end

end A329645.P11986147669965449459

/-! ## A329645.P7991293976709718203

`∑{d}[n+1, A329642(#)]`
-/

namespace A329645.P7991293976709718203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329642 d

end

end A329645.P7991293976709718203

/-! ## A329645.P2317093527987914564

`∑{d}[n+1, A007875(#)*A323244((n+1)/#)]`
-/

namespace A329645.P2317093527987914564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A323244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329645.P2317093527987914564

/-! ## A329645.P18028511580512611970

`∑{d}[n+1, A018892(#)*A329644((n+1)/#)]`
-/

namespace A329645.P18028511580512611970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d * A329644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329645.P18028511580512611970

/-! ## A329645.P3834814797067357358

`A001222(n+1)+A329646(n+1)+A323248(n+1)`
-/

namespace A329645.P3834814797067357358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A329646 (n + 1) + A323248 (n + 1))

end

end A329645.P3834814797067357358

/-! ## A329645.P7723375158822483190

`A329638(n+1)+A329646(n+1)-A329639(n+1)`
-/

namespace A329645.P7723375158822483190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329638 (n + 1) + (A329646 (n + 1) - A329639 (n + 1))

end

end A329645.P7723375158822483190

/-! ## A329645.P12874099207795497899

`2*A156552(n+1)+A329646(n+1)-A323243(n+1)`
-/

namespace A329645.P12874099207795497899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (n + 1) + (A329646 (n + 1) - A323243 (n + 1))

end

end A329645.P12874099207795497899

/-!
# A329646: Inverse Möbius transform of A329643.

The programs for A329646, there is no canonical definition to state claims against.
-/

/-! ## A329646.P4955454533669978199

`A329645(n+1)-A323244(n+1)`
-/

namespace A329646.P4955454533669978199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329645 (n + 1) - A323244 (n + 1)

end

end A329646.P4955454533669978199

/-! ## A329646.P10993729109083199321

`∑{d}[n+1, A329643(#)]`
-/

namespace A329646.P10993729109083199321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329643 d

end

end A329646.P10993729109083199321

/-! ## A329646.P13470418188262399304

`A329645(n+1)-∑{d}[n+1, A329644(#)]`
-/

namespace A329646.P13470418188262399304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329645 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A329644 d

end

end A329646.P13470418188262399304

/-! ## A329646.P1343457380333550701

`∑{d}[n+1, A063647(#)*A329644((n+1)/#)]`
-/

namespace A329646.P1343457380333550701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063647 d * A329644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A329646.P1343457380333550701

/-! ## A329646.P17224789240990025683

`A329639(n+1)+A329645(n+1)-A329638(n+1)`
-/

namespace A329646.P17224789240990025683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (n + 1) + (A329645 (n + 1) - A329638 (n + 1))

end

end A329646.P17224789240990025683

/-! ## A329646.P17388626779661267799

`A329645(n+1)-(2*A156552(n+1)-A323243(n+1))`
-/

namespace A329646.P17388626779661267799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329645 (n + 1) - (2 * A156552 (n + 1) - A323243 (n + 1))

end

end A329646.P17388626779661267799

/-! ## A329646.P17021657157559894036

`A329645(n+1)-A324575(A332462(n+1))`
-/

namespace A329646.P17021657157559894036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329645 (n + 1) - A324575 (A332462 (n + 1)).toNat

end

end A329646.P17021657157559894036

/-!
# A329647: Bitwise-XOR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

The programs for A329647, the canonical program `A329647.P10763472955733118982` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329647 has offset 1).

The definition of A329647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329647.P10763472955733118982

`A268387(A108951(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A329647

/-- `A268387(A108951(n+1))` -/
def P10763472955733118982.Spec : Prop :=
  ∀ n, P10763472955733118982.a n = A329647 (n + 1)

theorem P10763472955733118982.correct : P10763472955733118982.Spec := by
  intro n
  simp only [A329647, Nat.add_sub_cancel]

end A329647

/-! ## A329647.P80500334947979652

`A045912(A220465(A322827(n)))*A257991(n+1)`
-/

namespace A329647.P80500334947979652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (A220465 (A322827 n).toNat).toNat * A257991 (n + 1)

end

end A329647.P80500334947979652

namespace A329647

/-- `A045912(A220465(A322827(n)))*A257991(n+1)` -/
def P80500334947979652.Spec : Prop :=
  ∀ n, P80500334947979652.a n = A329647 (n + 1)

end A329647

/-! ## A329647.P7477670893826668637

`A055231(A033845(3*n+2))*A257991(n+1)`
-/

namespace A329647.P7477670893826668637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A033845 (3 * n + 2)).toNat * A257991 (n + 1)

end

end A329647.P7477670893826668637

namespace A329647

/-- `A055231(A033845(3*n+2))*A257991(n+1)` -/
def P7477670893826668637.Spec : Prop :=
  ∀ n, P7477670893826668637.a n = A329647 (n + 1)

end A329647

/-! ## A329647.P573116523478759442

`A257991(n+1)+A000122(A240674(3*n+2)+n)`
-/

namespace A329647.P573116523478759442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1) + A000122 (A240674 (3 * n + 2) + (n : ℤ)).toNat

end

end A329647.P573116523478759442

namespace A329647

/-- `A257991(n+1)+A000122(A240674(3*n+2)+n)` -/
def P573116523478759442.Spec : Prop :=
  ∀ n, P573116523478759442.a n = A329647 (n + 1)

end A329647

/-! ## A329647.P14685221074396826881

`or(A063725(A008965(n+1)), A257991(n+1))`
-/

namespace A329647.P14685221074396826881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063725 (A008965 (n + 1)).toNat) (A257991 (n + 1))

end

end A329647.P14685221074396826881

namespace A329647

/-- `or(A063725(A008965(n+1)), A257991(n+1))` -/
def P14685221074396826881.Spec : Prop :=
  ∀ n, P14685221074396826881.a n = A329647 (n + 1)

end A329647

/-!
# A329649: Let D = A042948(n) be the n-th positive integer congruent to 0 or 1 mod 4, then a(n) = b(D) := Sum_{i=1..D} Kronecker(D,i)*i^2, where Kronecker(D,i) is the Kronecker symbol.

The programs for A329649, there is no canonical definition to state claims against.
-/

/-! ## A329649.P8143318036748711332

`A070034(A070034(a(n-1)))` with `a(0)=1, a(1)=10, a(2)=4`
-/

namespace A329649.P8143318036748711332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 4] fun n a =>
  A070034 (A070034 (a (n - 1)).toNat).toNat

end

end A329649.P8143318036748711332

/-!
# A329651: Expansion of x * (psi(x^6) / psi(-x^3))^3 * phi(-x)^5 / psi(-x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A329651, there is no canonical definition to state claims against.
-/

/-! ## A329651.P2400292797029405910

`A062157(n)*A133739(A028310(n))`
-/

namespace A329651.P2400292797029405910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A133739 (A028310 n).toNat

end

end A329651.P2400292797029405910

/-!
# A329652: Describe n in binary: concat(c0,0,c1,1) where c0, c1 is the number of '0's and '1's in n, all written in binary.

The programs for A329652, there is no canonical definition to state claims against.
-/

/-! ## A329652.P5957057988695136484

`A007088(A329653(n))`
-/

namespace A329652.P5957057988695136484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A329653 n).toNat

end

end A329652.P5957057988695136484

/-!
# A329655: Square array read by antidiagonals: T(n,k) is the number of relations between set A with n elements and set B with k elements that are both right unique and left unique.

The programs for A329655, there is no canonical definition to state claims against.
-/

/-! ## A329655.P15279755052565178135

`A347204(A115216(n))-1`
-/

namespace A329655.P15279755052565178135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347204 (A115216 n).toNat - 1

end

end A329655.P15279755052565178135

/-! ## A329655.P12259491518667658956

`A088699(eq[0, A103451(n)])-1`
-/

namespace A329655.P12259491518667658956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A329655.P12259491518667658956

/-! ## A329655.P2056696969138927277

`A088699(eq[0, A158821(n)])-1`
-/

namespace A329655.P2056696969138927277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A329655.P2056696969138927277

/-! ## A329655.P12240594599941595650

`A088699(lt[1, A088699(n)])-1`
-/

namespace A329655.P12240594599941595650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A329655.P12240594599941595650

/-! ## A329655.P14633892276017618147

`A088699(A140978(n+1)-n)-1`
-/

namespace A329655.P14633892276017618147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A140978 (n + 1) - (n : ℤ)).toNat - 1

end

end A329655.P14633892276017618147

/-! ## A329655.P13336811766264490092

`A088699(A014132(A014132(n+1)))-1`
-/

namespace A329655.P13336811766264490092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A014132 (A014132 (n + 1)).toNat).toNat - 1

end

end A329655.P13336811766264490092

/-! ## A329655.P1468457878088641036

`A000720(p?[A008578(A088699(n))])`
-/

namespace A329655.P1468457878088641036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329655.P1468457878088641036

/-!
# A329656: Starting at k = A001414(n), iterate k -> n mod k until k=0. a(n) is the number of steps taken.

The programs for A329656, there is no canonical definition to state claims against.
-/

/-! ## A329656.P12136522939277053266

`A326031(A302042(n+1)%A335457(n))`
-/

namespace A329656.P12136522939277053266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (Int.tmod (A302042 (n + 1)) (A335457 n)).toNat

end

end A329656.P12136522939277053266

/-! ## A329656.P5305550748218961672

`A000120(A304527(n+1)^A277648(n+1))`
-/

namespace A329656.P5305550748218961672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A304527 (n + 1) : ℚ) ^ (A277648 (n + 1) : ℤ))).toNat

end

end A329656.P5305550748218961672

/-! ## A329656.P429277692401195447

`A257990(A298268(n+1)^A001222(n+1))`
-/

namespace A329656.P429277692401195447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (SequenceMachineLib.roundAway ((A298268 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A329656.P429277692401195447

/-! ## A329656.P16242670815839177681

`A257990(A298268(n+1)^A324190(n+1))`
-/

namespace A329656.P16242670815839177681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (SequenceMachineLib.roundAway ((A298268 (n + 1) : ℚ) ^ (A324190 (n + 1) : ℤ))).toNat

end

end A329656.P16242670815839177681

/-! ## A329656.P11350850491584232102

`A206483(A241909(n+1))`
-/

namespace A329656.P11350850491584232102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A241909 (n + 1)).toNat

end

end A329656.P11350850491584232102

/-!
# A329657: Positions of records in A329656.

The programs for A329657, there is no canonical definition to state claims against.
-/

/-! ## A329657.P13407111356438227090

`A020650(A166336(n))*A127321(3*n+2)`
-/

namespace A329657.P13407111356438227090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A166336 n).toNat * A127321 (3 * n + 2)

end

end A329657.P13407111356438227090

/-!
# A329661: BII-number of the set-system whose MM-number is A329629(n).

The programs for A329661, there is no canonical definition to state claims against.
-/

/-! ## A329661.P9468685875979659652

`and(A005273(n+3)-1, A001906(n))`
-/

namespace A329661.P9468685875979659652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005273 (n + 3) - 1) (A001906 n)

end

end A329661.P9468685875979659652

/-! ## A329661.P16051490317384123859

`and(∑[A271977(2*n+3)], A000045(2*n))`
-/

namespace A329661.P16051490317384123859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271977 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A000045 (2 * n))

end

end A329661.P16051490317384123859

/-! ## A329661.P4379258350848814366

`∑{p}[∏{e}[A136447(n+1)^n, #+1], A048676(#)]`
-/

namespace A329661.P4379258350848814366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048676 p

end

end A329661.P4379258350848814366

/-!
# A329662: Position of first occurrence of n in A331410.

The programs for A329662, there is no canonical definition to state claims against.
-/

/-! ## A329662.P15542154180530980821

`A335430(∑[n]+n)`
-/

namespace A329662.P15542154180530980821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335430 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A329662.P15542154180530980821

/-! ## A329662.P11278844886522329994

`or(1, A335430(A000096(n)))`
-/

namespace A329662.P11278844886522329994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335430 (A000096 n).toNat)

end

end A329662.P11278844886522329994

/-! ## A329662.P2114289156876891957

`record[A023531(n)*A335430(n)]`
-/

namespace A329662.P2114289156876891957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A335430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329662.P2114289156876891957

/-! ## A329662.P14107854530866469744

`record[A117906(n)*A335430(n)]`
-/

namespace A329662.P14107854530866469744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117906 n * A335430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329662.P14107854530866469744

/-! ## A329662.P4726848990937310918

`record[A167374(n)*A335430(n)]`
-/

namespace A329662.P4726848990937310918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A335430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329662.P4726848990937310918

/-!
# A329664: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UD, HH and DU.

The programs for A329664, there is no canonical definition to state claims against.
-/

/-! ## A329664.P3261938336147859487

`A346503(abs(1-n))+A346503(n)`
-/

namespace A329664.P3261938336147859487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346503 |1 - (n : ℤ)|.toNat + A346503 n

end

end A329664.P3261938336147859487

/-! ## A329664.P2144727372910672202

`A329671(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329664.P2144727372910672202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329671 (n - 1) - a (n - 1)

end

end A329664.P2144727372910672202

/-! ## A329664.P10485285957262171637

`(A020639(A000010(n+2))*A329665(n))%A329665(n+1)`
-/

namespace A329664.P10485285957262171637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A000010 (n + 2)).toNat * A329665 n) (A329665 (n + 1))

end

end A329664.P10485285957262171637

/-! ## A329664.P15288092825453694604

`A329665(n)-Δ[A329665(n)]%A308435(n)`
-/

namespace A329664.P15288092825453694604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329665 n - Int.tmod (f1 (n + 1) - f1 n) (A308435 n)

end

end A329664.P15288092825453694604

/-! ## A329664.P10406655613548073074

`A329665(n)-Δ[A289207(A329665(n))]`
-/

namespace A329664.P10406655613548073074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A329665 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329665 n - (f1 (n + 1) - f1 n)

end

end A329664.P10406655613548073074

/-!
# A329665: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps UD, HH and DU.

The programs for A329665, there is no canonical definition to state claims against.
-/

/-! ## A329665.P17687307392304198662

`A008679(A153360(n+1)+4)`
-/

namespace A329665.P17687307392304198662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A153360 (n + 1) + 4).toNat

end

end A329665.P17687307392304198662

/-! ## A329665.P15640602583041853539

`A054404(A006851(n)+2+n)`
-/

namespace A329665.P15640602583041853539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A006851 n + 2 + (n : ℤ)).toNat

end

end A329665.P15640602583041853539

/-! ## A329665.P5963766950626283132

`A001462(Δ[Δ[A304173(n+1)]])`
-/

namespace A329665.P5963766950626283132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (f1 (n + 1) - f1 n).toNat

end

end A329665.P5963766950626283132

/-! ## A329665.P3093849766462084679

`A185283(A070859(n)+A003446(n))`
-/

namespace A329665.P3093849766462084679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A070859 n + A003446 n).toNat

end

end A329665.P3093849766462084679

/-! ## A329665.P823735856356316278

`A054846(xor(A009999(n), A081714(n)))`
-/

namespace A329665.P823735856356316278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.xor (A009999 n) (A081714 n)).toNat

end

end A329665.P823735856356316278

/-!
# A329666: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU and HH.

The programs for A329666, there is no canonical definition to state claims against.
-/

/-! ## A329666.P10181767159899579306

`A329676(A028310(n)+1)+A329676(n)`
-/

namespace A329666.P10181767159899579306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329676 (A028310 n + 1).toNat + A329676 n

end

end A329666.P10181767159899579306

/-! ## A329666.P15344238992501025255

`A329676(n+1)+A329676(n)%A329676(n+3)`
-/

namespace A329666.P15344238992501025255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329676 (n + 1) + Int.tmod (A329676 n) (A329676 (n + 3))

end

end A329666.P15344238992501025255

/-! ## A329666.P14801689640984015616

`A329676(n+1)+A329676(n)%A329675(n)`
-/

namespace A329666.P14801689640984015616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329676 (n + 1) + Int.tmod (A329676 n) (A329675 n)

end

end A329666.P14801689640984015616

/-! ## A329666.P5687844498414986695

`Δ[∑[A329675(n)]-A329668(n)]`
-/

namespace A329666.P5687844498414986695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329675 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A329668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329666.P5687844498414986695

/-! ## A329666.P14551397968047761793

`A329675(n+1)-Δ[A329668(n)]`
-/

namespace A329666.P14551397968047761793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329675 (n + 1) - (f1 (n + 1) - f1 n)

end

end A329666.P14551397968047761793

/-!
# A329667: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps UU and HH.

The programs for A329667, there is no canonical definition to state claims against.
-/

/-! ## A329667.P17715278128061278908

`ceil(root(A077551(2*n+1), π))`
-/

namespace A329667.P17715278128061278908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077551 (2 * n + 1) : ℝ) ^ (1 / Real.pi)⌉

end

end A329667.P17715278128061278908

/-! ## A329667.P13763857563387213861

`A157271(A346426(n)+A171858(n))`
-/

namespace A329667.P13763857563387213861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A346426 n + A171858 n).toNat

end

end A329667.P13763857563387213861

/-! ## A329667.P18325489884667968600

`A157271(A171858(n)+A000720(n+1))`
-/

namespace A329667.P18325489884667968600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A171858 n + A000720 (n + 1)).toNat

end

end A329667.P18325489884667968600

/-! ## A329667.P11768717884242528369

`A157271(A171858(n)+A002024(n+1))`
-/

namespace A329667.P11768717884242528369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A171858 n + A002024 (n + 1)).toNat

end

end A329667.P11768717884242528369

/-! ## A329667.P13276520829963105467

`A157271(A289236(n+1)+A171858(n))`
-/

namespace A329667.P13276520829963105467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A289236 (n + 1) + A171858 n).toNat

end

end A329667.P13276520829963105467

/-!
# A329668: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps HH and DU.

The programs for A329668, there is no canonical definition to state claims against.
-/

/-! ## A329668.P10014245218282252212

`A329675(n)-(A329666(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A329668.P10014245218282252212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329675 n - (A329666 (n - 1) - a (n - 1))

end

end A329668.P10014245218282252212

/-! ## A329668.P422039099824144137

`A329675(n+1)-A329675(A140106(2*n+1))`
-/

namespace A329668.P422039099824144137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329675 (n + 1) - A329675 (A140106 (2 * n + 1)).toNat

end

end A329668.P422039099824144137

/-! ## A329668.P10783146319829544173

`A235168(A153229(n))+A179070(2*n+1)`
-/

namespace A329668.P10783146319829544173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235168 (A153229 n).toNat + A179070 (2 * n + 1)

end

end A329668.P10783146319829544173

/-! ## A329668.P3726746029390715761

`A001462(A107240(n+1)+n)-(A329666(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A329668.P3726746029390715761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001462 (A107240 (n + 1) + (n : ℤ)).toNat - (A329666 (n - 1) - a (n - 1))

end

end A329668.P3726746029390715761

/-!
# A329669: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps HH and DD.

The programs for A329669, there is no canonical definition to state claims against.
-/

/-! ## A329669.P15406778916795511391

`A185714(A052542(n))+A171842(A032563(n+1))`
-/

namespace A329669.P15406778916795511391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A052542 n).toNat + A171842 (A032563 (n + 1)).toNat

end

end A329669.P15406778916795511391

/-! ## A329669.P3744971469344611185

`A185714(A052542(n))+A171842(A077739(n+1))`
-/

namespace A329669.P3744971469344611185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A052542 n).toNat + A171842 (A077739 (n + 1)).toNat

end

end A329669.P3744971469344611185

/-! ## A329669.P6570509498355397908

`∑[A243283(record[A108076(n)])]`
-/

namespace A329669.P6570509498355397908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329669.P6570509498355397908

/-! ## A329669.P7382793442870776946

`record[floor(A008619(A001906(n))/(n+1))]`
-/

namespace A329669.P7382793442870776946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 (A001906 n).toNat : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329669.P7382793442870776946

/-!
# A329670: Number of excursions of length n with Motzkin-steps allowing only consecutive steps UH and HD.

The programs for A329670, the canonical program `A329670.P2358718000154927643` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329670 has offset 0).

The definition of A329670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329670.P2358718000154927643

`char[C(3, n)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329670

/-- `char[C(3, n)]` -/
def P2358718000154927643.Spec : Prop :=
  ∀ n, (P2358718000154927643.a n : ℤ) = A329670 n

theorem P2358718000154927643.correct : P2358718000154927643.Spec := by
  intro n
  simp only [A329670]

end A329670

/-!
# A329671: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH and DD.

The programs for A329671, there is no canonical definition to state claims against.
-/

/-! ## A329671.P18231030870311584607

`2*A329665(n)-Δ[A329665(n+1)]`
-/

namespace A329671.P18231030870311584607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329665 n - (f1 (n + 1) - f1 n)

end

end A329671.P18231030870311584607

/-! ## A329671.P6560007766175277093

`A210062(A003242(n*A043562(n)))`
-/

namespace A329671.P6560007766175277093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (A003242 ((n : ℤ) * A043562 n).toNat).toNat

end

end A329671.P6560007766175277093

/-! ## A329671.P4486649770580672820

`A210062(A003242(n)^A043562(n))`
-/

namespace A329671.P4486649770580672820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (SequenceMachineLib.roundAway ((A003242 n : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A329671.P4486649770580672820

/-! ## A329671.P5494275164135339514

`A257212(A006649(n)*A231756(n+1))`
-/

namespace A329671.P5494275164135339514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A006649 n * A231756 (n + 1)).toNat

end

end A329671.P5494275164135339514

/-! ## A329671.P3225591726057063744

`A210062(A003242(n)^A057523(n+1))`
-/

namespace A329671.P3225591726057063744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 (SequenceMachineLib.roundAway ((A003242 n : ℚ) ^ (A057523 (n + 1) : ℤ))).toNat

end

end A329671.P3225591726057063744

/-!
# A329672: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps UU.

The programs for A329672, there is no canonical definition to state claims against.
-/

/-! ## A329672.P8908150729690313254

`A000129(n)+A213683(n)+A172471(A155069(n))`
-/

namespace A329672.P8908150729690313254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A213683 n + A172471 (A155069 n).toNat)

end

end A329672.P8908150729690313254

/-! ## A329672.P1268143516588842731

`A247357(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A329672.P1268143516588842731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A247357 (a (n - 1)).toNat + a (n - 2)

end

end A329672.P1268143516588842731

/-! ## A329672.P779355023005621397

`A241920(A149995(n))`
-/

namespace A329672.P779355023005621397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A149995 n).toNat

end

end A329672.P779355023005621397

/-! ## A329672.P17718713970809988394

`A241920(A150000(n))`
-/

namespace A329672.P17718713970809988394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A150000 n).toNat

end

end A329672.P17718713970809988394

/-!
# A329673: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps HH.

The programs for A329673, there is no canonical definition to state claims against.
-/

/-! ## A329673.P9456975818910068610

`A070939(A351492(n))+A001906(n)`
-/

namespace A329673.P9456975818910068610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A351492 n).toNat + A001906 n

end

end A329673.P9456975818910068610

/-! ## A329673.P8840042686196731528

`A216062(A257275(n+1))+A001654(n)`
-/

namespace A329673.P8840042686196731528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216062 (A257275 (n + 1)).toNat + A001654 n

end

end A329673.P8840042686196731528

/-! ## A329673.P16791698075502293002

`A070939(A351492(n))+A000045(2*n)`
-/

namespace A329673.P16791698075502293002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A351492 n).toNat + A000045 (2 * n)

end

end A329673.P16791698075502293002

/-! ## A329673.P17310560793925939132

`A008676(A227653(n+1)+2)`
-/

namespace A329673.P17310560793925939132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A227653 (n + 1) + 2).toNat

end

end A329673.P17310560793925939132

/-!
# A329674: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps DD.

The programs for A329674, there is no canonical definition to state claims against.
-/

/-! ## A329674.P5971656945753774459

`A114173(n)-A016419(A016432(n))`
-/

namespace A329674.P5971656945753774459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114173 n - A016419 (A016432 n).toNat

end

end A329674.P5971656945753774459

/-! ## A329674.P6488565989438722885

`A028310(A114173(n)-A011817(n))`
-/

namespace A329674.P6488565989438722885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A114173 n - A011817 n).toNat

end

end A329674.P6488565989438722885

/-! ## A329674.P7262793332144059983

`A028310(A114173(n)-A025923(n))`
-/

namespace A329674.P7262793332144059983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A114173 n - A025923 n).toNat

end

end A329674.P7262793332144059983

/-! ## A329674.P9783375414788576283

`A114173(n)-A037913(A037924(n))`
-/

namespace A329674.P9783375414788576283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114173 n - A037913 (A037924 n).toNat

end

end A329674.P9783375414788576283

/-! ## A329674.P8255377082768243192

`A114173(n)-A037913(A037929(n))`
-/

namespace A329674.P8255377082768243192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114173 n - A037913 (A037929 n).toNat

end

end A329674.P8255377082768243192

/-!
# A329675: Number of meanders of length n with Motzkin-steps avoiding the consecutive steps UD and HH.

The programs for A329675, there is no canonical definition to state claims against.
-/

/-! ## A329675.P13987442621496361081

`A051889(A309537(n+1))`
-/

namespace A329675.P13987442621496361081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A309537 (n + 1)).toNat

end

end A329675.P13987442621496361081

/-! ## A329675.P2873330921027577174

`∑[A111654(∑[A369268(n)])]`
-/

namespace A329675.P2873330921027577174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369268 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329675.P2873330921027577174

/-! ## A329675.P2898367821662822042

`A001462(A107240(n+1)+n)`
-/

namespace A329675.P2898367821662822042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A107240 (n + 1) + (n : ℤ)).toNat

end

end A329675.P2898367821662822042

/-! ## A329675.P16999586240811471065

`∑[A018851(A225482(3*n)²)]`
-/

namespace A329675.P16999586240811471065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A225482 (3 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329675.P16999586240811471065

/-! ## A329675.P11113733912703677515

`∑[A225482(3*n)%p?[A225482(n)]]`
-/

namespace A329675.P11113733912703677515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225482 (3 * n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329675.P11113733912703677515

/-!
# A329676: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UD and HH.

The programs for A329676, there is no canonical definition to state claims against.
-/

/-! ## A329676.P17805662572052804076

`A329666(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329676.P17805662572052804076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329666 (n - 1) - a (n - 1)

end

end A329676.P17805662572052804076

/-! ## A329676.P18154370911258946868

`A332436(A054161(n))`
-/

namespace A329676.P18154370911258946868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332436 (A054161 n).toNat

end

end A329676.P18154370911258946868

/-!
# A329677: Number of excursions of length n with Motzkin-steps consisting only of consecutive steps UH, HD, and DH.

The programs for A329677, the canonical program `A329677.P13571739098439761076` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329677 has offset 0).

The definition of A329677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329677.P13571739098439761076

`C(4, n)%3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329677

/-- `C(4, n)%3` -/
def P13571739098439761076.Spec : Prop :=
  ∀ n, (P13571739098439761076.a n : ℤ) = A329677 n

theorem P13571739098439761076.correct : P13571739098439761076.Spec := by
  intro n
  simp only [A329677]

end A329677

/-!
# A329678: Number of excursions of length n with Motzkin-steps consisting only of consecutive steps UD and DH.

The programs for A329678, the canonical program `A329678.P12070301987865077242` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329678 has offset 0).

The definition of A329678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329678.P12070301987865077242

`round(sqrt(acot(n)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329678

/-- `round(sqrt(acot(n)))` -/
def P12070301987865077242.Spec : Prop :=
  ∀ n, P12070301987865077242.a n = A329678 n

theorem P12070301987865077242.correct : P12070301987865077242.Spec := by
  intro n
  simp only [A329678]

end A329678

/-!
# A329679: Number of excursions of length n with Motzkin-steps consisting only of consecutive steps UH, UD, HD and DH.

The programs for A329679, the canonical program `A329679.P17387418292297349726` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329679 has offset 0).

The definition of A329679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329679.P17387418292297349726

`sqrt(C(4, C(n, 3)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329679

/-- `sqrt(C(4, C(n, 3)))` -/
def P17387418292297349726.Spec : Prop :=
  ∀ n, P17387418292297349726.a n = (A329679 n : ℝ)

end A329679

/-!
# A329680: Number of excursions of length n with Motzkin-steps consisting only of consecutive steps UH, HD and DU.

The programs for A329680, the canonical program `A329680.P1219068244737238337` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329680 has offset 0).

The definition of A329680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329680.P1219068244737238337

`C(2, lcm(3, n)-n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329680

/-- `C(2, lcm(3, n)-n)` -/
def P1219068244737238337.Spec : Prop :=
  ∀ n, (P1219068244737238337.a n : ℤ) = A329680 n

theorem P1219068244737238337.correct : P1219068244737238337.Spec := by
  intro n
  simp only [A329680]

end A329680

/-!
# A329681: a(1)=1, a(2)=2; for n > 2, a(n) = max(sum0, sum1) mod n, where sum0 is the sum of all previous even terms, sum1 is the sum of all previous odd terms.

The programs for A329681, there is no canonical definition to state claims against.
-/

/-! ## A329681.P477781053708548955

`A081729(A085386(n))+A040001(n)`
-/

namespace A329681.P477781053708548955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A085386 n).toNat + A040001 n

end

end A329681.P477781053708548955

/-! ## A329681.P6264434111147832390

`A275946(A318921(n)+A245530(n+1))`
-/

namespace A329681.P6264434111147832390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 (A318921 n + A245530 (n + 1)).toNat

end

end A329681.P6264434111147832390

/-! ## A329681.P9928501933745131607

`and(A007947(n+1), A051125(A106805(n)))`
-/

namespace A329681.P9928501933745131607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (n + 1)) (A051125 (A106805 n).toNat)

end

end A329681.P9928501933745131607

/-! ## A329681.P2360370055279723199

`and(A002828(A255834(n)), A020639(n+1))`
-/

namespace A329681.P2360370055279723199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002828 (A255834 n).toNat) (A020639 (n + 1))

end

end A329681.P2360370055279723199

/-! ## A329681.P4638342081442281524

`and(A002329(A046201(n+1)), A135679(n+1))`
-/

namespace A329681.P4638342081442281524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002329 (A046201 (n + 1)).toNat) (A135679 (n + 1))

end

end A329681.P4638342081442281524

/-!
# A329682: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, UD, HU and DD.

The programs for A329682, the canonical program `A329682.P10608613262572423220` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329682 has offset 0).

The definition of A329682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329682.P10608613262572423220

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329682

/-- `a(n-3)` -/
def P10608613262572423220.Spec : Prop :=
  ∀ n, (P10608613262572423220.a n : ℤ) = A329682 n

theorem P10608613262572423220.correct : P10608613262572423220.Spec := by
  intro n
  simp only [A329682]

end A329682

/-!
# A329683: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, HH and HD.

The programs for A329683, the canonical program `A329683.P13128253643030484216` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329683 has offset 0).

The definition of A329683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329683.P13128253643030484216

`ceil(acot(C(2, n)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329683

/-- `ceil(acot(C(2, n)))` -/
def P13128253643030484216.Spec : Prop :=
  ∀ n, P13128253643030484216.a n = A329683 n

theorem P13128253643030484216.correct : P13128253643030484216.Spec := by
  intro n
  simp only [A329683]

end A329683

/-!
# A329684: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UD and HH.

The programs for A329684, the canonical program `A329684.P3930370660964505865` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329684 has offset 0).

The definition of A329684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329684.P3930370660964505865

`char[2]+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A329684

/-- `char[2]+1` -/
def P3930370660964505865.Spec : Prop :=
  ∀ n, (P3930370660964505865.a n : ℤ) = A329684 n

theorem P3930370660964505865.correct : P3930370660964505865.Spec := by
  intro n
  simp only [A329684]

end A329684

/-!
# A329686: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, HU, HD and DH.

The programs for A329686, the canonical program `A329686.P15611330832861329198` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329686 has offset 0).

The definition of A329686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329686.P15611330832861329198

`A126120(ceil(n/2))+A126120(A123108(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329686

/-- `A126120(ceil(n/2))+A126120(A123108(n))` -/
def P15611330832861329198.Spec : Prop :=
  ∀ n, P15611330832861329198.a n = A329686 n

theorem P15611330832861329198.correct : P15611330832861329198.Spec := by
  intro n
  simp only [A329686]

end A329686

/-! ## A329686.P10261138720168103722

`A126120(and(n, -2)/2)+A126120(A065033(n))`
-/

namespace A329686.P10261138720168103722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat + A126120 (A065033 n).toNat

end

end A329686.P10261138720168103722

namespace A329686

/-- `A126120(and(n, -2)/2)+A126120(A065033(n))` -/
def P10261138720168103722.Spec : Prop :=
  ∀ n, P10261138720168103722.a n = A329686 n

end A329686

/-! ## A329686.P14216598015420690598

`A126120(A065033(n))+A097331(A008619(n))`
-/

namespace A329686.P14216598015420690598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A065033 n).toNat + A097331 (A008619 n).toNat

end

end A329686.P14216598015420690598

namespace A329686

/-- `A126120(A065033(n))+A097331(A008619(n))` -/
def P14216598015420690598.Spec : Prop :=
  ∀ n, P14216598015420690598.a n = A329686 n

end A329686

/-! ## A329686.P6928829342942307488

`A126120(A004526(n))+A126120(A065033(n))`
-/

namespace A329686.P6928829342942307488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004526 n).toNat + A126120 (A065033 n).toNat

end

end A329686.P6928829342942307488

namespace A329686

/-- `A126120(A004526(n))+A126120(A065033(n))` -/
def P6928829342942307488.Spec : Prop :=
  ∀ n, P6928829342942307488.a n = A329686 n

end A329686

/-! ## A329686.P4852873353967683351

`A089408(A266977(n))-A126120(A028242(n))`
-/

namespace A329686.P4852873353967683351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A266977 n).toNat - A126120 (A028242 n).toNat

end

end A329686.P4852873353967683351

namespace A329686

/-- `A089408(A266977(n))-A126120(A028242(n))` -/
def P4852873353967683351.Spec : Prop :=
  ∀ n, P4852873353967683351.a n = A329686 n

end A329686

/-!
# A329687: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, UD, HH and DH.

The programs for A329687, the canonical program `A329687.P17295788275179189251` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329687 has offset 0).

The definition of A329687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329687.P17295788275179189251

`A126120(floor(2*n/3))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329687

/-- `A126120(floor(2*n/3))` -/
def P17295788275179189251.Spec : Prop :=
  ∀ n, P17295788275179189251.a n = A329687 n

theorem P17295788275179189251.correct : P17295788275179189251.Spec := by
  intro n
  simp only [A329687]

end A329687

/-! ## A329687.P6463109536696431290

`A097331(∑[(1-n%3)²])`
-/

namespace A329687.P6463109536696431290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 3 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329687.P6463109536696431290

namespace A329687

/-- `A097331(∑[(1-n%3)²])` -/
def P6463109536696431290.Spec : Prop :=
  ∀ n, P6463109536696431290.a n = A329687 n

end A329687

/-! ## A329687.P16811715770927371602

`(n+1)²%3*A000108(floor(n/3))`
-/

namespace A329687.P16811715770927371602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 % 3 : ℕ) : ℤ) * A000108 ⌊(n : ℚ) / 3⌋.toNat

end

end A329687.P16811715770927371602

namespace A329687

/-- `(n+1)²%3*A000108(floor(n/3))` -/
def P16811715770927371602.Spec : Prop :=
  ∀ n, P16811715770927371602.a n = A329687 n

end A329687

/-! ## A329687.P10977494866860073030

`A097331(∑[A204418(n)])`
-/

namespace A329687.P10977494866860073030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329687.P10977494866860073030

namespace A329687

/-- `A097331(∑[A204418(n)])` -/
def P10977494866860073030.Spec : Prop :=
  ∀ n, P10977494866860073030.a n = A329687 n

end A329687

/-! ## A329687.P1061658761044232506

`A097331(A004396(n+1))`
-/

namespace A329687.P1061658761044232506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A004396 (n + 1)).toNat

end

end A329687.P1061658761044232506

namespace A329687

/-- `A097331(A004396(n+1))` -/
def P1061658761044232506.Spec : Prop :=
  ∀ n, P1061658761044232506.a n = A329687 n

end A329687

/-! ## A329687.P4836552658911812046

`A097331(A004523(n)+1)`
-/

namespace A329687.P4836552658911812046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A004523 n + 1).toNat

end

end A329687.P4836552658911812046

namespace A329687

/-- `A097331(A004523(n)+1)` -/
def P4836552658911812046.Spec : Prop :=
  ∀ n, P4836552658911812046.a n = A329687 n

end A329687

/-! ## A329687.P14835708169681216450

`A097331(A008620(2*n))`
-/

namespace A329687.P14835708169681216450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A008620 (2 * n)).toNat

end

end A329687.P14835708169681216450

namespace A329687

/-- `A097331(A008620(2*n))` -/
def P14835708169681216450.Spec : Prop :=
  ∀ n, P14835708169681216450.a n = A329687 n

end A329687

/-! ## A329687.P5567667649223719723

`A097331(∑[char[A002517(n)]])`
-/

namespace A329687.P5567667649223719723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329687.P5567667649223719723

namespace A329687

/-- `A097331(∑[char[A002517(n)]])` -/
def P5567667649223719723.Spec : Prop :=
  ∀ n, P5567667649223719723.a n = A329687 n

end A329687

/-! ## A329687.P14332083014097019048

`A097331(∑[char[A007494(n)]])`
-/

namespace A329687.P14332083014097019048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329687.P14332083014097019048

namespace A329687

/-- `A097331(∑[char[A007494(n)]])` -/
def P14332083014097019048.Spec : Prop :=
  ∀ n, P14332083014097019048.a n = A329687 n

end A329687

/-! ## A329687.P693557735077178497

`A097331(∑[A011655(n+2)])`
-/

namespace A329687.P693557735077178497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329687.P693557735077178497

namespace A329687

/-- `A097331(∑[A011655(n+2)])` -/
def P693557735077178497.Spec : Prop :=
  ∀ n, P693557735077178497.a n = A329687 n

end A329687

/-! ## A329687.P4921571698212955943

`A097331(A002264(2*n)+1)`
-/

namespace A329687.P4921571698212955943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A002264 (2 * n) + 1).toNat

end

end A329687.P4921571698212955943

namespace A329687

/-- `A097331(A002264(2*n)+1)` -/
def P4921571698212955943.Spec : Prop :=
  ∀ n, P4921571698212955943.a n = A329687 n

end A329687

/-! ## A329687.P5331412732685937172

`abs(A090192(A002264(2*n)+1))`
-/

namespace A329687.P5331412732685937172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (A002264 (2 * n) + 1).toNat|

end

end A329687.P5331412732685937172

namespace A329687

/-- `abs(A090192(A002264(2*n)+1))` -/
def P5331412732685937172.Spec : Prop :=
  ∀ n, P5331412732685937172.a n = A329687 n

end A329687

/-! ## A329687.P11493679528547054470

`A097331(A008615(3*n+n+2))`
-/

namespace A329687.P11493679528547054470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A008615 (3 * n + (n + 2))).toNat

end

end A329687.P11493679528547054470

namespace A329687

/-- `A097331(A008615(3*n+n+2))` -/
def P11493679528547054470.Spec : Prop :=
  ∀ n, P11493679528547054470.a n = A329687 n

end A329687

/-! ## A329687.P1803271990852163899

`abs(A182492(A302402(2*n+1)+1))`
-/

namespace A329687.P1803271990852163899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (A302402 (2 * n + 1) + 1).toNat|

end

end A329687.P1803271990852163899

namespace A329687

/-- `abs(A182492(A302402(2*n+1)+1))` -/
def P1803271990852163899.Spec : Prop :=
  ∀ n, P1803271990852163899.a n = A329687 n

end A329687

/-! ## A329687.P15354107923492695984

`A097331(2*n+1-A004772(n+1))`
-/

namespace A329687.P15354107923492695984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((2 * n + 1 : ℤ) - A004772 (n + 1)).toNat

end

end A329687.P15354107923492695984

namespace A329687

/-- `A097331(2*n+1-A004772(n+1))` -/
def P15354107923492695984.Spec : Prop :=
  ∀ n, P15354107923492695984.a n = A329687 n

end A329687

/-! ## A329687.P9127229955999133862

`lcm(A000108(A002264(n)), A010892(n))`
-/

namespace A329687.P9127229955999133862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000108 (A002264 n).toNat) (A010892 n)

end

end A329687.P9127229955999133862

namespace A329687

/-- `lcm(A000108(A002264(n)), A010892(n))` -/
def P9127229955999133862.Spec : Prop :=
  ∀ n, (P9127229955999133862.a n : ℤ) = A329687 n

end A329687

/-! ## A329687.P10904687766543199343

`∑[A000108(A002264(n))*A057078(n)]`
-/

namespace A329687.P10904687766543199343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002264 n).toNat * A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329687.P10904687766543199343

namespace A329687

/-- `∑[A000108(A002264(n))*A057078(n)]` -/
def P10904687766543199343.Spec : Prop :=
  ∀ n, P10904687766543199343.a n = A329687 n

end A329687

/-! ## A329687.P13742696319723020972

`lcm(A000108(n-A004396(n)), A049347(n))`
-/

namespace A329687.P13742696319723020972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000108 ((n : ℤ) - A004396 n).toNat) (A049347 n)

end

end A329687.P13742696319723020972

namespace A329687

/-- `lcm(A000108(n-A004396(n)), A049347(n))` -/
def P13742696319723020972.Spec : Prop :=
  ∀ n, (P13742696319723020972.a n : ℤ) = A329687 n

end A329687

/-! ## A329687.P17110982240796053200

`A057078(n+2)²*A000108(A002264(n+1))`
-/

namespace A329687.P17110982240796053200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 2) ^ 2 * A000108 (A002264 (n + 1)).toNat

end

end A329687.P17110982240796053200

namespace A329687

/-- `A057078(n+2)²*A000108(A002264(n+1))` -/
def P17110982240796053200.Spec : Prop :=
  ∀ n, P17110982240796053200.a n = A329687 n

end A329687

/-! ## A329687.P2378731728777525367

`A329688(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329687.P2378731728777525367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329688 (n - 1) - a (n - 1)

end

end A329687.P2378731728777525367

namespace A329687

/-- `A329688(n-1)-a(n-1)` -/
def P2378731728777525367.Spec : Prop :=
  ∀ n, P2378731728777525367.a n = A329687 n

end A329687

/-!
# A329688: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DU.

The programs for A329688, the canonical program `A329688.P15403590587362411359` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329688 has offset 0).

The definition of A329688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329688.P15403590587362411359

`A329686(A042965(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A329688

/-- `A329686(A042965(n+1))` -/
def P15403590587362411359.Spec : Prop :=
  ∀ n, P15403590587362411359.a n = A329688 n

theorem P15403590587362411359.correct : P15403590587362411359.Spec := by
  intro n
  simp only [A329688]

end A329688

/-! ## A329688.P6498297779316465961

`A329686(A004396(2*n))`
-/

namespace A329688.P6498297779316465961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A004396 (2 * n)).toNat

end

end A329688.P6498297779316465961

namespace A329688

/-- `A329686(A004396(2*n))` -/
def P6498297779316465961.Spec : Prop :=
  ∀ n, P6498297779316465961.a n = A329688 n

end A329688

/-! ## A329688.P8269443909964626061

`A329686(n-A004396(n)+n)`
-/

namespace A329688.P8269443909964626061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 ((n : ℤ) - A004396 n + (n : ℤ)).toNat

end

end A329688.P8269443909964626061

namespace A329688

/-- `A329686(n-A004396(n)+n)` -/
def P8269443909964626061.Spec : Prop :=
  ∀ n, P8269443909964626061.a n = A329688 n

end A329688

/-! ## A329688.P8565651975424408136

`A329686(n-(A004396(n)-n))`
-/

namespace A329688.P8565651975424408136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 ((n : ℤ) - (A004396 n - (n : ℤ))).toNat

end

end A329688.P8565651975424408136

namespace A329688

/-- `A329686(n-(A004396(n)-n))` -/
def P8565651975424408136.Spec : Prop :=
  ∀ n, P8565651975424408136.a n = A329688 n

end A329688

/-! ## A329688.P10759657870864766866

`A089408(A047396(n+1)-A004273(n))`
-/

namespace A329688.P10759657870864766866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A047396 (n + 1) - A004273 n).toNat

end

end A329688.P10759657870864766866

namespace A329688

/-- `A089408(A047396(n+1)-A004273(n))` -/
def P10759657870864766866.Spec : Prop :=
  ∀ n, P10759657870864766866.a n = A329688 n

end A329688

/-! ## A329688.P3914138922496881125

`A089408(A133310(n+1)%A005408(n))`
-/

namespace A329688.P3914138922496881125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (Int.tmod (A133310 (n + 1)) (A005408 n)).toNat

end

end A329688.P3914138922496881125

namespace A329688

/-- `A089408(A133310(n+1)%A005408(n))` -/
def P3914138922496881125.Spec : Prop :=
  ∀ n, P3914138922496881125.a n = A329688 n

end A329688

/-! ## A329688.P3899712618007624659

`A089408(and(A000225(n), A133310(n+1)))`
-/

namespace A329688.P3899712618007624659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (Int.land (A000225 n) (A133310 (n + 1))).toNat

end

end A329688.P3899712618007624659

namespace A329688

/-- `A089408(and(A000225(n), A133310(n+1)))` -/
def P3899712618007624659.Spec : Prop :=
  ∀ n, P3899712618007624659.a n = A329688 n

end A329688

/-!
# A329689: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, UD, HH and DU.

The programs for A329689, there is no canonical definition to state claims against.
-/

/-! ## A329689.P13067113514638122089

`A308616(abs(1-n)+1)+A308616(n+1)`
-/

namespace A329689.P13067113514638122089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308616 (|1 - (n : ℤ)| + 1).toNat + A308616 (n + 1)

end

end A329689.P13067113514638122089

/-! ## A329689.P7815748977808719121

`A329690(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329689.P7815748977808719121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329690 (n - 1) - a (n - 1)

end

end A329689.P7815748977808719121

/-!
# A329690: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, DU and DD.

The programs for A329690, there is no canonical definition to state claims against.
-/

/-! ## A329690.P323048051473960119

`A329689(floor(acot(n))+1+n)+A329689(n)`
-/

namespace A329690.P323048051473960119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329689 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)).toNat + A329689 n

end

end A329690.P323048051473960119

/-! ## A329690.P18025409034224696473

`A329689(n^floor(atan(n))+1)+A329689(n)`
-/

namespace A329690.P18025409034224696473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329689 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) + 1)).toNat + A329689 n

end

end A329690.P18025409034224696473

/-! ## A329690.P17257132436471306430

`A329689(A028310(n)+1)+A329689(n)`
-/

namespace A329690.P17257132436471306430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329689 (A028310 n + 1).toNat + A329689 n

end

end A329690.P17257132436471306430

/-! ## A329690.P1617862402835480104

`A329689(A000007(n)+1+n)+A329689(n)`
-/

namespace A329690.P1617862402835480104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329689 (A000007 n + 1 + (n : ℤ)).toNat + A329689 n

end

end A329690.P1617862402835480104

/-! ## A329690.P15199879008292190093

`A329689(n+1)+A329689(n)%A000079(n)`
-/

namespace A329690.P15199879008292190093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329689 (n + 1) + Int.tmod (A329689 n) (A000079 n)

end

end A329690.P15199879008292190093

/-!
# A329691: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UD, HU, HH and DH.

The programs for A329691, there is no canonical definition to state claims against.
-/

/-! ## A329691.P9886304947918925702

`A329692(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A329691.P9886304947918925702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329692 (n - 1) - a (n - 1)

end

end A329691.P9886304947918925702

/-! ## A329691.P12436981173541793625

`A093998(Δ[A116732(n)]²)`
-/

namespace A329691.P12436981173541793625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A329691.P12436981173541793625

/-!
# A329692: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH, HD and DH.

The programs for A329692, there is no canonical definition to state claims against.
-/

/-! ## A329692.P6000122827497186797

`A329691(abs(1-n)+1)+A329691(n+1)`
-/

namespace A329692.P6000122827497186797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329691 (|1 - (n : ℤ)| + 1).toNat + A329691 (n + 1)

end

end A329692.P6000122827497186797

/-! ## A329692.P593347156781030334

`A329691(n)+A329691(n+1)/a(A305501(n))` with `a(0)=1`
-/

namespace A329692.P593347156781030334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A329691 n : ℚ) + (A329691 (n + 1) : ℚ) / a (A305501 n).toNat

end

end A329692.P593347156781030334

/-! ## A329692.P14373390349324209221

`A329693(n)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A329692.P14373390349324209221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A329693 n - a (n - 1)

end

end A329692.P14373390349324209221

/-! ## A329692.P14945139321381640213

`A329691(n)+A329691(n+1)%A329693(n+1)`
-/

namespace A329692.P14945139321381640213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329691 n + Int.tmod (A329691 (n + 1)) (A329693 (n + 1))

end

end A329692.P14945139321381640213

/-! ## A329692.P7478554607409370684

`A329691(n)+A329691(n+1)%A080873(n)`
-/

namespace A329692.P7478554607409370684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329691 n + Int.tmod (A329691 (n + 1)) (A080873 n)

end

end A329692.P7478554607409370684

/-!
# A329693: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HH, HD and DU.

The programs for A329693, there is no canonical definition to state claims against.
-/

/-! ## A329693.P10871168975805904489

`A003056(A215981(n+1))-A353489(3*(n+1))`
-/

namespace A329693.P10871168975805904489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A215981 (n + 1)).toNat - A353489 (3 * (n + 1))

end

end A329693.P10871168975805904489

/-! ## A329693.P12072110317290157114

`A000194(A038001(n+1)+A000642(n+1))`
-/

namespace A329693.P12072110317290157114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A038001 (n + 1) + A000642 (n + 1)).toNat

end

end A329693.P12072110317290157114

/-! ## A329693.P427264557203338971

`round(A087844(A026633(n))/7)+1`
-/

namespace A329693.P427264557203338971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087844 (A026633 n).toNat : ℚ) / 7) + 1

end

end A329693.P427264557203338971

/-! ## A329693.P659073489409178691

`Δ[A055086(A238831(n+2)+1)]+1`
-/

namespace A329693.P659073489409178691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A238831 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A329693.P659073489409178691

/-! ## A329693.P11188365055498073171

`A239139(floor(A141325(n+3)/(n+1)))`
-/

namespace A329693.P11188365055498073171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 ⌊(A141325 (n + 3) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A329693.P11188365055498073171

/-!
# A329694: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, HH and DU.

The programs for A329694, the canonical program `A329694.P12771457911509148127` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329694 has offset 0).

The definition of A329694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329694.P12771457911509148127

`A248100(A028310(n)+1)+A248100(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329694

/-- `A248100(A028310(n)+1)+A248100(n)` -/
def P12771457911509148127.Spec : Prop :=
  ∀ n, P12771457911509148127.a n = A329694 n

theorem P12771457911509148127.correct : P12771457911509148127.Spec := by
  intro n
  simp only [A329694]

end A329694

/-! ## A329694.P4360222014359489113

`A248100(A254667(n+1))+A248100(n)`
-/

namespace A329694.P4360222014359489113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (A254667 (n + 1)).toNat + A248100 n

end

end A329694.P4360222014359489113

namespace A329694

/-- `A248100(A254667(n+1))+A248100(n)` -/
def P4360222014359489113.Spec : Prop :=
  ∀ n, P4360222014359489113.a n = A329694 n

end A329694

/-! ## A329694.P5382882158571704958

`A248100(2-A057427(n)+n)+A248100(n)`
-/

namespace A329694.P5382882158571704958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (2 - A057427 n + (n : ℤ)).toNat + A248100 n

end

end A329694.P5382882158571704958

namespace A329694

/-- `A248100(2-A057427(n)+n)+A248100(n)` -/
def P5382882158571704958.Spec : Prop :=
  ∀ n, P5382882158571704958.a n = A329694 n

end A329694

/-! ## A329694.P11965912371232251407

`A248100(n+1)+A248100(n)%A248100(n+3)`
-/

namespace A329694.P11965912371232251407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (n + 1) + Int.tmod (A248100 n) (A248100 (n + 3))

end

end A329694.P11965912371232251407

namespace A329694

/-- `A248100(n+1)+A248100(n)%A248100(n+3)` -/
def P11965912371232251407.Spec : Prop :=
  ∀ n, P11965912371232251407.a n = A329694 n

end A329694

/-! ## A329694.P8221555317145436228

`A025277(n+4)+A025277(n+3)%A025277(n+6)`
-/

namespace A329694.P8221555317145436228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025277 (n + 4) + Int.tmod (A025277 (n + 3)) (A025277 (n + 6))

end

end A329694.P8221555317145436228

namespace A329694

/-- `A025277(n+4)+A025277(n+3)%A025277(n+6)` -/
def P8221555317145436228.Spec : Prop :=
  ∀ n, P8221555317145436228.a n = A329694 n

end A329694

/-! ## A329694.P12442055377421312494

`A248100(n^A178334(n)+1)+A248100(n)`
-/

namespace A329694.P12442055377421312494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248100 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ) + 1)).toNat + A248100 n

end

end A329694.P12442055377421312494

namespace A329694

/-- `A248100(n^A178334(n)+1)+A248100(n)` -/
def P12442055377421312494.Spec : Prop :=
  ∀ n, P12442055377421312494.a n = A329694 n

end A329694

/-!
# A329695: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UD, HU and DH.

The programs for A329695, there is no canonical definition to state claims against.
-/

/-! ## A329695.P3788514059658747315

`A026834(A283834(n)+A238430(n))`
-/

namespace A329695.P3788514059658747315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A283834 n + A238430 n).toNat

end

end A329695.P3788514059658747315

/-! ## A329695.P17707948586210716085

`A261104(A171882(n)+A106364(n+1))`
-/

namespace A329695.P17707948586210716085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A171882 n + A106364 (n + 1)).toNat

end

end A329695.P17707948586210716085

/-! ## A329695.P11384668569330005197

`A261104(or(A106364(n+1), A238430(n)))`
-/

namespace A329695.P11384668569330005197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (Int.lor (A106364 (n + 1)) (A238430 n)).toNat

end

end A329695.P11384668569330005197

/-! ## A329695.P3959492918092534492

`A261104(A240649(n+1)+A106364(n+1))`
-/

namespace A329695.P3959492918092534492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A240649 (n + 1) + A106364 (n + 1)).toNat

end

end A329695.P3959492918092534492

/-! ## A329695.P5585210741229389161

`A083277(A275070(n+1))`
-/

namespace A329695.P5585210741229389161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A275070 (n + 1)).toNat

end

end A329695.P5585210741229389161

/-!
# A329696: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HU, HD and DH.

The programs for A329696, the canonical program `A329696.P2445749868837722424` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329696 has offset 0).

The definition of A329696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329696.P641069601441432268

`A097331(n+1)+ceil(abs(sin(n)))`
-/

namespace A329696.P641069601441432268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A329696.P641069601441432268

namespace A329696

/-- `A097331(n+1)+ceil(abs(sin(n)))` -/
def P641069601441432268.Spec : Prop :=
  ∀ n, P641069601441432268.a n = A329696 n

end A329696

/-! ## A329696.P2445749868837722424

`A126120((2*n)%(n+1)+1)+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329696

/-- `A126120((2*n)%(n+1)+1)+1` -/
def P2445749868837722424.Spec : Prop :=
  ∀ n, P2445749868837722424.a n = A329696 n

theorem P2445749868837722424.correct : P2445749868837722424.Spec := by
  intro n
  simp only [A329696]

end A329696

/-! ## A329696.P14653048917462246750

`2-(a(n-1)-A000108(ceil((n-1)/2)))` with `a(0)=1, a(1)=1`
-/

namespace A329696.P14653048917462246750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (a (n - 1) - A000108 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat)

end

end A329696.P14653048917462246750

namespace A329696

/-- `2-(a(n-1)-A000108(ceil((n-1)/2)))` -/
def P14653048917462246750.Spec : Prop :=
  ∀ n, P14653048917462246750.a n = A329696 n

end A329696

/-! ## A329696.P3240573868614238924

`A141351(A142150(n))`
-/

namespace A329696.P3240573868614238924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 (A142150 n).toNat

end

end A329696.P3240573868614238924

namespace A329696

/-- `A141351(A142150(n))` -/
def P3240573868614238924.Spec : Prop :=
  ∀ n, P3240573868614238924.a n = A329696 n

end A329696

/-! ## A329696.P8932221627144383303

`A126120(A028310(n))+1`
-/

namespace A329696.P8932221627144383303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A028310 n).toNat + 1

end

end A329696.P8932221627144383303

namespace A329696

/-- `A126120(A028310(n))+1` -/
def P8932221627144383303.Spec : Prop :=
  ∀ n, P8932221627144383303.a n = A329696 n

end A329696

/-! ## A329696.P6795835067419860846

`A126120(n)+A057427(n)`
-/

namespace A329696.P6795835067419860846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A057427 n

end

end A329696.P6795835067419860846

namespace A329696

/-- `A126120(n)+A057427(n)` -/
def P6795835067419860846.Spec : Prop :=
  ∀ n, P6795835067419860846.a n = A329696 n

end A329696

/-! ## A329696.P13260731830174109466

`A126120(n)-A057428(n)`
-/

namespace A329696.P13260731830174109466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n - A057428 n

end

end A329696.P13260731830174109466

namespace A329696

/-- `A126120(n)-A057428(n)` -/
def P13260731830174109466.Spec : Prop :=
  ∀ n, P13260731830174109466.a n = A329696 n

end A329696

/-! ## A329696.P12102564834245909442

`A126120(n)+char[A094064(n)]`
-/

namespace A329696.P12102564834245909442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094064 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A329696.P12102564834245909442

namespace A329696

/-- `A126120(n)+char[A094064(n)]` -/
def P12102564834245909442.Spec : Prop :=
  ∀ n, P12102564834245909442.a n = A329696 n

end A329696

/-! ## A329696.P1606260214200318048

`A097331(A028310(n)+1)+1`
-/

namespace A329696.P1606260214200318048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A028310 n + 1).toNat + 1

end

end A329696.P1606260214200318048

namespace A329696

/-- `A097331(A028310(n)+1)+1` -/
def P1606260214200318048.Spec : Prop :=
  ∀ n, P1606260214200318048.a n = A329696 n

end A329696

/-! ## A329696.P12002120482427183773

`A097331(A233583(n+2))+1`
-/

namespace A329696.P12002120482427183773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A233583 (n + 2)).toNat + 1

end

end A329696.P12002120482427183773

namespace A329696

/-- `A097331(A233583(n+2))+1` -/
def P12002120482427183773.Spec : Prop :=
  ∀ n, P12002120482427183773.a n = A329696 n

end A329696

/-! ## A329696.P12803559183362096017

`A126120(A065033(2*n))+1`
-/

namespace A329696.P12803559183362096017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A065033 (2 * n)).toNat + 1

end

end A329696.P12803559183362096017

namespace A329696

/-- `A126120(A065033(2*n))+1` -/
def P12803559183362096017.Spec : Prop :=
  ∀ n, P12803559183362096017.a n = A329696 n

end A329696

/-! ## A329696.P6109947737503526998

`A126120(A123108(2*n))+1`
-/

namespace A329696.P6109947737503526998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A123108 (2 * n)).toNat + 1

end

end A329696.P6109947737503526998

namespace A329696

/-- `A126120(A123108(2*n))+1` -/
def P6109947737503526998.Spec : Prop :=
  ∀ n, P6109947737503526998.a n = A329696 n

end A329696

/-! ## A329696.P408510354609575608

`A126120(A000007(n)+n)+1`
-/

namespace A329696.P408510354609575608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A000007 n + (n : ℤ)).toNat + 1

end

end A329696.P408510354609575608

namespace A329696

/-- `A126120(A000007(n)+n)+1` -/
def P408510354609575608.Spec : Prop :=
  ∀ n, P408510354609575608.a n = A329696 n

end A329696

/-! ## A329696.P11811166385624164701

`A126120(A004277(n)-n)+1`
-/

namespace A329696.P11811166385624164701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004277 n - (n : ℤ)).toNat + 1

end

end A329696.P11811166385624164701

namespace A329696

/-- `A126120(A004277(n)-n)+1` -/
def P11811166385624164701.Spec : Prop :=
  ∀ n, P11811166385624164701.a n = A329696 n

end A329696

/-! ## A329696.P5035121427334584412

`1-(A000007(n)-A126120(n))`
-/

namespace A329696.P5035121427334584412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A126120 n)

end

end A329696.P5035121427334584412

namespace A329696

/-- `1-(A000007(n)-A126120(n))` -/
def P5035121427334584412.Spec : Prop :=
  ∀ n, P5035121427334584412.a n = A329696 n

end A329696

/-! ## A329696.P3283690663949438541

`A126120(gcd(n, A097331(n)))+1`
-/

namespace A329696.P3283690663949438541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (Int.gcd (n : ℤ) (A097331 n)) + 1

end

end A329696.P3283690663949438541

namespace A329696

/-- `A126120(gcd(n, A097331(n)))+1` -/
def P3283690663949438541.Spec : Prop :=
  ∀ n, P3283690663949438541.a n = A329696 n

end A329696

/-! ## A329696.P12346000108040835469

`A126120(n)+and(1, A000040(n+1))`
-/

namespace A329696.P12346000108040835469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + Int.land 1 (A000040 (n + 1))

end

end A329696.P12346000108040835469

namespace A329696

/-- `A126120(n)+and(1, A000040(n+1))` -/
def P12346000108040835469.Spec : Prop :=
  ∀ n, P12346000108040835469.a n = A329696 n

end A329696

/-! ## A329696.P2087819250609321673

`A097331(n+1)+A000040(n+1)%2`
-/

namespace A329696.P2087819250609321673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A329696.P2087819250609321673

namespace A329696

/-- `A097331(n+1)+A000040(n+1)%2` -/
def P2087819250609321673.Spec : Prop :=
  ∀ n, P2087819250609321673.a n = A329696 n

end A329696

/-! ## A329696.P8489368912523458568

`A126120(n)+A000035(A000040(n+1))`
-/

namespace A329696.P8489368912523458568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A000035 (A000040 (n + 1)).toNat

end

end A329696.P8489368912523458568

namespace A329696

/-- `A126120(n)+A000035(A000040(n+1))` -/
def P8489368912523458568.Spec : Prop :=
  ∀ n, P8489368912523458568.a n = A329696 n

end A329696

/-! ## A329696.P15434863268556248309

`A126120(n)+A001222(A000032(C(2, n+2)))`
-/

namespace A329696.P15434863268556248309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A001222 (A000032 (Nat.choose 2 (n + 2))).toNat

end

end A329696.P15434863268556248309

namespace A329696

/-- `A126120(n)+A001222(A000032(C(2, n+2)))` -/
def P15434863268556248309.Spec : Prop :=
  ∀ n, P15434863268556248309.a n = A329696 n

end A329696

/-!
# A329697: a(n) is the number of iterations needed to reach a power of 2 starting at n and using the map k -> k-(k/p), where p is the largest prime factor of k.

The programs for A329697, the canonical program `A329697.P6355568551452954971` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329697 has offset 1).

The definition of A329697 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A064415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329697.P15539626942299954995

`A336396(n+1)+A087436(n+1)`
-/

namespace A329697.P15539626942299954995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (n + 1) + A087436 (n + 1)

end

end A329697.P15539626942299954995

namespace A329697

/-- `A336396(n+1)+A087436(n+1)` -/
def P15539626942299954995.Spec : Prop :=
  ∀ n, P15539626942299954995.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P6355568551452954971

`A064097(n+1)-A064415(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329697

/-- `A064097(n+1)-A064415(n+1)` -/
def P6355568551452954971.Spec : Prop :=
  ∀ n, P6355568551452954971.a n = A329697 (n + 1)

theorem P6355568551452954971.correct : P6355568551452954971.Spec := by
  intro n
  simp only [A329697, Nat.add_sub_cancel]

end A329697

/-! ## A329697.P2581860713454041978

`a(A336466(n+1)-1)+A087436(n+1)` with `a(0)=0`
-/

namespace A329697.P2581860713454041978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A336466 (n + 1) - 1).toNat + A087436 (n + 1)

end

end A329697.P2581860713454041978

namespace A329697

/-- `a(A336466(n+1)-1)+A087436(n+1)` -/
def P2581860713454041978.Spec : Prop :=
  ∀ n, P2581860713454041978.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P15208939486277988458

`∑[A334091(n+1)]`
-/

namespace A329697.P15208939486277988458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329697.P15208939486277988458

namespace A329697

/-- `∑[A334091(n+1)]` -/
def P15208939486277988458.Spec : Prop :=
  ∀ n, P15208939486277988458.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P3976172090920399398

`A056239(A359587(n+1))`
-/

namespace A329697.P3976172090920399398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A359587 (n + 1)).toNat

end

end A329697.P3976172090920399398

namespace A329697

/-- `A056239(A359587(n+1))` -/
def P3976172090920399398.Spec : Prop :=
  ∀ n, P3976172090920399398.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P11043611531229644616

`A336469(n+1)+A005087(n+1)`
-/

namespace A329697.P11043611531229644616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) + A005087 (n + 1)

end

end A329697.P11043611531229644616

namespace A329697

/-- `A336469(n+1)+A005087(n+1)` -/
def P11043611531229644616.Spec : Prop :=
  ∀ n, P11043611531229644616.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P1296424402593254071

`A334861(n+1)-A331410(n+1)`
-/

namespace A329697.P1296424402593254071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - A331410 (n + 1)

end

end A329697.P1296424402593254071

namespace A329697

/-- `A334861(n+1)-A331410(n+1)` -/
def P1296424402593254071.Spec : Prop :=
  ∀ n, P1296424402593254071.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P17746128794159213922

`A331410(n+1)-A335877(n+1)`
-/

namespace A329697.P17746128794159213922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A335877 (n + 1)

end

end A329697.P17746128794159213922

namespace A329697

/-- `A331410(n+1)-A335877(n+1)` -/
def P17746128794159213922.Spec : Prop :=
  ∀ n, P17746128794159213922.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P11547218952160961146

`∑[A334090(n+1)-A334195(n+1)]`
-/

namespace A329697.P11547218952160961146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1) - A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329697.P11547218952160961146

namespace A329697

/-- `∑[A334090(n+1)-A334195(n+1)]` -/
def P11547218952160961146.Spec : Prop :=
  ∀ n, P11547218952160961146.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P3129633109299658286

`A073933(n+1)-(A064415(n+1)+1)`
-/

namespace A329697.P3129633109299658286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - (A064415 (n + 1) + 1)

end

end A329697.P3129633109299658286

namespace A329697

/-- `A073933(n+1)-(A064415(n+1)+1)` -/
def P3129633109299658286.Spec : Prop :=
  ∀ n, P3129633109299658286.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P6099846371007524879

`A099812(n+1)+A336469(n+1)-1`
-/

namespace A329697.P6099846371007524879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (n + 1) + (A336469 (n + 1) - 1)

end

end A329697.P6099846371007524879

namespace A329697

/-- `A099812(n+1)+A336469(n+1)-1` -/
def P6099846371007524879.Spec : Prop :=
  ∀ n, P6099846371007524879.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P7817167145759929153

`A334203(2*(n+1))-A064415(n+1)`
-/

namespace A329697.P7817167145759929153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1)) - A064415 (n + 1)

end

end A329697.P7817167145759929153

namespace A329697

/-- `A334203(2*(n+1))-A064415(n+1)` -/
def P7817167145759929153.Spec : Prop :=
  ∀ n, P7817167145759929153.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P1147508004676783207

`A336469(n+1)+A001221(2*(n+1))-1`
-/

namespace A329697.P1147508004676783207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) + (A001221 (2 * (n + 1)) - 1)

end

end A329697.P1147508004676783207

namespace A329697

/-- `A336469(n+1)+A001221(2*(n+1))-1` -/
def P1147508004676783207.Spec : Prop :=
  ∀ n, P1147508004676783207.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P5403321555465622651

`A336469(n+1)+val(A319100((n+1)/and(n+1, -(n+1))), 2)`
-/

namespace A329697.P5403321555465622651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) + (SequenceMachineLib.valuation (A319100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat 2 : ℤ)

end

end A329697.P5403321555465622651

namespace A329697

/-- `A336469(n+1)+val(A319100((n+1)/and(n+1, -(n+1))), 2)` -/
def P5403321555465622651.Spec : Prop :=
  ∀ n, P5403321555465622651.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P3154021992372467621

`A336396(n+1)+A001222(A000265(n+1))`
-/

namespace A329697.P3154021992372467621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (n + 1) + A001222 (A000265 (n + 1)).toNat

end

end A329697.P3154021992372467621

namespace A329697

/-- `A336396(n+1)+A001222(A000265(n+1))` -/
def P3154021992372467621.Spec : Prop :=
  ∀ n, P3154021992372467621.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P3295867069351859865

`A336396(n+1)+A001222(A359587(n+1))`
-/

namespace A329697.P3295867069351859865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (n + 1) + A001222 (A359587 (n + 1)).toNat

end

end A329697.P3295867069351859865

namespace A329697

/-- `A336396(n+1)+A001222(A359587(n+1))` -/
def P3295867069351859865.Spec : Prop :=
  ∀ n, P3295867069351859865.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P8759621821840647646

`A336469(n+1)+∑{p}[A000265(n+1), A001222(#)]`
-/

namespace A329697.P8759621821840647646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A329697.P8759621821840647646

namespace A329697

/-- `A336469(n+1)+∑{p}[A000265(n+1), A001222(#)]` -/
def P8759621821840647646.Spec : Prop :=
  ∀ n, P8759621821840647646.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P11936898179854273536

`A334098(n+1)+A334861(n+1)-A334097(n+1)`
-/

namespace A329697.P11936898179854273536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (n + 1) + (A334861 (n + 1) - A334097 (n + 1))

end

end A329697.P11936898179854273536

namespace A329697

/-- `A334098(n+1)+A334861(n+1)-A334097(n+1)` -/
def P11936898179854273536.Spec : Prop :=
  ∀ n, P11936898179854273536.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P14568363189673631024

`A335875(n+1)+A335881(n+1)-A331410(n+1)`
-/

namespace A329697.P14568363189673631024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (n + 1) + (A335881 (n + 1) - A331410 (n + 1))

end

end A329697.P14568363189673631024

namespace A329697

/-- `A335875(n+1)+A335881(n+1)-A331410(n+1)` -/
def P14568363189673631024.Spec : Prop :=
  ∀ n, P14568363189673631024.a n = A329697 (n + 1)

end A329697

/-! ## A329697.P5947057346037550716

`A331410(n+1)+A336396(n+1)-A336921(n+1)`
-/

namespace A329697.P5947057346037550716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + (A336396 (n + 1) - A336921 (n + 1))

end

end A329697.P5947057346037550716

namespace A329697

/-- `A331410(n+1)+A336396(n+1)-A336921(n+1)` -/
def P5947057346037550716.Spec : Prop :=
  ∀ n, P5947057346037550716.a n = A329697 (n + 1)

end A329697

/-!
# A329698: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HD and DU.

The programs for A329698, there is no canonical definition to state claims against.
-/

/-! ## A329698.P12954086655769061119

`∑[A329695(n+1)]-n`
-/

namespace A329698.P12954086655769061119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A329698.P12954086655769061119

/-! ## A329698.P16192011050345636007

`A001489(n)+∑[A329695(n+1)]`
-/

namespace A329698.P16192011050345636007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329698.P16192011050345636007

/-! ## A329698.P8233401419865310398

`A024000(n+1)+∑[A329695(n+1)]`
-/

namespace A329698.P8233401419865310398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329698.P8233401419865310398

/-! ## A329698.P6953107869408670306

`Δ[A098057(n)]+1`
-/

namespace A329698.P6953107869408670306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A329698.P6953107869408670306

/-! ## A329698.P9578758335187156340

`Δ[A098057(n)-A001489(n)]`
-/

namespace A329698.P9578758335187156340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098057 n - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329698.P9578758335187156340

/-! ## A329698.P15195777980580620235

`Δ[A005843(n)-(n-A098057(n))]`
-/

namespace A329698.P15195777980580620235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A098057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329698.P15195777980580620235

/-!
# A329699: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HU and HH.

The programs for A329699, there is no canonical definition to state claims against.
-/

/-! ## A329699.P14112812785562317200

`A329700(n)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A329699.P14112812785562317200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A329700 n - a (n - 1)

end

end A329699.P14112812785562317200

/-! ## A329699.P4757735047621719942

`A167638(ceil(sqrt(n²+4)))+A167638(n)`
-/

namespace A329699.P4757735047621719942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167638 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat + A167638 n

end

end A329699.P4757735047621719942

/-! ## A329699.P12407315220124741715

`A028310(A329700(n)-a(n-1))` with `a(0)=1`
-/

namespace A329699.P12407315220124741715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A329700 n - a (n - 1)).toNat

end

end A329699.P12407315220124741715

/-! ## A329699.P11802739085094440635

`A028310(A167638(n+1)+A167638(n))`
-/

namespace A329699.P11802739085094440635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A167638 (n + 1) + A167638 n).toNat

end

end A329699.P11802739085094440635

/-! ## A329699.P13408908523181453682

`A167638(n)+A167637(A182531(n+2))`
-/

namespace A329699.P13408908523181453682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167638 n + A167637 (A182531 (n + 2)).toNat

end

end A329699.P13408908523181453682

