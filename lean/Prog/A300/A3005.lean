import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C013
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A300500: Number of nX2 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300500, there is no canonical definition to state claims against.
-/

/-! ## A300500.P14343303648139276696

`A300506(∑[n+1]+2)`
-/

namespace A300500.P14343303648139276696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300500.P14343303648139276696

/-! ## A300500.P1687263738808716603

`A300944(∑[n+1]+2)`
-/

namespace A300500.P1687263738808716603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300500.P1687263738808716603

/-! ## A300500.P16201379774628157217

`A301498(∑[n+1]+2)`
-/

namespace A300500.P16201379774628157217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300500.P16201379774628157217

/-! ## A300500.P16699401544654348173

`or(2, A300506(A000096(n)+3))`
-/

namespace A300500.P16699401544654348173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A300506 (A000096 n + 3).toNat)

end

end A300500.P16699401544654348173

/-! ## A300500.P15962693640951974929

`A300888(∑[n+1]+2)`
-/

namespace A300500.P15962693640951974929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300500.P15962693640951974929

/-!
# A300501: Number of nX3 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300501, there is no canonical definition to state claims against.
-/

/-! ## A300501.P10919103280830364651

`A300506(∑[n+2]+4)`
-/

namespace A300501.P10919103280830364651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300501.P10919103280830364651

/-! ## A300501.P17013803189701248662

`A300506(A167614(n+1))+char[19]`
-/

namespace A300501.P17013803189701248662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300501.P17013803189701248662

/-! ## A300501.P5298477935391733910

`A016192(n)*A300506(A167614(n+1))`
-/

namespace A300501.P5298477935391733910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A300506 (A167614 (n + 1)).toNat

end

end A300501.P5298477935391733910

/-! ## A300501.P1116998162254845563

`gcd(A025469(n), A300506(A167614(n+1)))`
-/

namespace A300501.P1116998162254845563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A300506 (A167614 (n + 1)).toNat)

end

end A300501.P1116998162254845563

/-! ## A300501.P6335448509594071254

`lcm(A057077(n), A300506(A167614(n+1)))`
-/

namespace A300501.P6335448509594071254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A300506 (A167614 (n + 1)).toNat)

end

end A300501.P6335448509594071254

/-!
# A300502: Number of nX4 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300502, there is no canonical definition to state claims against.
-/

/-! ## A300502.P12348680498073281124

`A300506(∑[n+3]+7)`
-/

namespace A300502.P12348680498073281124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300502.P12348680498073281124

/-! ## A300502.P15186076039556977095

`A300506(A141214(n+1))%A298142(2*(n+2))`
-/

namespace A300502.P15186076039556977095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300506 (A141214 (n + 1)).toNat) (A298142 (2 * (n + 2)))

end

end A300502.P15186076039556977095

/-!
# A300503: Number of nX5 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300503, there is no canonical definition to state claims against.
-/

/-! ## A300503.P5467296236880675024

`A300506(A374005(n+1))`
-/

namespace A300503.P5467296236880675024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A374005 (n + 1)).toNat

end

end A300503.P5467296236880675024

/-! ## A300503.P4411451810562319095

`A300506(A167499(n+3))`
-/

namespace A300503.P4411451810562319095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A167499 (n + 3)).toNat

end

end A300503.P4411451810562319095

/-! ## A300503.P3412549595920436818

`A300506(A155212(n)+13)`
-/

namespace A300503.P3412549595920436818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A155212 n + 13).toNat

end

end A300503.P3412549595920436818

/-! ## A300503.P11320138701833119406

`A300506(A056000(n)+15)`
-/

namespace A300503.P11320138701833119406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A056000 n + 15).toNat

end

end A300503.P11320138701833119406

/-! ## A300503.P751232791530316801

`A300506(eq[7, A066657(n)])`
-/

namespace A300503.P751232791530316801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300503.P751232791530316801

/-!
# A300504: Number of nX6 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300504, there is no canonical definition to state claims against.
-/

/-! ## A300504.P7179985636130910404

`A300506(A374007(n+1))`
-/

namespace A300504.P7179985636130910404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A374007 (n + 1)).toNat

end

end A300504.P7179985636130910404

/-! ## A300504.P5461493246305092446

`A300506(A056115(n)+21)`
-/

namespace A300504.P5461493246305092446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A056115 n + 21).toNat

end

end A300504.P5461493246305092446

/-! ## A300504.P7508942293374177576

`A300506(Δ[A264443(n)]+10)`
-/

namespace A300504.P7508942293374177576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (f1 (n + 1) - f1 n + 10).toNat

end

end A300504.P7508942293374177576

/-! ## A300504.P6523350575971570112

`A300506(A167499(n+4)+1)`
-/

namespace A300504.P6523350575971570112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A167499 (n + 4) + 1).toNat

end

end A300504.P6523350575971570112

/-! ## A300504.P15105557595379917622

`A300506(A167614(n+4)+3)`
-/

namespace A300504.P15105557595379917622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A167614 (n + 4) + 3).toNat

end

end A300504.P15105557595379917622

/-!
# A300505: Number of nX7 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300505, there is no canonical definition to state claims against.
-/

/-! ## A300505.P10809457969934304853

`A300506(A374008(n+1))`
-/

namespace A300505.P10809457969934304853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A374008 (n + 1)).toNat

end

end A300505.P10809457969934304853

/-! ## A300505.P13021718542805526032

`A300506(A167487(n+5))`
-/

namespace A300505.P13021718542805526032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A167487 (n + 5)).toNat

end

end A300505.P13021718542805526032

/-! ## A300505.P12546471822284142644

`A300506(eq[11, A066657(n)])`
-/

namespace A300505.P12546471822284142644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300505.P12546471822284142644

/-! ## A300505.P13844151963964773495

`A300506(A167499(n+5)+2)`
-/

namespace A300505.P13844151963964773495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A167499 (n + 5) + 2).toNat

end

end A300505.P13844151963964773495

/-! ## A300505.P979328358674616596

`A300506(A000124(n+6)+6)`
-/

namespace A300505.P979328358674616596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (A000124 (n + 6) + 6).toNat

end

end A300505.P979328358674616596

/-!
# A300506: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300506, there is no canonical definition to state claims against.
-/

/-! ## A300506.P2902543125828578945

`A300888(n+1)+A178780(A059922(n))`
-/

namespace A300506.P2902543125828578945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (n + 1) + A178780 (A059922 n).toNat

end

end A300506.P2902543125828578945

/-! ## A300506.P13262810471905151500

`A300888(n+1)-A025469(A118190(n))`
-/

namespace A300506.P13262810471905151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (n + 1) - A025469 (A118190 n).toNat

end

end A300506.P13262810471905151500

/-! ## A300506.P3170117696078298325

`A300888(n+1)-A141728(A174545(n))`
-/

namespace A300506.P3170117696078298325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (n + 1) - A141728 (A174545 n).toNat

end

end A300506.P3170117696078298325

/-! ## A300506.P17618569152956549847

`A300888(n+1)-A107846(A316674(n))`
-/

namespace A300506.P17618569152956549847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (n + 1) - A107846 (A316674 n).toNat

end

end A300506.P17618569152956549847

/-! ## A300506.P3536715060811805974

`A301498(n+1)-A285006(A174545(n))`
-/

namespace A300506.P3536715060811805974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (n + 1) - A285006 (A174545 n).toNat

end

end A300506.P3536715060811805974

/-!
# A300510: Number of ways to write n^2 as 4^k*(m^2+1) + x^2 + y^2, where m is 1 or 2, and k,x,y are nonnegative integers with x <= y.

The programs for A300510, there is no canonical definition to state claims against.
-/

/-! ## A300510.P1870830524573204160

`A335905(n+1)+A069010(A262069(n+1))`
-/

namespace A300510.P1870830524573204160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335905 (n + 1) + A069010 (A262069 (n + 1)).toNat

end

end A300510.P1870830524573204160

/-! ## A300510.P496316435756416001

`A057526(A037283(n+1))+n%2`
-/

namespace A300510.P496316435756416001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A037283 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A300510.P496316435756416001

/-! ## A300510.P16883101955117061130

`A057526(A037283(n+1))+A000035(n)`
-/

namespace A300510.P16883101955117061130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A037283 (n + 1)).toNat + A000035 n

end

end A300510.P16883101955117061130

/-! ## A300510.P17052443950151465340

`A342507(n+1)+A086017(A365376(n))`
-/

namespace A300510.P17052443950151465340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) + A086017 (A365376 n).toNat

end

end A300510.P17052443950151465340

/-! ## A300510.P7889590053004153168

`A056239(n+1)-A107782(A000295(n))`
-/

namespace A300510.P7889590053004153168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A107782 (A000295 n).toNat

end

end A300510.P7889590053004153168

/-!
# A300511: Expansion of e.g.f. exp(Sum_{k>=1} p(k)*x^k/k!), where p(k) = number of partitions of k (A000041).

The programs for A300511, there is no canonical definition to state claims against.
-/

/-! ## A300511.P18195352307550620783

`A300632(n)+A025456(A000166(n))`
-/

namespace A300511.P18195352307550620783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300632 n + A025456 (A000166 n).toNat

end

end A300511.P18195352307550620783

/-! ## A300511.P8913856121996311707

`A300632(n)+A025466(A001096(n))`
-/

namespace A300511.P8913856121996311707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300632 n + A025466 (A001096 n).toNat

end

end A300511.P8913856121996311707

/-! ## A300511.P4957287989770874423

`A300632(n)+A025466(A001710(n))`
-/

namespace A300511.P4957287989770874423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300632 n + A025466 (A001710 n).toNat

end

end A300511.P4957287989770874423

/-! ## A300511.P2359456245595475325

`A300632(n)+A151755(A035079(n))`
-/

namespace A300511.P2359456245595475325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300632 n + A151755 (A035079 n).toNat

end

end A300511.P2359456245595475325

/-!
# A300514: Expansion of e.g.f. exp(Sum_{k>=1} q(k)*x^k/k!), where q(k) = number of partitions of k into distinct parts (A000009).

The programs for A300514, there is no canonical definition to state claims against.
-/

/-! ## A300514.P17727595307583276747

`A346747(n)+A036593(A023421(n))`
-/

namespace A300514.P17727595307583276747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346747 n + A036593 (A023421 n).toNat

end

end A300514.P17727595307583276747

/-! ## A300514.P6290346440844623110

`A026233(A317280(n)-A114402(n))`
-/

namespace A300514.P6290346440844623110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A317280 n - A114402 n).toNat

end

end A300514.P6290346440844623110

/-! ## A300514.P12962264636377200162

`A008616(A192634(n+2)+4)`
-/

namespace A300514.P12962264636377200162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A192634 (n + 2) + 4).toNat

end

end A300514.P12962264636377200162

/-!
# A300518: The greatest prime factor of the squarefree part of n, or 1 if n is square.

The programs for A300518, the canonical program `A300518.P859629294734505161` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300518 has offset 1).

The definition of A300518 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300518.P859629294734505161

