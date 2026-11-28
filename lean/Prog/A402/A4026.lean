import SequenceMachineLib.Basic
import Seq.B002.C001
import Seq.B003.C002
import Seq.B005.C002
import Seq.B006.C001
import Seq.B008.C001
import Seq.Opaque.C007
import Seq.Opaque.C013
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A402651: a(n) = A289383(A046072(n)); for n >= 3, number of prime races modulo n.

The programs for A402651, the canonical program `A402651.P10268435161352999712` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402651 has offset 1).

The definition of A402651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046072, A289383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A402651.P10268435161352999712

`A289383(A046072(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A402651

/-- `A289383(A046072(n+1))` -/
def P10268435161352999712.Spec : Prop :=
  ∀ n, P10268435161352999712.a n = A402651 (n + 1)

theorem P10268435161352999712.correct : P10268435161352999712.Spec := by
  intro n
  simp only [A402651, Nat.add_sub_cancel]

end A402651

/-!
# A402664: Number read at step n when, at each step, the top card of an endless deck of cards, all numbered 1 at the start, is read and put back below the next k cards, where k is the number read, and renumbered c+1 if the card now directly above it shows a number c <= k, or 1 otherwise.

The programs for A402664, there is no canonical definition to state claims against.
-/

/-! ## A402664.P11930564529180857753

`A228528(A060756(n))`
-/

namespace A402664.P11930564529180857753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228528 (A060756 n).toNat

end

end A402664.P11930564529180857753

/-! ## A402664.P41849611929390204

`A298735(A401289(n+1))`
-/

namespace A402664.P41849611929390204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A401289 (n + 1)).toNat

end

end A402664.P41849611929390204

/-! ## A402664.P15048703067511168871

`A280509(A125975(A154809(A125975(n+2))))`
-/

namespace A402664.P15048703067511168871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280509 (A125975 (A154809 (A125975 (n + 2)).toNat).toNat).toNat

end

end A402664.P15048703067511168871

/-! ## A402664.P342122884522258906

`A338199(A312544(n))`
-/

namespace A402664.P342122884522258906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338199 (A312544 n).toNat

end

end A402664.P342122884522258906

/-! ## A402664.P16621507944811396348

`A286520(A388970(n+2))`
-/

namespace A402664.P16621507944811396348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (A388970 (n + 2)).toNat

end

end A402664.P16621507944811396348