`A006530(A007913(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A300518

/-- `A006530(A007913(n+1))` -/
def P859629294734505161.Spec : Prop :=
  ∀ n, P859629294734505161.a n = A300518 (n + 1)

theorem P859629294734505161.correct : P859629294734505161.Spec := by
  intro n
  simp only [A300518, Nat.add_sub_cancel]

end A300518

/-! ## A300518.P11860737415127999328

`A002034(Δ[A069891(n)])`
-/

namespace A300518.P11860737415127999328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (f1 (n + 1) - f1 n).toNat

end

end A300518.P11860737415127999328

namespace A300518

/-- `A002034(Δ[A069891(n)])` -/
def P11860737415127999328.Spec : Prop :=
  ∀ n, P11860737415127999328.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P10548424480935196533

`A006530(Δ[A069891(n)])`
-/

namespace A300518.P10548424480935196533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A300518.P10548424480935196533

namespace A300518

/-- `A006530(Δ[A069891(n)])` -/
def P10548424480935196533.Spec : Prop :=
  ∀ n, P10548424480935196533.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P15484359706505338751

`A034699(Δ[A069891(n)])`
-/

namespace A300518.P15484359706505338751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (n + 1) - f1 n).toNat

end

end A300518.P15484359706505338751

namespace A300518

/-- `A034699(Δ[A069891(n)])` -/
def P15484359706505338751.Spec : Prop :=
  ∀ n, P15484359706505338751.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P5228378012255829745

`A006530(A037449(n+1))`
-/

namespace A300518.P5228378012255829745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A037449 (n + 1)).toNat

end

end A300518.P5228378012255829745

namespace A300518

/-- `A006530(A037449(n+1))` -/
def P5228378012255829745.Spec : Prop :=
  ∀ n, P5228378012255829745.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P1809520361051262929

`A006530(A071975(n+1))`
-/

namespace A300518.P1809520361051262929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071975 (n + 1)).toNat

end

end A300518.P1809520361051262929

namespace A300518

/-- `A006530(A071975(n+1))` -/
def P1809520361051262929.Spec : Prop :=
  ∀ n, P1809520361051262929.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P9898784548141825789

`A006530(A350389(n+1))`
-/

namespace A300518.P9898784548141825789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A350389 (n + 1)).toNat

end

end A300518.P9898784548141825789

namespace A300518

/-- `A006530(A350389(n+1))` -/
def P9898784548141825789.Spec : Prop :=
  ∀ n, P9898784548141825789.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P12280489230647650680

`A006530(sqrt(A055491(n+1)))`
-/

namespace A300518.P12280489230647650680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A300518.P12280489230647650680

namespace A300518

/-- `A006530(sqrt(A055491(n+1)))` -/
def P12280489230647650680.Spec : Prop :=
  ∀ n, P12280489230647650680.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P1186828929068679462

`A006530(A069806(n+1)-(n+1))`
-/

namespace A300518.P1186828929068679462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069806 (n + 1) - (n + 1 : ℤ)).toNat

end

end A300518.P1186828929068679462

namespace A300518

/-- `A006530(A069806(n+1)-(n+1))` -/
def P1186828929068679462.Spec : Prop :=
  ∀ n, P1186828929068679462.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P1570232384927216030

`A006530(1-A326128(n+1)+n)`
-/

namespace A300518.P1570232384927216030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A326128 (n + 1) + (n : ℤ)).toNat

end

end A300518.P1570232384927216030

namespace A300518

/-- `A006530(1-A326128(n+1)+n)` -/
def P1570232384927216030.Spec : Prop :=
  ∀ n, P1570232384927216030.a n = A300518 (n + 1)

theorem P1570232384927216030.correct : P1570232384927216030.Spec := by
  intro n
  simp only [A300518, Nat.add_sub_cancel, A300518.P1570232384927216030.a, A300518.P859629294734505161.a, A006530, A006530.P13372528560459906635.a, A007913, A007913.P8131970495124731496.a, A326128, A326128.P4962900157914824511.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300518

/-! ## A300518.P10985039754465857824

`A006530((n+1)/A008833(n+1))`
-/

namespace A300518.P10985039754465857824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A300518.P10985039754465857824

namespace A300518

/-- `A006530((n+1)/A008833(n+1))` -/
def P10985039754465857824.Spec : Prop :=
  ∀ n, P10985039754465857824.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P17424134859527094187

`A002034(A053143(n+1)/(n+1))`
-/

namespace A300518.P17424134859527094187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A300518.P17424134859527094187

namespace A300518

/-- `A002034(A053143(n+1)/(n+1))` -/
def P17424134859527094187.Spec : Prop :=
  ∀ n, P17424134859527094187.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P13810941862793400132

`A006530(A053143(n+1)/(n+1))`
-/

namespace A300518.P13810941862793400132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A300518.P13810941862793400132

namespace A300518

/-- `A006530(A053143(n+1)/(n+1))` -/
def P13810941862793400132.Spec : Prop :=
  ∀ n, P13810941862793400132.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P15258253724084834012

`A053585((n+1)/A008833(n+1))`
-/

namespace A300518.P15258253724084834012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A300518.P15258253724084834012

namespace A300518

/-- `A053585((n+1)/A008833(n+1))` -/
def P15258253724084834012.Spec : Prop :=
  ∀ n, P15258253724084834012.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P5754274348051329160

`A006530((n+1)/A056623(n+1))`
-/

namespace A300518.P5754274348051329160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A056623 (n + 1) : ℚ))).toNat

end

end A300518.P5754274348051329160

namespace A300518

/-- `A006530((n+1)/A056623(n+1))` -/
def P5754274348051329160.Spec : Prop :=
  ∀ n, P5754274348051329160.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P6618479127091826749

`A006530(gcd(n+1, A055491(n+1)))`
-/

namespace A300518.P6618479127091826749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (A055491 (n + 1)))

end

end A300518.P6618479127091826749

namespace A300518

/-- `A006530(gcd(n+1, A055491(n+1)))` -/
def P6618479127091826749.Spec : Prop :=
  ∀ n, P6618479127091826749.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P10128085460978135786

`A006530((n+1)/A000188(n+1)²)`
-/

namespace A300518.P10128085460978135786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ))).toNat

end

end A300518.P10128085460978135786

namespace A300518

/-- `A006530((n+1)/A000188(n+1)²)` -/
def P10128085460978135786.Spec : Prop :=
  ∀ n, P10128085460978135786.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P9294800629093327336

`A006530(∑{d}[n+1, #]-A326126(n+1))`
-/

namespace A300518.P9294800629093327336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A326126 (n + 1)).toNat

end

end A300518.P9294800629093327336

namespace A300518

/-- `A006530(∑{d}[n+1, #]-A326126(n+1))` -/
def P9294800629093327336.Spec : Prop :=
  ∀ n, P9294800629093327336.a n = A300518 (n + 1)

theorem P9294800629093327336.correct : P9294800629093327336.Spec := by
  intro n
  simp only [A300518, Nat.add_sub_cancel, A300518.P9294800629093327336.f1, A300518.P9294800629093327336.a, A300518.P859629294734505161.a, A006530, A006530.P13372528560459906635.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300518

/-! ## A300518.P15582216706558483687

`A006530(A055231(A038387(n+1)))`
-/

namespace A300518.P15582216706558483687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055231 (A038387 (n + 1)).toNat).toNat

end

end A300518.P15582216706558483687

namespace A300518

/-- `A006530(A055231(A038387(n+1)))` -/
def P15582216706558483687.Spec : Prop :=
  ∀ n, P15582216706558483687.a n = A300518 (n + 1)

end A300518

/-! ## A300518.P12268890370394218296

`A006530(A055491(n+1))`
-/

namespace A300518.P12268890370394218296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055491 (n + 1)).toNat

end

end A300518.P12268890370394218296

namespace A300518

/-- `A006530(A055491(n+1))` -/
def P12268890370394218296.Spec : Prop :=
  ∀ n, P12268890370394218296.a n = A300518 (n + 1)

end A300518

/-!
# A300519: Convolution of n! and n^n.

The programs for A300519, there is no canonical definition to state claims against.
-/

/-! ## A300519.P6305873474910216390

`A052561(n)-A250245(A001147(n))`
-/

namespace A300519.P6305873474910216390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052561 n - A250245 (A001147 n).toNat

end

end A300519.P6305873474910216390

/-! ## A300519.P15450073865312047010

`or(A238516(A261005(n)), A369196(n))`
-/

namespace A300519.P15450073865312047010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238516 (A261005 n).toNat) (A369196 n)

end

end A300519.P15450073865312047010

/-!
# A300520: Expansion of Product_{k>=1} 1 / (1 - Fibonacci(k)*x^k).

The programs for A300520, there is no canonical definition to state claims against.
-/

/-! ## A300520.P4317743655137412664

`A243082(n)-A011731(A026549(n))`
-/

namespace A300520.P4317743655137412664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243082 n - A011731 (A026549 n).toNat

end

end A300520.P4317743655137412664

/-! ## A300520.P11333292085394597946

`A243082(n)-A294937(A064568(n+1))`
-/

namespace A300520.P11333292085394597946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243082 n - A294937 (A064568 (n + 1)).toNat

end

end A300520.P11333292085394597946

/-! ## A300520.P15155041466600716197

`A243082(n)-A093956(A322949(n+1))`
-/

namespace A300520.P15155041466600716197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243082 n - A093956 (A322949 (n + 1)).toNat

end

end A300520.P15155041466600716197

/-! ## A300520.P5873400779499458710

`A243082(n)-A198517(A103040(n+1))`
-/

namespace A300520.P5873400779499458710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243082 n - A198517 (A103040 (n + 1)).toNat

end

end A300520.P5873400779499458710

/-! ## A300520.P16185507646172226099

`A243082(n)-A135136(A241705(n+1))`
-/

namespace A300520.P16185507646172226099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243082 n - A135136 (A241705 (n + 1)).toNat

end

end A300520.P16185507646172226099

/-!
# A300522: a(n) = (5*n + 3)*(5*n + 4)*(5*n + 5)/6.

The programs for A300522, the canonical program `A300522.P18009439653395195161` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300522 has offset 0).

The definition of A300522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+3)*(5*n+4)*(5*n+5)/6` (program `A300522.P3467218236212348100`, by `A300522.P3467218236212348100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300522.P3467218236212348100

`(5*n+3)*(5*n+4)*(5*n+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300522.P3467218236212348100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 3) * (5 * n + 4) * (5 * n + 5) : ℚ) / 6

end

end A300522.P3467218236212348100

namespace A300522

/-- `(5*n+3)*(5*n+4)*(5*n+5)/6` -/
def P3467218236212348100.Spec : Prop :=
  ∀ n, P3467218236212348100.a n = (A300522 n : ℚ)

theorem P3467218236212348100.correct : P3467218236212348100.Spec := by
  intro n
  simp only [A300522, Nat.add_sub_cancel, A300522.P3467218236212348100.a, A300522.P18009439653395195161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300522

/-! ## A300522.P18009439653395195161

`C(5*(n+1), 3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300522

/-- `C(5*(n+1), 3)` -/
def P18009439653395195161.Spec : Prop :=
  ∀ n, (P18009439653395195161.a n : ℤ) = A300522 n

theorem P18009439653395195161.correct : P18009439653395195161.Spec := by
  intro n
  simp only [A300522]

end A300522

/-! ## A300522.P5030988865274150738

`∑[A164015(2*n)+A164015(n)]`
-/

namespace A300522.P5030988865274150738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164015 (2 * n) + A164015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300522.P5030988865274150738

namespace A300522

/-- `∑[A164015(2*n)+A164015(n)]` -/
def P5030988865274150738.Spec : Prop :=
  ∀ n, P5030988865274150738.a n = A300522 n

end A300522

/-! ## A300522.P18256504994589751463

`A000292(5*n+3)`
-/

namespace A300522.P18256504994589751463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (5 * n + 3)

end

end A300522.P18256504994589751463

namespace A300522

/-- `A000292(5*n+3)` -/
def P18256504994589751463.Spec : Prop :=
  ∀ n, P18256504994589751463.a n = A300522 n

theorem P18256504994589751463.correct : P18256504994589751463.Spec := by
  intro n
  simp only [A300522, Nat.add_sub_cancel, A300522.P18256504994589751463.a, A300522.P18009439653395195161.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300522

/-! ## A300522.P9611744319418923489

`∑[A082450(5*n+2)]`
-/

namespace A300522.P9611744319418923489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082450 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300522.P9611744319418923489

namespace A300522

/-- `∑[A082450(5*n+2)]` -/
def P9611744319418923489.Spec : Prop :=
  ∀ n, P9611744319418923489.a n = A300522 n

end A300522

/-! ## A300522.P1246988606255001687

`A351860(A168101(n+1))`
-/

namespace A300522.P1246988606255001687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351860 (A168101 (n + 1)).toNat

end

end A300522.P1246988606255001687

namespace A300522

/-- `A351860(A168101(n+1))` -/
def P1246988606255001687.Spec : Prop :=
  ∀ n, P1246988606255001687.a n = A300522 n

end A300522

/-! ## A300522.P9740658852205452592

`lcm(5, A000292(A016885(n)))`
-/

namespace A300522.P9740658852205452592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A000292 (A016885 n).toNat)

end

end A300522.P9740658852205452592

namespace A300522

/-- `lcm(5, A000292(A016885(n)))` -/
def P9740658852205452592.Spec : Prop :=
  ∀ n, (P9740658852205452592.a n : ℤ) = A300522 n

end A300522

/-! ## A300522.P8076751025914473741

`A000292(A008587(n+1))-A008587(n+1)²`
-/

namespace A300522.P8076751025914473741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008587 (n + 1)).toNat - A008587 (n + 1) ^ 2

end

end A300522.P8076751025914473741

namespace A300522

/-- `A000292(A008587(n+1))-A008587(n+1)²` -/
def P8076751025914473741.Spec : Prop :=
  ∀ n, P8076751025914473741.a n = A300522 n

end A300522

/-! ## A300522.P17665805933945887395

`A008804(10*n+4)`
-/

namespace A300522.P17665805933945887395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (10 * n + 4)

end

end A300522.P17665805933945887395

namespace A300522

/-- `A008804(10*n+4)` -/
def P17665805933945887395.Spec : Prop :=
  ∀ n, P17665805933945887395.a n = A300522 n

end A300522

/-! ## A300522.P14243731306700506351

`A058187(10*n+4)`
-/

namespace A300522.P14243731306700506351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (10 * n + 4)

end

end A300522.P14243731306700506351

namespace A300522

/-- `A058187(10*n+4)` -/
def P14243731306700506351.Spec : Prop :=
  ∀ n, P14243731306700506351.a n = A300522 n

end A300522

/-! ## A300522.P9770680452533866973

`A005232(10*n+5)`
-/

namespace A300522.P9770680452533866973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (10 * n + 5)

end

end A300522.P9770680452533866973

namespace A300522

/-- `A005232(10*n+5)` -/
def P9770680452533866973.Spec : Prop :=
  ∀ n, P9770680452533866973.a n = A300522 n

end A300522

/-! ## A300522.P12327925363554642713

`A160790(10*n+5)`
-/

namespace A300522.P12327925363554642713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (10 * n + 5)

end

end A300522.P12327925363554642713

namespace A300522

/-- `A160790(10*n+5)` -/
def P12327925363554642713.Spec : Prop :=
  ∀ n, P12327925363554642713.a n = A300522 n

end A300522

/-! ## A300522.P1501619469188465069

`A294085(10*n+5)`
-/

namespace A300522.P1501619469188465069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294085 (10 * n + 5)

end

end A300522.P1501619469188465069

namespace A300522

/-- `A294085(10*n+5)` -/
def P1501619469188465069.Spec : Prop :=
  ∀ n, P1501619469188465069.a n = A300522 n

end A300522

/-! ## A300522.P8846840801155942121

`A190717(A139606(n))`
-/

namespace A300522.P8846840801155942121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A139606 n).toNat

end

end A300522.P8846840801155942121

namespace A300522

/-- `A190717(A139606(n))` -/
def P8846840801155942121.Spec : Prop :=
  ∀ n, P8846840801155942121.a n = A300522 n

end A300522

/-! ## A300522.P6729513575862087437

`A190717(A063157(n+1))`
-/

namespace A300522.P6729513575862087437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A063157 (n + 1)).toNat

end

end A300522.P6729513575862087437

namespace A300522

/-- `A190717(A063157(n+1))` -/
def P6729513575862087437.Spec : Prop :=
  ∀ n, P6729513575862087437.a n = A300522 n

end A300522

/-! ## A300522.P12127152245601219618

`A190717(A164284(n+1))`
-/

namespace A300522.P12127152245601219618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A164284 (n + 1)).toNat

end

end A300522.P12127152245601219618

namespace A300522

/-- `A190717(A164284(n+1))` -/
def P12127152245601219618.Spec : Prop :=
  ∀ n, P12127152245601219618.a n = A300522 n

end A300522

/-! ## A300522.P13388244043965258248

`A190717(A257645(n)-6)`
-/

namespace A300522.P13388244043965258248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A257645 n - 6).toNat

end

end A300522.P13388244043965258248

namespace A300522

/-- `A190717(A257645(n)-6)` -/
def P13388244043965258248.Spec : Prop :=
  ∀ n, P13388244043965258248.a n = A300522 n

end A300522

/-! ## A300522.P9911534737434399477

`A190717(A257645(2*n)/2)`
-/

namespace A300522.P9911534737434399477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (SequenceMachineLib.roundAway ((A257645 (2 * n) : ℚ) / 2)).toNat

end

end A300522.P9911534737434399477

namespace A300522

/-- `A190717(A257645(2*n)/2)` -/
def P9911534737434399477.Spec : Prop :=
  ∀ n, P9911534737434399477.a n = A300522 n

end A300522

/-! ## A300522.P3592917780055049257

`A008643(A063155(n+1))`
-/

namespace A300522.P3592917780055049257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008643 (A063155 (n + 1)).toNat

end

end A300522.P3592917780055049257

namespace A300522

/-- `A008643(A063155(n+1))` -/
def P3592917780055049257.Spec : Prop :=
  ∀ n, P3592917780055049257.a n = A300522 n

end A300522

/-! ## A300522.P10748384490327959920

`A029300(A304158(n+1))`
-/

namespace A300522.P10748384490327959920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029300 (A304158 (n + 1)).toNat

end

end A300522.P10748384490327959920

namespace A300522

/-- `A029300(A304158(n+1))` -/
def P10748384490327959920.Spec : Prop :=
  ∀ n, P10748384490327959920.a n = A300522 n

end A300522

/-!
# A300523: a(n) = (5*n + 5)*(5*n + 6)*(5*n + 7)/6.

The programs for A300523, the canonical program `A300523.P10682042098472220260` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300523 has offset 0).

The definition of A300523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+5)*(5*n+6)*(5*n+7)/6` (program `A300523.P5109983458933311659`, by `A300523.P5109983458933311659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300523.P5109983458933311659

`(5*n+5)*(5*n+6)*(5*n+7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300523.P5109983458933311659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 5) * (5 * n + 6) * (5 * n + 7) : ℚ) / 6

end

end A300523.P5109983458933311659

namespace A300523

/-- `(5*n+5)*(5*n+6)*(5*n+7)/6` -/
def P5109983458933311659.Spec : Prop :=
  ∀ n, P5109983458933311659.a n = (A300523 n : ℚ)

theorem P5109983458933311659.correct : P5109983458933311659.Spec := by
  intro n
  simp only [A300523, Nat.add_sub_cancel, A300523.P5109983458933311659.a, A300523.P10682042098472220260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300523

/-! ## A300523.P10682042098472220260

`C(5*n+7, 3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300523

/-- `C(5*n+7, 3)` -/
def P10682042098472220260.Spec : Prop :=
  ∀ n, (P10682042098472220260.a n : ℤ) = A300523 n

theorem P10682042098472220260.correct : P10682042098472220260.Spec := by
  intro n
  simp only [A300523]

end A300523

/-! ## A300523.P15101753479443122970

`∑[A164015(2*n+1)+A164015(n)]`
-/

namespace A300523.P15101753479443122970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164015 (2 * n + 1) + A164015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300523.P15101753479443122970

namespace A300523

/-- `∑[A164015(2*n+1)+A164015(n)]` -/
def P15101753479443122970.Spec : Prop :=
  ∀ n, P15101753479443122970.a n = A300523 n

end A300523

/-! ## A300523.P11630356840675544147

`A000292(5*(n+1))`
-/

namespace A300523.P11630356840675544147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (5 * (n + 1))

end

end A300523.P11630356840675544147

namespace A300523

/-- `A000292(5*(n+1))` -/
def P11630356840675544147.Spec : Prop :=
  ∀ n, P11630356840675544147.a n = A300523 n

theorem P11630356840675544147.correct : P11630356840675544147.Spec := by
  intro n
  simp only [A300523, Nat.add_sub_cancel, A300523.P11630356840675544147.a, A300523.P10682042098472220260.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300523

/-! ## A300523.P4122341380545972348

`record[A000292(5*A007599(n))]`
-/

namespace A300523.P4122341380545972348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (5 * A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300523.P4122341380545972348

namespace A300523

/-- `record[A000292(5*A007599(n))]` -/
def P4122341380545972348.Spec : Prop :=
  ∀ n, P4122341380545972348.a n = A300523 n

end A300523

/-! ## A300523.P9259739621647116062

`record[A000292(5*A008611(n))]`
-/

namespace A300523.P9259739621647116062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (5 * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300523.P9259739621647116062

namespace A300523

/-- `record[A000292(5*A008611(n))]` -/
def P9259739621647116062.Spec : Prop :=
  ∀ n, P9259739621647116062.a n = A300523 n

end A300523

/-! ## A300523.P1756062180629260981

`record[A000292(5*A028242(n))]`
-/

namespace A300523.P1756062180629260981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (5 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300523.P1756062180629260981

namespace A300523

/-- `record[A000292(5*A028242(n))]` -/
def P1756062180629260981.Spec : Prop :=
  ∀ n, P1756062180629260981.a n = A300523 n

end A300523

/-! ## A300523.P1778284909987360565

`abs(A000292(A016897(n)+1)-1)+1`
-/

namespace A300523.P1778284909987360565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000292 (A016897 n + 1).toNat - 1| + 1

end

end A300523.P1778284909987360565

namespace A300523

/-- `abs(A000292(A016897(n)+1)-1)+1` -/
def P1778284909987360565.Spec : Prop :=
  ∀ n, P1778284909987360565.a n = A300523 n

end A300523

/-! ## A300523.P6471435707584997486

`A351860(A016873(n+1))`
-/

namespace A300523.P6471435707584997486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351860 (A016873 (n + 1)).toNat

end

end A300523.P6471435707584997486

namespace A300523

/-- `A351860(A016873(n+1))` -/
def P6471435707584997486.Spec : Prop :=
  ∀ n, P6471435707584997486.a n = A300523 n

end A300523

/-! ## A300523.P8189748231412382542

`record[A000292(5*A103221(n))]`
-/

namespace A300523.P8189748231412382542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (5 * A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300523.P8189748231412382542

namespace A300523

/-- `record[A000292(5*A103221(n))]` -/
def P8189748231412382542.Spec : Prop :=
  ∀ n, P8189748231412382542.a n = A300523 n

end A300523

/-! ## A300523.P4068561780859905511

`A008804(10*n+8)`
-/

namespace A300523.P4068561780859905511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (10 * n + 8)

end

end A300523.P4068561780859905511

namespace A300523

/-- `A008804(10*n+8)` -/
def P4068561780859905511.Spec : Prop :=
  ∀ n, P4068561780859905511.a n = A300523 n

end A300523

/-! ## A300523.P14812498452437024966

`A005232(or(1, 10*n+8))`
-/

namespace A300523.P14812498452437024966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (Nat.lor 1 (10 * n + 8))

end

end A300523.P14812498452437024966

namespace A300523

/-- `A005232(or(1, 10*n+8))` -/
def P14812498452437024966.Spec : Prop :=
  ∀ n, P14812498452437024966.a n = A300523 n

end A300523

/-! ## A300523.P6324820179768518460

`A005232(A017377(n))`
-/

namespace A300523.P6324820179768518460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A017377 n).toNat

end

end A300523.P6324820179768518460

namespace A300523

/-- `A005232(A017377(n))` -/
def P6324820179768518460.Spec : Prop :=
  ∀ n, P6324820179768518460.a n = A300523 n

end A300523

/-! ## A300523.P12564135301936433747

`A058187(2*A016897(n))`
-/

namespace A300523.P12564135301936433747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * A016897 n).toNat

end

end A300523.P12564135301936433747

namespace A300523

/-- `A058187(2*A016897(n))` -/
def P12564135301936433747.Spec : Prop :=
  ∀ n, P12564135301936433747.a n = A300523 n

end A300523

/-! ## A300523.P9666333021161582749

`A058187(A016897(n)+A016897(n)+1)`
-/

namespace A300523.P9666333021161582749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (A016897 n + (A016897 n + 1)).toNat

end

end A300523.P9666333021161582749

namespace A300523

/-- `A058187(A016897(n)+A016897(n)+1)` -/
def P9666333021161582749.Spec : Prop :=
  ∀ n, P9666333021161582749.a n = A300523 n

end A300523

/-! ## A300523.P15673492187557788977

`Δ[∑[A006918(A008592(n))]/2]`
-/

namespace A300523.P15673492187557788977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A008592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300523.P15673492187557788977

namespace A300523

/-- `Δ[∑[A006918(A008592(n))]/2]` -/
def P15673492187557788977.Spec : Prop :=
  ∀ n, P15673492187557788977.a n = (A300523 n : ℚ)

end A300523

/-! ## A300523.P4648600598014787349

`A190717(A257645(n))`
-/

namespace A300523.P4648600598014787349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 (A257645 n).toNat

end

end A300523.P4648600598014787349

namespace A300523

/-- `A190717(A257645(n))` -/
def P4648600598014787349.Spec : Prop :=
  ∀ n, P4648600598014787349.a n = A300523 n

end A300523

/-! ## A300523.P14744730393375270039

`A190718(A114698(n+2))`
-/

namespace A300523.P14744730393375270039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A114698 (n + 2)).toNat

end

end A300523.P14744730393375270039

namespace A300523

/-- `A190718(A114698(n+2))` -/
def P14744730393375270039.Spec : Prop :=
  ∀ n, P14744730393375270039.a n = A300523 n

end A300523

/-!
# A300524: Number of (not necessarily maximal) cliques in the n-polygon diagonal intersection graph.

The programs for A300524, there is no canonical definition to state claims against.
-/

/-! ## A300524.P8457084292600484093

`1+A007569(n+3)+A062361(n+3)+A135565(n+3)`
-/

namespace A300524.P8457084292600484093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007569 (n + 3) + A062361 (n + 3) + A135565 (n + 3)

end

end A300524.P8457084292600484093

/-!
# A300531: Matching number of the n-polygon diagonal intersection graph.

The programs for A300531, there is no canonical definition to state claims against.
-/

/-! ## A300531.P5664777491018443549

`floor(A007569(n+3)/2)`
-/

namespace A300531.P5664777491018443549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007569 (n + 3) : ℚ) / 2⌋

end

end A300531.P5664777491018443549

/-! ## A300531.P13804642854103762815

`A004526(A007569(n+3))`
-/

namespace A300531.P13804642854103762815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007569 (n + 3)).toNat

end

end A300531.P13804642854103762815

/-! ## A300531.P4015203307118062297

`A065033(A007569(n+3)-1)`
-/

namespace A300531.P4015203307118062297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007569 (n + 3) - 1).toNat

end

end A300531.P4015203307118062297

/-! ## A300531.P2753943875073428183

`A110654(A007569(n+3)-1)`
-/

namespace A300531.P2753943875073428183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007569 (n + 3) - 1).toNat

end

end A300531.P2753943875073428183

/-! ## A300531.P591682753823713159

`A008619(A007569(n+3)-2)`
-/

namespace A300531.P591682753823713159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007569 (n + 3) - 2).toNat

end

end A300531.P591682753823713159

/-!
# A300532: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300532, there is no canonical definition to state claims against.
-/

/-! ## A300532.P3954677397094455041

`A300539(∑[4*n]+1)`
-/

namespace A300532.P3954677397094455041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300532.P3954677397094455041

/-! ## A300532.P14933932080127667578

`record[gcd(A114327(n), A300539(n+1))]`
-/

namespace A300532.P14933932080127667578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A300539 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300532.P14933932080127667578

/-! ## A300532.P12756601854942136501

`A327780(n)+A300539(A001844(n))`
-/

namespace A300532.P12756601854942136501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327780 n + A300539 (A001844 n).toNat

end

end A300532.P12756601854942136501

/-! ## A300532.P3890122983948616627

`A065648(n)*A300539(A001844(n))`
-/

namespace A300532.P3890122983948616627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A300539 (A001844 n).toNat

end

end A300532.P3890122983948616627

/-! ## A300532.P11110619311494234539

`lcm(A132729(n), A300539(A001844(n)))`
-/

namespace A300532.P11110619311494234539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132729 n) (A300539 (A001844 n).toNat)

end

end A300532.P11110619311494234539

/-!
# A300533: Number of nX2 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300533, the canonical program `A300533.P14630595143216855161` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300533 has offset 1).

The definition of A300533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300533.P14630595143216855161

`a(n-1)+4*a(n-2)+2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=16, a(4)=40, a(5)=113`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300533

/-- `a(n-1)+4*a(n-2)+2*a(n-3)-a(n-6)` -/
def P14630595143216855161.Spec : Prop :=
  ∀ n, P14630595143216855161.a n = A300533 (n + 1)

theorem P14630595143216855161.correct : P14630595143216855161.Spec := by
  intro n
  simp only [A300533, Nat.add_sub_cancel]

end A300533

/-! ## A300533.P4352306517323913676

`record[ratio[A301531(n+1)]]`
-/

namespace A300533.P4352306517323913676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300533.P4352306517323913676

namespace A300533

/-- `record[ratio[A301531(n+1)]]` -/
def P4352306517323913676.Spec : Prop :=
  ∀ n, P4352306517323913676.a n = (A300533 (n + 1) : ℚ)

end A300533

/-! ## A300533.P18171398227836598982

`A301531(∑[n+1]+2)`
-/

namespace A300533.P18171398227836598982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300533.P18171398227836598982

namespace A300533

/-- `A301531(∑[n+1]+2)` -/
def P18171398227836598982.Spec : Prop :=
  ∀ n, P18171398227836598982.a n = A300533 (n + 1)

end A300533

/-! ## A300533.P4862975294828712011

`record[ratio[A300539(n+1)]]`
-/

namespace A300533.P4862975294828712011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300533.P4862975294828712011

namespace A300533

/-- `record[ratio[A300539(n+1)]]` -/
def P4862975294828712011.Spec : Prop :=
  ∀ n, P4862975294828712011.a n = (A300533 (n + 1) : ℚ)

end A300533

/-! ## A300533.P364171768359231138

`record[ratio[A300923(n+1)]]`
-/

namespace A300533.P364171768359231138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300533.P364171768359231138

namespace A300533

/-- `record[ratio[A300923(n+1)]]` -/
def P364171768359231138.Spec : Prop :=
  ∀ n, P364171768359231138.a n = (A300533 (n + 1) : ℚ)

end A300533

/-!
# A300534: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300534, there is no canonical definition to state claims against.
-/

/-! ## A300534.P1643611274659680824

`A300539(∑[n+2]+4)`
-/

namespace A300534.P1643611274659680824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300534.P1643611274659680824

/-! ## A300534.P6285991762848572052

`lcm((-1)^∑{e}[n+1, #], A300539(A167614(n+1)))`
-/

namespace A300534.P6285991762848572052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A300539 (A167614 (n + 1)).toNat)

end

end A300534.P6285991762848572052

/-! ## A300534.P2249185972187358640

`A300539(A167614(n+1))+A025439(n)`
-/

namespace A300534.P2249185972187358640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A167614 (n + 1)).toNat + A025439 n

end

end A300534.P2249185972187358640

/-! ## A300534.P16568899657750834949

`A300539(A167614(n+1))+A185037(n)`
-/

namespace A300534.P16568899657750834949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A167614 (n + 1)).toNat + A185037 n

end

end A300534.P16568899657750834949

/-! ## A300534.P14389616731042361940

`A300539(A167614(n+1))%A017490(n)`
-/

namespace A300534.P14389616731042361940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300539 (A167614 (n + 1)).toNat) (A017490 n)

end

end A300534.P14389616731042361940

/-!
# A300535: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300535, there is no canonical definition to state claims against.
-/

/-! ## A300535.P8307147124423608088

`A300539(A141214(n)+7)`
-/

namespace A300535.P8307147124423608088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A141214 n + 7).toNat

end

end A300535.P8307147124423608088

/-! ## A300535.P15837178097947280379

`A300539(A052905(n)+9)`
-/

namespace A300535.P15837178097947280379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A052905 n + 9).toNat

end

end A300535.P15837178097947280379

/-! ## A300535.P1141080700659193155

`A300539(A055999(n)+10)`
-/

namespace A300535.P1141080700659193155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A055999 n + 10).toNat

end

end A300535.P1141080700659193155

/-! ## A300535.P14399137721732471708

`A300539(A167614(n+2)+1)`
-/

namespace A300535.P14399137721732471708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A167614 (n + 2) + 1).toNat

end

end A300535.P14399137721732471708

/-! ## A300535.P15383480086648424504

`A300539(eq[5, A131818(n+1)])`
-/

namespace A300535.P15383480086648424504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300535.P15383480086648424504

/-!
# A300536: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300536, there is no canonical definition to state claims against.
-/

/-! ## A300536.P3075062357236650712

`A300539(A155212(n)+13)`
-/

namespace A300536.P3075062357236650712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A155212 n + 13).toNat

end

end A300536.P3075062357236650712

/-! ## A300536.P9352472678496476479

`A300539(A056000(n)+15)`
-/

namespace A300536.P9352472678496476479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A056000 n + 15).toNat

end

end A300536.P9352472678496476479

/-! ## A300536.P14820448290703330473

`A300539(A038722(Δ[A264443(n)]))`
-/

namespace A300536.P14820448290703330473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A300536.P14820448290703330473

/-! ## A300536.P17137977254942798588

`A300539(Δ[A264443(n)])`
-/

namespace A300536.P17137977254942798588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (f1 (n + 1) - f1 n).toNat

end

end A300536.P17137977254942798588

/-! ## A300536.P6318280626512684644

`A300539(A374005(n+1))`
-/

namespace A300536.P6318280626512684644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A374005 (n + 1)).toNat

end

end A300536.P6318280626512684644

/-!
# A300537: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300537, there is no canonical definition to state claims against.
-/

/-! ## A300537.P14263000306491481837

`A300539(eq[7, A131818(n+1)])`
-/

namespace A300537.P14263000306491481837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300537.P14263000306491481837

/-! ## A300537.P7693991350960928073

`A300539(A374007(n+1))`
-/

namespace A300537.P7693991350960928073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A374007 (n + 1)).toNat

end

end A300537.P7693991350960928073

/-! ## A300537.P16227470963248815939

`A300539(A052905(n+3))`
-/

namespace A300537.P16227470963248815939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A052905 (n + 3)).toNat

end

end A300537.P16227470963248815939

/-! ## A300537.P640751668669201128

`A300539(eq[3, A219347(n)])`
-/

namespace A300537.P640751668669201128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300537.P640751668669201128

/-! ## A300537.P2191983243592925955

`A300539(eq[5, A193592(n)])`
-/

namespace A300537.P2191983243592925955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300537.P2191983243592925955

/-!
# A300538: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300538, there is no canonical definition to state claims against.
-/

/-! ## A300538.P15248481509567068350

`A300539(A167499(n+5)+2)`
-/

namespace A300538.P15248481509567068350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A167499 (n + 5) + 2).toNat

end

end A300538.P15248481509567068350

/-! ## A300538.P1736326224185818422

`A300539(eq[8, A131818(n+1)])`
-/

namespace A300538.P1736326224185818422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300538.P1736326224185818422

/-! ## A300538.P7521934671391418101

`A300539(A374008(n+1))`
-/

namespace A300538.P7521934671391418101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A374008 (n + 1)).toNat

end

end A300538.P7521934671391418101

/-! ## A300538.P7188123198819361454

`A300539(A055999(n+4))`
-/

namespace A300538.P7188123198819361454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (A055999 (n + 4)).toNat

end

end A300538.P7188123198819361454

/-! ## A300538.P17137824354200886022

`A300539(eq[4, A219347(n)])`
-/

namespace A300538.P17137824354200886022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300538.P17137824354200886022

/-!
# A300539: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300539, there is no canonical definition to state claims against.
-/

/-! ## A300539.P5901931170267049761

`A300966(n+1)+A111829(A299905(n))`
-/

namespace A300539.P5901931170267049761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (n + 1) + A111829 (A299905 n).toNat

end

end A300539.P5901931170267049761

/-! ## A300539.P10172087190459604300

`A301531(n+1)-A326214(A299905(n))`
-/

namespace A300539.P10172087190459604300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (n + 1) - A326214 (A299905 n).toNat

end

end A300539.P10172087190459604300

/-! ## A300539.P1261328990277460622

`A301531(n+1)/A006519(A259515(n+1))`
-/

namespace A300539.P1261328990277460622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301531 (n + 1) : ℚ) / (A006519 (A259515 (n + 1)).toNat : ℚ)

end

end A300539.P1261328990277460622

/-! ## A300539.P13141432582833975162

`gcd(A218072(A033849(n+1)), A301531(n+1))`
-/

namespace A300539.P13141432582833975162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218072 (A033849 (n + 1)).toNat) (A301531 (n + 1))

end

end A300539.P13141432582833975162

/-!
# A300540: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300540, there is no canonical definition to state claims against.
-/

/-! ## A300540.P16130936828446706411

`A300546(∑[4*n]+1)`
-/

namespace A300540.P16130936828446706411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300540.P16130936828446706411

/-! ## A300540.P14111566932249778352

`record[A003982(n)*A300546(n+1)]`
-/

namespace A300540.P14111566932249778352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300540.P14111566932249778352

/-! ## A300540.P9814223346316319565

`A300546(A001844(n))+A054908(n)`
-/

namespace A300540.P9814223346316319565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A001844 n).toNat + A054908 n

end

end A300540.P9814223346316319565

/-! ## A300540.P2922938615199981181

`A057427(n)*A300546(A001844(n))`
-/

namespace A300540.P2922938615199981181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300546 (A001844 n).toNat

end

end A300540.P2922938615199981181

/-! ## A300540.P16828719236520987937

`A158388(n)*A300546(A001844(n))`
-/

namespace A300540.P16828719236520987937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A300546 (A001844 n).toNat

end

end A300540.P16828719236520987937

/-!
# A300541: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300541, there is no canonical definition to state claims against.
-/

/-! ## A300541.P7447750817064760473

`A300546(∑[n+2]+4)`
-/

namespace A300541.P7447750817064760473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300541.P7447750817064760473

/-! ## A300541.P6618769827360615096

`A300546(A167614(n+1))%A017479(n)`
-/

namespace A300541.P6618769827360615096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300546 (A167614 (n + 1)).toNat) (A017479 n)

end

end A300541.P6618769827360615096

/-! ## A300541.P12873360479353514002

`gcd(A000038(n), A300546(A167614(n+1)))`
-/

namespace A300541.P12873360479353514002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300546 (A167614 (n + 1)).toNat)

end

end A300541.P12873360479353514002

/-! ## A300541.P3904789818476524019

`or(A000007(n), A300546(A167614(n+1)))`
-/

namespace A300541.P3904789818476524019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300546 (A167614 (n + 1)).toNat)

end

end A300541.P3904789818476524019

/-! ## A300541.P4203515832572389302

`or(A016389(n), A300546(A167614(n+1)))`
-/

namespace A300541.P4203515832572389302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A300546 (A167614 (n + 1)).toNat)

end

end A300541.P4203515832572389302

/-!
# A300542: Number of n X 4 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300542, there is no canonical definition to state claims against.
-/

/-! ## A300542.P5223705017383164996

`A300546(A374004(n+1))`
-/

namespace A300542.P5223705017383164996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A374004 (n + 1)).toNat

end

end A300542.P5223705017383164996

/-! ## A300542.P5011006935178656542

`A300546(A141214(n)+7)`
-/

namespace A300542.P5011006935178656542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A141214 n + 7).toNat

end

end A300542.P5011006935178656542

/-! ## A300542.P13931087981981337941

`A300546(A052905(n)+9)`
-/

namespace A300542.P13931087981981337941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A052905 n + 9).toNat

end

end A300542.P13931087981981337941

/-! ## A300542.P12594579495404980313

`A300546(A055999(n)+10)`
-/

namespace A300542.P12594579495404980313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A055999 n + 10).toNat

end

end A300542.P12594579495404980313

/-! ## A300542.P1396136556428279290

`A300546(Δ[A008778(n)]+6)`
-/

namespace A300542.P1396136556428279290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (f1 (n + 1) - f1 n + 6).toNat

end

end A300542.P1396136556428279290

/-!
# A300543: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300543, there is no canonical definition to state claims against.
-/

/-! ## A300543.P2226637584999943718

`A300546(A374005(n+1))`
-/

namespace A300543.P2226637584999943718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A374005 (n + 1)).toNat

end

end A300543.P2226637584999943718

/-! ## A300543.P7458835907609152839

`A300546(A133263(n+4)+3)`
-/

namespace A300543.P7458835907609152839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A133263 (n + 4) + 3).toNat

end

end A300543.P7458835907609152839

/-! ## A300543.P3326974555970682329

`A300546(A141214(n+1)+8)`
-/

namespace A300543.P3326974555970682329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A141214 (n + 1) + 8).toNat

end

end A300543.P3326974555970682329

/-! ## A300543.P522398344921497966

`A300546(eq[6, A131818(n+1)])`
-/

namespace A300543.P522398344921497966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300543.P522398344921497966

/-! ## A300543.P5490711347402060510

`A300546(Δ[A264443(n)])`
-/

namespace A300543.P5490711347402060510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (f1 (n + 1) - f1 n).toNat

end

end A300543.P5490711347402060510

/-!
# A300544: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300544, there is no canonical definition to state claims against.
-/

/-! ## A300544.P9186238606583511472

`A300546(A374007(n+1))`
-/

namespace A300544.P9186238606583511472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A374007 (n + 1)).toNat

end

end A300544.P9186238606583511472

/-! ## A300544.P2631088120508638152

`A300546(eq[7, A131818(n+1)])`
-/

namespace A300544.P2631088120508638152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300544.P2631088120508638152

/-! ## A300544.P4635625068222404666

`A300546(Δ[A023545(n+1)]+10)`
-/

namespace A300544.P4635625068222404666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (f1 (n + 1) - f1 n + 10).toNat

end

end A300544.P4635625068222404666

/-! ## A300544.P17649100166958420911

`A300546(A056119(n)+16)`
-/

namespace A300544.P17649100166958420911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A056119 n + 16).toNat

end

end A300544.P17649100166958420911

/-! ## A300544.P6902702308730211343

`A300546(eq[3, A219347(n)])`
-/

namespace A300544.P6902702308730211343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300544.P6902702308730211343

/-!
# A300545: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300545, there is no canonical definition to state claims against.
-/

/-! ## A300545.P10229859758432008413

`A300546(A374008(n+1))`
-/

namespace A300545.P10229859758432008413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A374008 (n + 1)).toNat

end

end A300545.P10229859758432008413

/-! ## A300545.P11125286677349105026

`A300546(A000217(n+6)+7)`
-/

namespace A300545.P11125286677349105026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A000217 (n + 6) + 7).toNat

end

end A300545.P11125286677349105026

/-! ## A300545.P17674700091338683236

`A300546(eq[8, A131818(n+1)])`
-/

namespace A300545.P17674700091338683236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300545.P17674700091338683236

/-! ## A300545.P703659544165568751

`A300546(A055999(n+4))`
-/

namespace A300545.P703659544165568751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (A055999 (n + 4)).toNat

end

end A300545.P703659544165568751

/-! ## A300545.P570600108485388112

`A300546(eq[4, A219347(n)])`
-/

namespace A300545.P570600108485388112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300545.P570600108485388112

/-!
# A300546: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300546, there is no canonical definition to state claims against.
-/

/-! ## A300546.P8819705628306737487

`A300973(n+1)+A016389(A022166(n))`
-/

namespace A300546.P8819705628306737487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (n + 1) + A016389 (A022166 n).toNat

end

end A300546.P8819705628306737487

/-! ## A300546.P10724799112877677365

`A300973(n+1)+A016389(A027336(n))`
-/

namespace A300546.P10724799112877677365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (n + 1) + A016389 (A027336 n).toNat

end

end A300546.P10724799112877677365

/-! ## A300546.P5824668955096339689

`A300973(n+1)-A016389(A086645(n))`
-/

namespace A300546.P5824668955096339689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (n + 1) - A016389 (A086645 n).toNat

end

end A300546.P5824668955096339689

/-! ## A300546.P11634425760686596586

`A300973(n+1)-A007814(A157156(n))`
-/

namespace A300546.P11634425760686596586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (n + 1) - A007814 (A157156 n).toNat

end

end A300546.P11634425760686596586

/-! ## A300546.P4635990653451396281

`A300973(n+1)-A060510(A131070(n))`
-/

namespace A300546.P4635990653451396281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (n + 1) - A060510 (A131070 n).toNat

end

end A300546.P4635990653451396281

/-!
# A300548: a(n) = [x^n] Product_{d|n} 1/(1 + x^d).

The programs for A300548, there is no canonical definition to state claims against.
-/

/-! ## A300548.P2756790651909447044

`A230103(n)-A230103(A070933(n))`
-/

namespace A300548.P2756790651909447044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 n - A230103 (A070933 n).toNat

end

end A300548.P2756790651909447044

/-! ## A300548.P4347447240510461289

`A133872(A036884(n+1))-A070288(3*n+1)`
-/

namespace A300548.P4347447240510461289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A036884 (n + 1)).toNat - A070288 (3 * n + 1)

end

end A300548.P4347447240510461289

/-!
# A300549: a(n) = [x^n] Product_{d|n} (1 + x^d)/(1 - x^d).

The programs for A300549, there is no canonical definition to state claims against.
-/

/-! ## A300549.P15990866242715287757

`A052126(A290418(3*n)+A175505(n+1))`
-/

namespace A300549.P15990866242715287757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A290418 (3 * n) + A175505 (n + 1)).toNat

end

end A300549.P15990866242715287757

/-! ## A300549.P4060599201093138696

`A323014(A107589(n+1))+A008277(2*n+1)`
-/

namespace A300549.P4060599201093138696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A107589 (n + 1)).toNat + A008277 (2 * n + 1)

end

end A300549.P4060599201093138696

/-!
# A300550: Edge cover number of the n-polygon diagonal intersection graph.

The programs for A300550, there is no canonical definition to state claims against.
-/

/-! ## A300550.P17201791613916338279

`ceil(A007569(n+3)/2)`
-/

namespace A300550.P17201791613916338279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007569 (n + 3) : ℚ) / 2⌉

end

end A300550.P17201791613916338279

/-! ## A300550.P12762780365524210788

`A065033(A007569(n+3))`
-/

namespace A300550.P12762780365524210788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007569 (n + 3)).toNat

end

end A300550.P12762780365524210788

/-! ## A300550.P18124064001362180235

`A004526(A007569(n+3)+1)`
-/

namespace A300550.P18124064001362180235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007569 (n + 3) + 1).toNat

end

end A300550.P18124064001362180235

/-! ## A300550.P5612527228075292975

`A123108(A007569(n+3)+1)`
-/

namespace A300550.P5612527228075292975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A007569 (n + 3) + 1).toNat

end

end A300550.P5612527228075292975

/-! ## A300550.P891362636075815683

`A008619(A007569(n+3)-1)`
-/

namespace A300550.P891362636075815683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007569 (n + 3) - 1).toNat

end

end A300550.P891362636075815683

/-!
# A300553: Number of 5-cycles in the n-polygon diagonal intersection graph.

The programs for A300553, there is no canonical definition to state claims against.
-/

/-! ## A300553.P3683872287393201441

`n*record[A373822(n+3)]`
-/

namespace A300553.P3683872287393201441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373822 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300553.P3683872287393201441

/-! ## A300553.P18393023845565290622

`n*(A020607(n+1)+1)`
-/

namespace A300553.P18393023845565290622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A020607 (n + 1) + 1)

end

end A300553.P18393023845565290622

/-!
# A300559: a(n) = n*(n+1)!/2 + 1.

The programs for A300559, the canonical program `A300559.P15332861236027180194` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300559 has offset 0).

The definition of A300559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)!/2+1` (program `A300559.P11525460963011046020`, by `A300559.P11525460963011046020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300559.P15332861236027180194

`A180119(n)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300559

/-- `A180119(n)+1` -/
def P15332861236027180194.Spec : Prop :=
  ∀ n, P15332861236027180194.a n = A300559 n

theorem P15332861236027180194.correct : P15332861236027180194.Spec := by
  intro n
  simp only [A300559]

end A300559

/-! ## A300559.P11525460963011046020

`n*(n+1)!/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300559.P11525460963011046020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial (n + 1) : ℚ) / 2 + 1

end

end A300559.P11525460963011046020

namespace A300559

/-- `n*(n+1)!/2+1` -/
def P11525460963011046020.Spec : Prop :=
  ∀ n, P11525460963011046020.a n = (A300559 n : ℚ)

theorem P11525460963011046020.correct : P11525460963011046020.Spec := by
  intro n
  simp only [A300559, Nat.add_sub_cancel, A300559.P11525460963011046020.a, A300559.P15332861236027180194.a, A180119, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300559

/-! ## A300559.P6750453166545091746

`n!*∑[n]+1`
-/

namespace A300559.P6750453166545091746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A300559.P6750453166545091746

namespace A300559

/-- `n!*∑[n]+1` -/
def P6750453166545091746.Spec : Prop :=
  ∀ n, (P6750453166545091746.a n : ℤ) = A300559 n

end A300559

/-! ## A300559.P9186492811446231114

`abs(xor(n!*∑[n], -1))`
-/

namespace A300559.P9186492811446231114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-1)|

end

end A300559.P9186492811446231114

namespace A300559

/-- `abs(xor(n!*∑[n], -1))` -/
def P9186492811446231114.Spec : Prop :=
  ∀ n, P9186492811446231114.a n = A300559 n

end A300559

/-! ## A300559.P16368797892245429425

`-xor(n!*∑[n], -1)`
-/

namespace A300559.P16368797892245429425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-1)

end

end A300559.P16368797892245429425

namespace A300559

/-- `-xor(n!*∑[n], -1)` -/
def P16368797892245429425.Spec : Prop :=
  ∀ n, P16368797892245429425.a n = A300559 n

end A300559

/-! ## A300559.P12134969030764740103

`n/2*∏[n+1]+1`
-/

namespace A300559.P12134969030764740103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 1

end

end A300559.P12134969030764740103

namespace A300559

/-- `n/2*∏[n+1]+1` -/
def P12134969030764740103.Spec : Prop :=
  ∀ n, P12134969030764740103.a n = (A300559 n : ℚ)

end A300559

/-! ## A300559.P12152905993011774381

`record[n*A047920(n)+1]`
-/

namespace A300559.P12152905993011774381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047920 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300559.P12152905993011774381

namespace A300559

/-- `record[n*A047920(n)+1]` -/
def P12152905993011774381.Spec : Prop :=
  ∀ n, P12152905993011774381.a n = A300559 n

end A300559

/-! ## A300559.P11113911094765999106

`record[n*A047922(n)+1]`
-/

namespace A300559.P11113911094765999106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047922 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300559.P11113911094765999106

namespace A300559

/-- `record[n*A047922(n)+1]` -/
def P11113911094765999106.Spec : Prop :=
  ∀ n, P11113911094765999106.a n = A300559 n

end A300559

/-! ## A300559.P14574507510040127727

`∑[A074143(n+1)-A001563(n)]`
-/

namespace A300559.P14574507510040127727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) - A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300559.P14574507510040127727

namespace A300559

/-- `∑[A074143(n+1)-A001563(n)]` -/
def P14574507510040127727.Spec : Prop :=
  ∀ n, P14574507510040127727.a n = A300559 n

end A300559

/-! ## A300559.P4929206678716568137

`(A062119(n+1)+2)/2`
-/

namespace A300559.P4929206678716568137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062119 (n + 1) + 2 : ℚ) / 2

end

end A300559.P4929206678716568137

namespace A300559

/-- `(A062119(n+1)+2)/2` -/
def P4929206678716568137.Spec : Prop :=
  ∀ n, P4929206678716568137.a n = (A300559 n : ℚ)

theorem P4929206678716568137.correct : P4929206678716568137.Spec := by
  intro n
  simp only [A300559, Nat.add_sub_cancel, A300559.P4929206678716568137.a, A300559.P15332861236027180194.a, A062119, A062119.P6281908133648097894.a, A180119, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300559

/-!
# A300560: Deep factorization of n, written in binary: replace each factor p^e with the expression [primepi(p) [ e ]], iterate on these numbers, finally replace '[' and ']' with '1' and '0'.

The programs for A300560, there is no canonical definition to state claims against.
-/

/-! ## A300560.P3107695638393860505

`A007088(A300561(n+1))`
-/

namespace A300560.P3107695638393860505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A300561 (n + 1)).toNat

end

end A300560.P3107695638393860505

/-!
# A300562: Condensed deep factorization of n, in binary. (Remove all trailing 0's and one trailing 1 from A300560.)

The programs for A300562, there is no canonical definition to state claims against.
-/

/-! ## A300562.P12331783408042654226

`A007088(A300563(n+1))`
-/

namespace A300562.P12331783408042654226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A300563 (n + 1)).toNat

end

end A300562.P12331783408042654226

/-!
# A300563: Condensed deep factorization of n, A300562(n) written in decimal: floor of odd part of A300561(n) divided by 2.

The programs for A300563, there is no canonical definition to state claims against.
-/

/-! ## A300563.P18367749666577147446

`A025480(A300561(n+1)+A057428(n))`
-/

namespace A300563.P18367749666577147446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A300561 (n + 1) + A057428 n).toNat

end

end A300563.P18367749666577147446

/-!
# A300564: Numbers z such that there is a solution to x^2 + y^3 = z^4 with x, y, z >= 1.

The programs for A300564, there is no canonical definition to state claims against.
-/

/-! ## A300564.P4185551291691022025

`record[A242183(ceil(or(2, n)/2))]`
-/

namespace A300564.P4185551291691022025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242183 ⌈(Nat.lor 2 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P4185551291691022025

/-! ## A300564.P13028745049870905056

`record[A242183(round(or(2, n)/2))]`
-/

namespace A300564.P13028745049870905056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242183 (SequenceMachineLib.roundAway ((Nat.lor 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P13028745049870905056

/-! ## A300564.P13176712327882575328

`record[A242183(floor(lcm(2, n)/4)+1)]`
-/

namespace A300564.P13176712327882575328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242183 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P13176712327882575328

/-! ## A300564.P11071433889213715156

`record[A242183(n+1)%(16*n+15)]`
-/

namespace A300564.P11071433889213715156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242183 (n + 1)) (16 * n + 15 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P11071433889213715156

/-! ## A300564.P2341708625333497331

`record[A242183(floor(n/(7-n%3))+1)]`
-/

namespace A300564.P2341708625333497331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242183 (⌊(n : ℚ) / (7 - ((n % 3 : ℕ) : ℤ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P2341708625333497331

/-! ## A300564.P380138616609642810

`record[A242183(floor(n/10)+(n+1)%15)]`
-/

namespace A300564.P380138616609642810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242183 (⌊(n : ℚ) / 10⌋ + (((n + 1) % 15 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P380138616609642810

/-! ## A300564.P4714905230305905909

`record[A242183(floor(n/((-1)^n+3))+1)]`
-/

namespace A300564.P4714905230305905909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242183 (⌊(n : ℚ) / ((-1) ^ n + 3 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300564.P4714905230305905909

/-! ## A300564.P6069608813653778525

`lt[1, A242192(A028310(n))+1]`
-/

namespace A300564.P6069608813653778525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242192 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300564.P6069608813653778525

/-!
# A300565: Numbers z such that there is a solution to x^3 + y^4 = z^5 with x, y, z >= 1.

The programs for A300565, there is no canonical definition to state claims against.
-/

/-! ## A300565.P1103405255719797748

`A000010(A303265(n+1))/(∑{e}[n+1, #]+1)`
-/

namespace A300565.P1103405255719797748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A303265 (n + 1)).toNat : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℚ)

end

end A300565.P1103405255719797748

/-!
# A300569: Independence number of the n-polygon diagonal intersection graph.

The programs for A300569, there is no canonical definition to state claims against.
-/

/-! ## A300569.P8066982346220828638

`A007569(n+3)-A296517(n+3)`
-/

namespace A300569.P8066982346220828638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 3) - A296517 (n + 3)

end

end A300569.P8066982346220828638

/-!
# A300570: a(n) is the concatenation n in base 2, n-1 in base 2, ..., 1 in base 2.

The programs for A300570, there is no canonical definition to state claims against.
-/

/-! ## A300570.P16892916999762353146

`A300571(n+1)/10`
-/

namespace A300570.P16892916999762353146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300571 (n + 1) : ℚ) / 10

end

end A300570.P16892916999762353146

/-! ## A300570.P9006079268416695256

`Δ[∑[A300571(n)]/10]`
-/

namespace A300570.P9006079268416695256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300571 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300570.P9006079268416695256

/-!
# A300572: Numbers k such that k and the sum of the divisors of k have the same prime signature.

The programs for A300572, the canonical program `A300572.P15724675085850262782` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300572 has offset 1).

The definition of A300572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300572.P15724675085850262782

`∩[A037197(n+1), A067762(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A300572

/-- `∩[A037197(n+1), A067762(n+1)]` -/
def P15724675085850262782.Spec : Prop :=
  ∀ n, (P15724675085850262782.a n : ℤ) = A300572 (n + 1)

theorem P15724675085850262782.correct : P15724675085850262782.Spec := by
  intro n
  simp only [A300572, Nat.add_sub_cancel]

end A300572

/-! ## A300572.P1194032078166596488

`eq[A046523(n+1), A276528(n+1)]+1`
-/

namespace A300572.P1194032078166596488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A300572.P1194032078166596488

namespace A300572

/-- `eq[A046523(n+1), A276528(n+1)]+1` -/
def P1194032078166596488.Spec : Prop :=
  ∀ n, (P1194032078166596488.a n : ℤ) = A300572 (n + 1)

end A300572

/-! ## A300572.P14322417950816119185

`eq[A181821(A181819(n+1)), A276528(n+1)]+1`
-/

namespace A300572.P14322417950816119185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A300572.P14322417950816119185

namespace A300572

/-- `eq[A181821(A181819(n+1)), A276528(n+1)]+1` -/
def P14322417950816119185.Spec : Prop :=
  ∀ n, (P14322417950816119185.a n : ℤ) = A300572 (n + 1)

end A300572

/-! ## A300572.P14732575031130279495

`eq[A074206(A039653(n)+1), A074206(n)]`
-/

namespace A300572.P14732575031130279495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A039653 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300572.P14732575031130279495

namespace A300572

/-- `eq[A074206(A039653(n)+1), A074206(n)]` -/
def P14732575031130279495.Spec : Prop :=
  ∀ n, (P14732575031130279495.a n : ℤ) = A300572 (n + 1)

end A300572

/-! ## A300572.P4667057255226169335

`eq[A007425(A000203(n+1)), A007425(n+1)]+1`
-/

namespace A300572.P4667057255226169335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A300572.P4667057255226169335

namespace A300572

/-- `eq[A007425(A000203(n+1)), A007425(n+1)]+1` -/
def P4667057255226169335.Spec : Prop :=
  ∀ n, (P4667057255226169335.a n : ℤ) = A300572 (n + 1)

end A300572

/-!
# A300574: Coefficient of x^n in 1/((1-x)(1+x^3)(1-x^5)(1+x^7)(1-x^9)...).

The programs for A300574, there is no canonical definition to state claims against.
-/

/-! ## A300574.P15333078691038113895

`A294758(∑[n+2]-1)%4`
-/

namespace A300574.P15333078691038113895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294758 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) 4

end

end A300574.P15333078691038113895

/-! ## A300574.P15388607106274495357

`(A294758(A034856(n+1))+char[30])%4`
-/

namespace A300574.P15388607106274495357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294758 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) 4

end

end A300574.P15388607106274495357

/-! ## A300574.P2593502668416458606

`A067553(n)%A040314(A277323(n))`
-/

namespace A300574.P2593502668416458606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067553 n) (A040314 (A277323 n).toNat)

end

end A300574.P2593502668416458606

/-! ## A300574.P3434707200564362461

`and(A067553(n), A183993(A183991(n+1)))`
-/

namespace A300574.P3434707200564362461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067553 n) (A183993 (A183991 (n + 1)).toNat)

end

end A300574.P3434707200564362461

/-! ## A300574.P16679011009940254251

`A265837(n)%A000005(A049048(3*n+1))`
-/

namespace A300574.P16679011009940254251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265837 n) (A000005 (A049048 (3 * n + 1)).toNat)

end

end A300574.P16679011009940254251

/-!
# A300576: Number of nights required in the worst case to find the princess in a castle with n rooms arranged in a line (Castle and princess puzzle).

The programs for A300576, the canonical program `A300576.P15266707217078568501` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300576 has offset 1).

The definition of A300576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300576.P15266707217078568501

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300576

/-- `2*a(n-1)-a(n-2)` -/
def P15266707217078568501.Spec : Prop :=
  ∀ n, P15266707217078568501.a n = A300576 (n + 1)

theorem P15266707217078568501.correct : P15266707217078568501.Spec := by
  intro n
  simp only [A300576, Nat.add_sub_cancel]

end A300576

/-!
# A300579: Expansion of Product_{k>=1} 1/(1 - 3^(k-1)*x^k).

The programs for A300579, there is no canonical definition to state claims against.
-/

/-! ## A300579.P15509071582222940765

`A123249(6*a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A300579.P15509071582222940765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A123249 (6 * a (n - 2)).toNat

end

end A300579.P15509071582222940765

/-! ## A300579.P5827378130440923353

`A133310(18*a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A300579.P5827378130440923353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A133310 (18 * a (n - 2)).toNat

end

end A300579.P5827378130440923353

/-! ## A300579.P803806029667946249

`A334999(lcm(6, 4*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A300579.P803806029667946249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A334999 (Int.lcm 6 (4 * a (n - 2)))

end

end A300579.P803806029667946249

/-! ## A300579.P4253295622170212949

`A030065(∑[A282022(n)])`
-/

namespace A300579.P4253295622170212949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300579.P4253295622170212949

/-!
# A300580: Number of partitions of n into prime power parts (not including 1) that do not divide n.

The programs for A300580, there is no canonical definition to state claims against.
-/

/-! ## A300580.P14041375073883662756

`A319951(A300704(n))`
-/

namespace A300580.P14041375073883662756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A300704 n).toNat

end

end A300580.P14041375073883662756

/-! ## A300580.P9478707551010545113

`A285189(A300704(n))+A107846(n)`
-/

namespace A300580.P9478707551010545113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A300704 n).toNat + A107846 n

end

end A300580.P9478707551010545113

/-! ## A300580.P8895198159763312882

`A240600(A098743(n)*A300584(n))`
-/

namespace A300580.P8895198159763312882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A098743 n * A300584 n).toNat

end

end A300580.P8895198159763312882

/-! ## A300580.P16961163021531284012

`A285189(A098743(n)*A300584(n))`
-/

namespace A300580.P16961163021531284012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A098743 n * A300584 n).toNat

end

end A300580.P16961163021531284012

/-! ## A300580.P16416166508303011500

`A240600(lcm(A098743(n), A300584(n)))`
-/

namespace A300580.P16416166508303011500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (Int.lcm (A098743 n) (A300584 n))

end

end A300580.P16416166508303011500

/-!
# A300581: Expansion of Product_{k>=1} 1/(1 - 2^(k+1)*x^k).

The programs for A300581, there is no canonical definition to state claims against.
-/

/-! ## A300581.P2220359154186926263

`2^n*A070933(n)`
-/

namespace A300581.P2220359154186926263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A070933 n

end

end A300581.P2220359154186926263

/-! ## A300581.P7771361577434460146

`A151821(n+1)*A323583(n)`
-/

namespace A300581.P7771361577434460146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) * A323583 n

end

end A300581.P7771361577434460146

/-! ## A300581.P1104804770956250962

`lcm(A070933(n), A151821(n+1))`
-/

namespace A300581.P1104804770956250962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070933 n) (A151821 (n + 1))

end

end A300581.P1104804770956250962

/-! ## A300581.P3856212073755503774

`A070933(n)*A164073(Δ[n²])`
-/

namespace A300581.P3856212073755503774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n * A164073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A300581.P3856212073755503774

/-! ## A300581.P16086873968018763660

`-(A070933(n)*A157823(n+1))`
-/

namespace A300581.P16086873968018763660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A070933 n * A157823 (n + 1))

end

end A300581.P16086873968018763660

/-! ## A300581.P12077217731178823876

`A070933(n)/2*A000079(n+1)`
-/

namespace A300581.P12077217731178823876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070933 n : ℚ) / 2 * (A000079 (n + 1) : ℚ)

end

end A300581.P12077217731178823876

/-! ## A300581.P14315544391991451518

`ceil(A050621(n+1)/A034478(n)*A262444(n)/3)`
-/

namespace A300581.P14315544391991451518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050621 (n + 1) : ℚ) / (A034478 n : ℚ) * ((A262444 n : ℚ) / 3)⌉

end

end A300581.P14315544391991451518

/-!
# A300582: Expansion of Product_{k>=1} 1 / (1 - 3*2^k*x^k).

The programs for A300582, there is no canonical definition to state claims against.
-/

/-! ## A300582.P12466109777495962557

`2^n*A242587(n)`
-/

namespace A300582.P12466109777495962557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A242587 n

end

end A300582.P12466109777495962557

/-! ## A300582.P16682042685424963869

`abs(A171449(n)*A242587(n))`
-/

namespace A300582.P16682042685424963869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n * A242587 n|

end

end A300582.P16682042685424963869

/-! ## A300582.P12796830437573745914

`A000038(n)+A171449(n)*A242587(n)`
-/

namespace A300582.P12796830437573745914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + A171449 n * A242587 n

end

end A300582.P12796830437573745914

/-! ## A300582.P11767998857757520301

`A242587(n)%(A001047(n)+A000051(n)²)*A000079(n)`
-/

namespace A300582.P11767998857757520301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242587 n) (A001047 n + A000051 n ^ 2) * A000079 n

end

end A300582.P11767998857757520301

/-! ## A300582.P11792242431344545117

`(A000079(n)*A242587(n))%A016203(n+1)`
-/

namespace A300582.P11792242431344545117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n * A242587 n) (A016203 (n + 1))

end

end A300582.P11792242431344545117

/-!
# A300583: Expansion of Product_{k>=1} 1 / (1 - 2*3^k*x^k).

The programs for A300583, there is no canonical definition to state claims against.
-/

/-! ## A300583.P7609708038713398528

`3^n*A070933(n)`
-/

namespace A300583.P7609708038713398528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A070933 n

end

end A300583.P7609708038713398528

/-! ## A300583.P13222182365019148930

`A300581(n)/2^n*3^n`
-/

namespace A300583.P13222182365019148930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300581 n : ℚ) / (2 ^ n : ℚ) * (3 ^ n : ℚ)

end

end A300583.P13222182365019148930

/-! ## A300583.P7177533998913027315

`A025192(n)*A262444(n)`
-/

namespace A300583.P7177533998913027315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A262444 n

end

end A300583.P7177533998913027315

/-! ## A300583.P10858265027508763438

`A099856(n)*A323583(n)`
-/

namespace A300583.P10858265027508763438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n * A323583 n

end

end A300583.P10858265027508763438

/-! ## A300583.P15215728319923872192

`A070933(n)*A133494(n+1)`
-/

namespace A300583.P15215728319923872192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n * A133494 (n + 1)

end

end A300583.P15215728319923872192

/-! ## A300583.P5634602869498769431

`A070933(n)*A108411(2*n)`
-/

namespace A300583.P5634602869498769431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n * A108411 (2 * n)

end

end A300583.P5634602869498769431

/-! ## A300583.P5096192060067095281

`A070933(n)*A193731(∑[n+1])`
-/

namespace A300583.P5096192060067095281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n * A193731 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300583.P5096192060067095281

/-! ## A300583.P6088796331512340623

`floor(A110593(n+1)/2*A070933(n))`
-/

namespace A300583.P6088796331512340623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110593 (n + 1) : ℚ) / 2 * (A070933 n : ℚ)⌋

end

end A300583.P6088796331512340623

/-! ## A300583.P6816579587608516130

`A070933(n)*A098355(A000217(n))`
-/

namespace A300583.P6816579587608516130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070933 n * A098355 (A000217 n).toNat

end

end A300583.P6816579587608516130

/-! ## A300583.P13490039097156876282

`A068911(A004273(n))*A262444(n)`
-/

namespace A300583.P13490039097156876282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A004273 n).toNat * A262444 n

end

end A300583.P13490039097156876282

/-!
# A300584: Number of partitions of n into distinct prime power parts (not including 1) that do not divide n.

The programs for A300584, there is no canonical definition to state claims against.
-/

/-! ## A300584.P16292669386375678700

`A000001(A276391(n+1)*A341450(n))`
-/

namespace A300584.P16292669386375678700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A276391 (n + 1) * A341450 n).toNat

end

end A300584.P16292669386375678700

/-! ## A300584.P17243092342965209486

`A123578(A300585(n)%A300555(n+1))`
-/

namespace A300584.P17243092342965209486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.tmod (A300585 n) (A300555 (n + 1))).toNat

end

end A300584.P17243092342965209486

/-! ## A300584.P15530749327079693057

`A000001(A000043(n+1))*A123578(A300585(n))`
-/

namespace A300584.P15530749327079693057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000043 (n + 1)).toNat * A123578 (A300585 n).toNat

end

end A300584.P15530749327079693057

/-! ## A300584.P4321352474729055319

`A007359(n)-A360617(A100883(n))`
-/

namespace A300584.P4321352474729055319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n - A360617 (A100883 n).toNat

end

end A300584.P4321352474729055319

/-! ## A300584.P15582976428462256197

`A038548(A000079(n))-A324105(n+1)`
-/

namespace A300584.P15582976428462256197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A000079 n).toNat - A324105 (n + 1)

end

end A300584.P15582976428462256197

/-!
# A300585: Number of partitions of n into squarefree parts that do not divide n.

The programs for A300585, there is no canonical definition to state claims against.
-/

/-! ## A300585.P8566464786411741094

`round(A098743(n)/p?[A331048(n+1)])`
-/

namespace A300585.P8566464786411741094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A098743 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A300585.P8566464786411741094

/-! ## A300585.P4642777545855753767

`A136610(A300704(n))`
-/

namespace A300585.P4642777545855753767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136610 (A300704 n).toNat

end

end A300585.P4642777545855753767

/-! ## A300585.P322439778853857453

`A285189(A300706(n))`
-/

namespace A300585.P322439778853857453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A300706 n).toNat

end

end A300585.P322439778853857453

/-! ## A300585.P14250121769053659403

`A231714(A300584(n)^6)`
-/

namespace A300585.P14250121769053659403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231714 (A300584 n ^ 6).toNat

end

end A300585.P14250121769053659403

/-! ## A300585.P1781503944626368993

`A218975(n+1)-A001222(or(1, n))`
-/

namespace A300585.P1781503944626368993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218975 (n + 1) - A001222 (Nat.lor 1 n)

end

end A300585.P1781503944626368993

/-!
# A300586: Number of partitions of n into distinct squarefree parts that do not divide n.

The programs for A300586, there is no canonical definition to state claims against.
-/

/-! ## A300586.P5414348744383450884

`A025828(Δ[A003056(A181135(n+1))])`
-/

namespace A300586.P5414348744383450884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A181135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (f1 (n + 1) - f1 n).toNat

end

end A300586.P5414348744383450884

/-! ## A300586.P8366592115058638823

`A302243(A300706(n))`
-/

namespace A300586.P8366592115058638823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A300706 n).toNat

end

end A300586.P8366592115058638823

/-! ## A300586.P10881274836299808005

`A302243(A270061(n)*A300585(n))`
-/

namespace A300586.P10881274836299808005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A270061 n * A300585 n).toNat

end

end A300586.P10881274836299808005

/-!
# A300587: Real part of the n-th Gaussian prime x + i*y, x >= y >= 0, ordered by norm x^2 + y^2.

The programs for A300587, there is no canonical definition to state claims against.
-/

/-! ## A300587.P13901849847402702494

`sqrt(A055025(n+1)-A300588(n+1)²)`
-/

namespace A300587.P13901849847402702494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055025 (n + 1) - A300588 (n + 1) ^ 2 : ℝ)

end

end A300587.P13901849847402702494

/-! ## A300587.P3573893110752526342

`A239621(2*n+1)`
-/

namespace A300587.P3573893110752526342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (2 * n + 1)

end

end A300587.P3573893110752526342

/-! ## A300587.P2199625720725881033

`A239397(4*(n+1)-2)`
-/

namespace A300587.P2199625720725881033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (4 * (n + 1) - 2)

end

end A300587.P2199625720725881033

/-! ## A300587.P2422143097357297292

`A103431(∑[A055027(n+1)])`
-/

namespace A300587.P2422143097357297292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103431 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300587.P2422143097357297292

/-! ## A300587.P12484138236402920907

`A262689(A055025(n+1))`
-/

namespace A300587.P12484138236402920907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A055025 (n + 1)).toNat

end

end A300587.P12484138236402920907

/-! ## A300587.P13477332406121402310

`A133388(2*A055025(n+1)-A055025(n+1))`
-/

namespace A300587.P13477332406121402310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (2 * A055025 (n + 1) - A055025 (n + 1)).toNat

end

end A300587.P13477332406121402310

/-! ## A300587.P17904035644950994200

`A239621(n+n+1)+A055028(A002145(n+1))`
-/

namespace A300587.P17904035644950994200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (n + n + 1) + A055028 (A002145 (n + 1)).toNat

end

end A300587.P17904035644950994200

/-!
# A300588: Imaginary part y of the n-th Gaussian prime x + i*y, x >= y >= 0, ordered by norm x^2 + y^2 = A055025(n)^2.

The programs for A300588, there is no canonical definition to state claims against.
-/

/-! ## A300588.P3461339203211682488

`sqrt(A055025(n+1)-A300587(n+1)²)`
-/

namespace A300588.P3461339203211682488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055025 (n + 1) - A300587 (n + 1) ^ 2 : ℝ)

end

end A300588.P3461339203211682488

/-! ## A300588.P15759732089316958524

`A239621(2*(n+1))`
-/

namespace A300588.P15759732089316958524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (2 * (n + 1))

end

end A300588.P15759732089316958524

/-! ## A300588.P15163215561846935990

`A239397(4*n+1)`
-/

namespace A300588.P15163215561846935990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (4 * n + 1)

end

end A300588.P15163215561846935990

/-! ## A300588.P14212904864101685735

`or(char[1], A239621(n+2+n))`
-/

namespace A300588.P14212904864101685735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239621 (n + 2 + n))

end

end A300588.P14212904864101685735

/-! ## A300588.P17083115972903341886

`A239621(n+2+n)%A000217(n+6)`
-/

namespace A300588.P17083115972903341886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239621 (n + 2 + n)) (A000217 (n + 6))

end

end A300588.P17083115972903341886

/-! ## A300588.P12326373136708244418

`A239621(A051755(n+2))-A000007(n)`
-/

namespace A300588.P12326373136708244418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (A051755 (n + 2)).toNat - A000007 n

end

end A300588.P12326373136708244418

/-! ## A300588.P17239071488035540479

`lcm(A008683(A020484(n)), A239621(n+2+n))`
-/

namespace A300588.P17239071488035540479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A020484 n).toNat) (A239621 (n + 2 + n))

end

end A300588.P17239071488035540479

/-! ## A300588.P4318721025332408238

`A103432(∑[A055027(n+1)])`
-/

namespace A300588.P4318721025332408238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103432 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300588.P4318721025332408238

/-! ## A300588.P821804072097845652

`A064875(A055025(n+1))`
-/

namespace A300588.P821804072097845652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A055025 (n + 1)).toNat

end

end A300588.P821804072097845652

/-!
# A300589: a(n) = A300617(n) / (n*(n+1)/2) for n>=1.

The programs for A300589, there is no canonical definition to state claims against.
-/

/-! ## A300589.P2440229778776266961

`A300617(n+1)/((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300589.P2440229778776266961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300617 (n + 1) : ℚ) / (((n + 1) * (n + 2) : ℚ) / 2)

end

end A300589.P2440229778776266961

/-! ## A300589.P122630788413839423

`abs(A300617(n+1)/Δ[A000292(n)])`
-/

namespace A300589.P122630788413839423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A300617 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A300589.P122630788413839423

/-! ## A300589.P342404710111871525

`floor(A300617(n+1)/record[A008795(n)])`
-/

namespace A300589.P342404710111871525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300617 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A300589.P342404710111871525

/-! ## A300589.P16378607868354376004

`floor(A300617(n+1)/record[A038722(n+1)])`
-/

namespace A300589.P16378607868354376004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300617 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A300589.P16378607868354376004

/-! ## A300589.P11472237919202881866

`A300620(∑[n+2])/A007318(A141214(n))`
-/

namespace A300589.P11472237919202881866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300620 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A007318 (A141214 n).toNat : ℚ)

end

end A300589.P11472237919202881866

/-!
# A300591: O.g.f. A(x) satisfies [x^n] exp( n^2 * A(x) ) = n^2 * [x^(n-1)] exp( n^2 * A(x) ) for n >= 1.

The programs for A300591, there is no canonical definition to state claims against.
-/

/-! ## A300591.P6616364644193051076

`(n+1)*A300598(n+1)`
-/

namespace A300591.P6616364644193051076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A300598 (n + 1)

end

end A300591.P6616364644193051076

/-! ## A300591.P1907890810208473463

`A300625(∑[n+2])`
-/

namespace A300591.P1907890810208473463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300591.P1907890810208473463

/-! ## A300591.P6611067226556202740

`record[A300625(n+1)/A300625(n+3)]`
-/

namespace A300591.P6611067226556202740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300625 (n + 1) : ℚ) / (A300625 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300591.P6611067226556202740

/-! ## A300591.P546709094856435928

`record[root(A300625(n+1), A301906(n+1))]`
-/

namespace A300591.P546709094856435928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A300625 (n + 1) : ℝ) ^ (1 / (A301906 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300591.P546709094856435928

/-! ## A300591.P845654925106458792

`record[gcd(A089246(n), A300625(n+1))]`
-/

namespace A300591.P845654925106458792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089246 n) (A300625 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300591.P845654925106458792

/-!
# A300595: O.g.f. A(x) satisfies [x^n] exp( n^3 * A(x) ) = n^3 * [x^(n-1)] exp( n^3 * A(x) ) for n >= 1.

The programs for A300595, there is no canonical definition to state claims against.
-/

/-! ## A300595.P8794779282404993805

`A300625(∑[n+3]+1)`
-/

namespace A300595.P8794779282404993805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300595.P8794779282404993805

/-! ## A300595.P11902333597789008997

`record[A300625(Δ[A054974(n+2)])]`
-/

namespace A300595.P11902333597789008997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300595.P11902333597789008997

/-! ## A300595.P2769874057154217672

`record[A300625(n+1)/A300620(n+4)]`
-/

namespace A300595.P2769874057154217672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300625 (n + 1) : ℚ) / (A300620 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300595.P2769874057154217672

/-! ## A300595.P16763703965306971725

`record[A300625(n+1)/A300625(n+4)]`
-/

namespace A300595.P16763703965306971725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300625 (n + 1) : ℚ) / (A300625 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300595.P16763703965306971725

/-! ## A300595.P2330605916142944769

`record[A300625(gcd(n, A089246(n)))]`
-/

namespace A300595.P2330605916142944769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (Int.gcd (n : ℤ) (A089246 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300595.P2330605916142944769

/-!
# A300597: O.g.f. A(x) satisfies [x^n] exp( n^4 * A(x) ) = n^4 * [x^(n-1)] exp( n^4 * A(x) ) for n >= 1.

The programs for A300597, there is no canonical definition to state claims against.
-/

/-! ## A300597.P5758948226311859531

`A300625(A141214(n+1))`
-/

namespace A300597.P5758948226311859531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (A141214 (n + 1)).toNat

end

end A300597.P5758948226311859531

/-! ## A300597.P1101844885948752779

`A300625(eq[3, A193592(n)])`
-/

namespace A300597.P1101844885948752779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300597.P1101844885948752779

/-! ## A300597.P7457082065840196833

`A300625(Δ[A006416(n+2)])`
-/

namespace A300597.P7457082065840196833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (f1 (n + 1) - f1 n).toNat

end

end A300597.P7457082065840196833

/-! ## A300597.P18198218030259292720

`A300625(eq[4, A185782(n+1)])`
-/

namespace A300597.P18198218030259292720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300597.P18198218030259292720

/-!
# A300598: a(n) = A300591(n) / n for n>=1.

The programs for A300598, there is no canonical definition to state claims against.
-/

/-! ## A300598.P2615416126839008095

`A300591(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300598.P2615416126839008095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300591 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A300598.P2615416126839008095

/-! ## A300598.P17933089688123975943

`A300625(∑[n+2])/(n+1)`
-/

namespace A300598.P17933089688123975943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300625 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A300598.P17933089688123975943

/-! ## A300598.P18436189665784636974

`record[A300625(n+1)/A300625(n+3)]/(n+1)`
-/

namespace A300598.P18436189665784636974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300625 (n + 1) : ℚ) / (A300625 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℚ)

end

end A300598.P18436189665784636974

/-! ## A300598.P13357459307511131445

`A300625(A000096(n+1))%A286914(n+2)/(n+1)`
-/

namespace A300598.P13357459307511131445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A300625 (A000096 (n + 1)).toNat) (A286914 (n + 2)) : ℚ) / (n + 1 : ℚ)

end

end A300598.P13357459307511131445

/-! ## A300598.P6208416378281608620

`record[gcd(A089246(n), A300625(n+1))]/(n+1)`
-/

namespace A300598.P6208416378281608620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089246 n) (A300625 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A300598.P6208416378281608620

/-!
# A300599: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300599, there is no canonical definition to state claims against.
-/

/-! ## A300599.P9225867751911089319

`A300605(∑[4*n]+1)`
-/

namespace A300599.P9225867751911089319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300599.P9225867751911089319

/-! ## A300599.P6975697237240654526

`record[A300605(∑[A266981(n)])]`
-/

namespace A300599.P6975697237240654526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300599.P6975697237240654526

/-! ## A300599.P964207563090801940

`record[A300605(A272267(n+1))]`
-/

namespace A300599.P964207563090801940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300599.P964207563090801940

/-! ## A300599.P14094340496222339505

`A300605(A001844(n))+char[10]`
-/

namespace A300599.P14094340496222339505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300599.P14094340496222339505

/-! ## A300599.P7090864870951280602

`record[A300605(A226725(n+1)+1)]`
-/

namespace A300599.P7090864870951280602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A226725 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300599.P7090864870951280602

