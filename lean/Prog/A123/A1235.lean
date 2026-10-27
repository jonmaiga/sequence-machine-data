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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123500: Signature permutation of a nonrecursive Catalan automorphism: rotate a binary tree right if possible, otherwise apply *A089859.

The programs for A123500, there is no canonical definition to state claims against.
-/

/-! ## A123500.P31457732184453405

`A074680(A089851(A154123(A154122(A089853(n)))))`
-/

namespace A123500.P31457732184453405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089851 (A154123 (A154122 (A089853 n).toNat).toNat).toNat).toNat

end

end A123500.P31457732184453405

/-! ## A123500.P4671082809379814047

`A123503(A089861(n))`
-/

namespace A123500.P4671082809379814047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123503 (A089861 n).toNat

end

end A123500.P4671082809379814047

/-! ## A123500.P12007867450532139289

`A057163(A123499(A057163(n)))`
-/

namespace A123500.P12007867450532139289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A123499 (A057163 n).toNat).toNat

end

end A123500.P12007867450532139289

/-! ## A123500.P15819663700800327774

`A073270(A123499(A073270(n)))`
-/

namespace A123500.P15819663700800327774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A123499 (A073270 n).toNat).toNat

end

end A123500.P15819663700800327774

/-! ## A123500.P15248893629264164309

`A123503(A072796(A074680(n)))`
-/

namespace A123500.P15248893629264164309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123503 (A072796 (A074680 n).toNat).toNat

end

end A123500.P15248893629264164309

/-! ## A123500.P4573742492077440882

`A089850(A123503(A069770(n)))`
-/

namespace A123500.P4573742492077440882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A123503 (A069770 n).toNat).toNat

end

end A123500.P4573742492077440882

/-! ## A123500.P7428943260602703088

`A089863(A123499(A089863(n)))`
-/

namespace A123500.P7428943260602703088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A123499 (A089863 n).toNat).toNat

end

end A123500.P7428943260602703088

/-! ## A123500.P2888584491822192940

`A089863(A129611(A072796(A089859(n))))`
-/

namespace A123500.P2888584491822192940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A129611 (A072796 (A089859 n).toNat).toNat).toNat

end

end A123500.P2888584491822192940

/-! ## A123500.P717088226637555539

`A089859(A089859(A072796(A129612(n))))`
-/

namespace A123500.P717088226637555539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A089859 (A072796 (A129612 n).toNat).toNat).toNat

end

end A123500.P717088226637555539

/-! ## A123500.P16009763854061816772

`A089850(A123503(A089863(A089854(n))))`
-/

namespace A123500.P16009763854061816772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A123503 (A089863 (A089854 n).toNat).toNat).toNat

end

end A123500.P16009763854061816772

/-!
# A123501: Signature permutation of a Catalan automorphism: apply *A123497 at the root, then recurse into the left subtree of the right hand side subtree of a binary tree.

The programs for A123501, there is no canonical definition to state claims against.
-/

/-! ## A123501.P10978995551111981232

`A123497(A123502(A123497(A123502(A123497(n)))))`
-/

namespace A123501.P10978995551111981232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123497 (A123502 (A123497 (A123502 (A123497 n).toNat).toNat).toNat).toNat

end

end A123501.P10978995551111981232

/-!
# A123502: Signature permutation of a Catalan automorphism: first recurse into the left subtree of the right hand side subtree of a binary tree and after that apply *A123498 at the root.

The programs for A123502, there is no canonical definition to state claims against.
-/

/-! ## A123502.P18124844308917213262

`A123498(A123501(A123498(A123501(A123498(n)))))`
-/

namespace A123502.P18124844308917213262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123498 (A123501 (A123498 (A123501 (A123498 n).toNat).toNat).toNat).toNat

end

end A123502.P18124844308917213262

/-!
# A123503: An involution of nonnegative integers: signature permutation of a nonrecursive Catalan automorphism, row 253 of table A089840.

The programs for A123503, there is no canonical definition to state claims against.
-/

/-! ## A123503.P4114980554781286912

`A074680(A123499(A072796(n)))`
-/

namespace A123503.P4114980554781286912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A123499 (A072796 n).toNat).toNat

end

end A123503.P4114980554781286912

/-! ## A123503.P3479659652917418990

`A123500(A089858(n))`
-/

namespace A123503.P3479659652917418990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123500 (A089858 n).toNat

end

end A123503.P3479659652917418990

/-! ## A123503.P13226089494527640309

`A089861(A123499(n))`
-/

namespace A123503.P13226089494527640309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A123499 n).toNat

end

end A123503.P13226089494527640309

/-! ## A123503.P6490803986589335258

`A123500(A089854(A074679(n)))`
-/

namespace A123503.P6490803986589335258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123500 (A089854 (A074679 n).toNat).toNat

end

end A123503.P6490803986589335258

/-! ## A123503.P7598258244358123207

`A089864(A074680(A129611(n)))`
-/

namespace A123503.P7598258244358123207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A074680 (A129611 n).toNat).toNat

end

end A123503.P7598258244358123207

/-! ## A123503.P978598318855478469

`A069770(A123499(A089863(A069770(n))))`
-/

namespace A123503.P978598318855478469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123499 (A089863 (A069770 n).toNat).toNat).toNat

end

end A123503.P978598318855478469

/-! ## A123503.P4000331786948890801

`A089850(A123500(A089859(A089850(n))))`
-/

namespace A123503.P4000331786948890801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A123500 (A089859 (A089850 n).toNat).toNat).toNat

end

end A123503.P4000331786948890801

/-! ## A123503.P4486507264503762171

`A089850(A123500(A089863(A089854(n))))`
-/

namespace A123503.P4486507264503762171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A123500 (A089863 (A089854 n).toNat).toNat).toNat

end

end A123503.P4486507264503762171

/-! ## A123503.P12714440483363281536

`A089850(A123500(A089850(A089863(n))))`
-/

namespace A123503.P12714440483363281536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A123500 (A089850 (A089863 n).toNat).toNat).toNat

end

end A123503.P12714440483363281536

/-!
# A123504: Sequence generated from the first nontrivial zero of the Riemann zeta function.

The programs for A123504, there is no canonical definition to state claims against.
-/

/-! ## A123504.P12214723496431764729

`floor(log(A238170(n+2)))%2`
-/

namespace A123504.P12214723496431764729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.log (A238170 (n + 2) : ℝ)⌋ 2

end

end A123504.P12214723496431764729

/-! ## A123504.P13638705356153081976

`A000035(floor(log(A238170(n+2))))`
-/

namespace A123504.P13638705356153081976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊Real.log (A238170 (n + 2) : ℝ)⌋.toNat

end

end A123504.P13638705356153081976

/-! ## A123504.P15490990836801490885

`A260390((floor(log(A238170(n+2)))+1)²+1)`
-/

namespace A123504.P15490990836801490885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 ((⌊Real.log (A238170 (n + 2) : ℝ)⌋ + 1) ^ 2 + 1).toNat

end

end A123504.P15490990836801490885

/-! ## A123504.P1618938905084674310

`A260390(3*(floor(log(A238170(n+2)))-3)+1)`
-/

namespace A123504.P1618938905084674310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (3 * (⌊Real.log (A238170 (n + 2) : ℝ)⌋ - 3) + 1).toNat

end

end A123504.P1618938905084674310

/-! ## A123504.P2266133334429020070

`A030301(∑[record[A068486(n+1)]])`
-/

namespace A123504.P2266133334429020070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123504.P2266133334429020070

/-! ## A123504.P14834099441062204984

`A030301(A002145(n+1)*A025764(n))`
-/

namespace A123504.P14834099441062204984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A002145 (n + 1) * A025764 n).toNat

end

end A123504.P14834099441062204984

/-! ## A123504.P12835352283804016426

`A030301(lcm(A002145(n+1), A025764(n)))`
-/

namespace A123504.P12835352283804016426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (Int.lcm (A002145 (n + 1)) (A025764 n))

end

end A123504.P12835352283804016426

/-!
# A123506: Sequence generated from the second nontrivial zero of the Riemann zeta function.

The programs for A123506, there is no canonical definition to state claims against.
-/

/-! ## A123506.P18048023268169985999

`A179527(∑[A014692(A242100(n+1))])`
-/

namespace A123506.P18048023268169985999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (A242100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123506.P18048023268169985999

/-! ## A123506.P14880773882770972099

`A141728(A140808(n+1)%A090953(n))`
-/

namespace A123506.P14880773882770972099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141728 (Int.tmod (A140808 (n + 1)) (A090953 n)).toNat

end

end A123506.P14880773882770972099

/-! ## A123506.P13001538384905136375

`A141728(A154955(n+1)+A140808(n+1))`
-/

namespace A123506.P13001538384905136375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141728 (A154955 (n + 1) + A140808 (n + 1)).toNat

end

end A123506.P13001538384905136375

/-! ## A123506.P14701937749803056593

`A141728(A140808(n+1)-A322585(n+1))`
-/

namespace A123506.P14701937749803056593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141728 (A140808 (n + 1) - A322585 (n + 1)).toNat

end

end A123506.P14701937749803056593

/-! ## A123506.P4027389415382091239

`A322585(A152078(2*(n+1))%A000040(3*n+5))`
-/

namespace A123506.P4027389415382091239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (Int.tmod (A152078 (2 * (n + 1))) (A000040 (3 * n + 5))).toNat

end

end A123506.P4027389415382091239

/-!
# A123507: Lengths of bit runs in A123506.

The programs for A123507, there is no canonical definition to state claims against.
-/

/-! ## A123507.P14266763200150368949

`A143667(2*n+1)+A001221(A160654(n))`
-/

namespace A123507.P14266763200150368949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143667 (2 * n + 1) + A001221 (A160654 n).toNat

end

end A123507.P14266763200150368949

/-! ## A123507.P15954785116416287753

`A374630(A143282(n)+A139708(n+1))`
-/

namespace A123507.P15954785116416287753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (A143282 n + A139708 (n + 1)).toNat

end

end A123507.P15954785116416287753

/-! ## A123507.P14137885513215791458

`A307995(n+1)+A049084(A243051(n+1))`
-/

namespace A123507.P14137885513215791458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307995 (n + 1) + A049084 (A243051 (n + 1)).toNat

end

end A123507.P14137885513215791458

/-! ## A123507.P6192062523478048430

`A001222(A002182(2*(n+2))-A221035(n+1))`
-/

namespace A123507.P6192062523478048430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002182 (2 * (n + 2)) - A221035 (n + 1)).toNat

end

end A123507.P6192062523478048430

/-!
# A123508: 1-dimensional quasiperiodic heptagonal sequence.

The programs for A123508, there is no canonical definition to state claims against.
-/

/-! ## A123508.P496752085813833896

`Δ[A000196(A314051(n)²)]-3`
-/

namespace A123508.P496752085813833896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A314051 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A123508.P496752085813833896

/-! ## A123508.P14946740301260850363

`A103823(Δ[A000196(A314051(n)²)])`
-/

namespace A123508.P14946740301260850363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A314051 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (f1 (n + 1) - f1 n).toNat

end

end A123508.P14946740301260850363

/-! ## A123508.P10823872872935087740

`A106824(n+6)+A010894(A343395(n+1))`
-/

namespace A123508.P10823872872935087740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106824 (n + 6) + A010894 ((A343395 (n + 1)).toNat + 21)

end

end A123508.P10823872872935087740

/-! ## A123508.P7847711485983536626

`A106589(A222040(n+2))`
-/

namespace A123508.P7847711485983536626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106589 (A222040 (n + 2)).toNat

end

end A123508.P7847711485983536626

/-! ## A123508.P5733223249960229878

`A090996(xor(15, A378348(n+2)))`
-/

namespace A123508.P5733223249960229878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Int.xor 15 (A378348 (n + 2))).toNat

end

end A123508.P5733223249960229878

/-!
# A123509: Rohrbach's problem: a(n) is the largest integer such that there exists a set of n integers that is a basis of order 2 for (0, 1, ..., a(n)-1).

The programs for A123509, there is no canonical definition to state claims against.
-/

/-! ## A123509.P7032127493902563331

`A234941(n+1)-1`
-/

namespace A123509.P7032127493902563331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234941 (n + 1) - 1

end

end A123509.P7032127493902563331

/-! ## A123509.P13353528095517655646

`A014681(A234941(n+1))`
-/

namespace A123509.P13353528095517655646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A234941 (n + 1)).toNat

end

end A123509.P13353528095517655646

/-! ## A123509.P262402011247957758

`A023444(A234941(n+1)+1)`
-/

namespace A123509.P262402011247957758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A234941 (n + 1) + 1).toNat

end

end A123509.P262402011247957758

/-! ## A123509.P282566377287130332

`A289207(A234941(n+1)+1)`
-/

namespace A123509.P282566377287130332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A234941 (n + 1) + 1).toNat

end

end A123509.P282566377287130332

/-! ## A123509.P7967233592131620961

`∪[A001212(n+1), A071152(n)]+1`
-/

namespace A123509.P7967233592131620961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071152 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A123509.P7967233592131620961

/-!
# A123510: Arises in the normal ordering of functions of a*(a+)*a, where a and a+ are the boson annihilation and creation operators, respectively.

The programs for A123510, there is no canonical definition to state claims against.
-/

/-! ## A123510.P13011730297009304084

`∑[n+1]*A002720(n)`
-/

namespace A123510.P13011730297009304084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002720 n

end

end A123510.P13011730297009304084

/-! ## A123510.P14503894441782695087

`(A097662(n)+1)*∑[n+1]`
-/

namespace A123510.P14503894441782695087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097662 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123510.P14503894441782695087

/-! ## A123510.P8692275245982416845

`∑[n+1]*A056953(2*n)`
-/

namespace A123510.P8692275245982416845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056953 (2 * n)

end

end A123510.P8692275245982416845

/-! ## A123510.P5812057885167890939

`∑[n+1]*A176120(∑[n]+n)`
-/

namespace A123510.P5812057885167890939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A176120 (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A123510.P5812057885167890939

/-! ## A123510.P6475356944435145418

`∑[n+1]*A289192(∑[n+2]-1)`
-/

namespace A123510.P6475356944435145418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A289192 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A123510.P6475356944435145418

/-! ## A123510.P2105994693166199793

`(A317094(n)-(n+1)²)*∑[n+1]`
-/

namespace A123510.P2105994693166199793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A317094 n - ((n + 1) ^ 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123510.P2105994693166199793

/-! ## A123510.P16161077100235970815

`record[A288268(n)]/(n+1)*∑[n+1]`
-/

namespace A123510.P16161077100235970815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A123510.P16161077100235970815

/-! ## A123510.P8713128329086496172

`A052852(n+1)/(n+1)*∑[n+1]`
-/

namespace A123510.P8713128329086496172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052852 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A123510.P8713128329086496172

/-! ## A123510.P11147763090651534822

`A002720(n)*A161680(n+2)`
-/

namespace A123510.P11147763090651534822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n * A161680 (n + 2)

end

end A123510.P11147763090651534822

/-! ## A123510.P4774859944564406380

`A002720(n)*A008795(2*n)`
-/

namespace A123510.P4774859944564406380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n * A008795 (2 * n)

end

end A123510.P4774859944564406380

/-!
# A123511: Arises in the normal ordering of functions of a*(a+)*a, where a and a+ are the boson annihilation and creation operators, respectively.

The programs for A123511, there is no canonical definition to state claims against.
-/

/-! ## A123511.P15993548880703465698

`C(n+3, 3)*A002720(n)`
-/

namespace A123511.P15993548880703465698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A002720 n

end

end A123511.P15993548880703465698

/-! ## A123511.P17819060656182138786

`∑[∑[n+1]]*A056953(2*n)`
-/

namespace A123511.P17819060656182138786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056953 (2 * n)

end

end A123511.P17819060656182138786

/-! ## A123511.P6458418455224012344

`∑[∑[n+1]]*A176120(∑[n]+n)`
-/

namespace A123511.P6458418455224012344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A176120 (∑ j ∈ Finset.range (n + 1), f3 j + n)

end

end A123511.P6458418455224012344

/-! ## A123511.P13609320030825433027

`record[A288268(n)]/(n+1)*∑[∑[n+1]]`
-/

namespace A123511.P13609320030825433027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A123511.P13609320030825433027

/-! ## A123511.P11933656156630518233

`A052852(n+1)/(n+1)*∑[∑[n+1]]`
-/

namespace A123511.P11933656156630518233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052852 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A123511.P11933656156630518233

/-! ## A123511.P12547842098616573240

`A000292(n+1)*A002720(n)`
-/

namespace A123511.P12547842098616573240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A002720 n

end

end A123511.P12547842098616573240

/-! ## A123511.P6383996435634577375

`A002720(n)*A094415(A000217(n))`
-/

namespace A123511.P6383996435634577375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n * A094415 (A000217 n).toNat

end

end A123511.P6383996435634577375

/-!
# A123512: Arises in the normal ordering of functions of a*(a+)*a, where a and a+ are the boson annihilation and creation operators, respectively.

The programs for A123512, there is no canonical definition to state claims against.
-/

/-! ## A123512.P3612444317810982571

`C(n+4, 4)*A002720(n)`
-/

namespace A123512.P3612444317810982571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A002720 n

end

end A123512.P3612444317810982571

/-! ## A123512.P8270052255919940291

`∑[∑[∑[n+1]]]*A056953(2*n)`
-/

namespace A123512.P8270052255919940291
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056953 (2 * n)

end

end A123512.P8270052255919940291

/-! ## A123512.P3572959584972879662

`A002720(n)/5*A154286(n)`
-/

namespace A123512.P3572959584972879662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) / 5 * (A154286 n : ℚ)

end

end A123512.P3572959584972879662

/-! ## A123512.P6029444022002230053

`A002720(n)*A007997(A167614(n+1))`
-/

namespace A123512.P6029444022002230053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n * A007997 (A167614 (n + 1)).toNat

end

end A123512.P6029444022002230053

/-! ## A123512.P9437480011543538437

`A002720(n)*A211004(A034856(n+1))`
-/

namespace A123512.P9437480011543538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n * A211004 (A034856 (n + 1)).toNat

end

end A123512.P9437480011543538437

/-!
# A123513: Triangle read by rows: T(n,k) is the number of permutations of [n] having k small descents (n >= 1; 0 <= k <= n-1). A small descent in a permutation (x_1,x_2,...,x_n) is a position i such that x_i - x_(i+1) = 1.

The programs for A123513, the canonical program `A123513.P10972167970805802106` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123513 has offset 1).

The definition of A123513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123513.P4539339126792211761

`T(n-1,k-1)+T(n-1,k)*(row(n)-col(n))+T(n-1,k+1)*(col(n)+1)` with `a(0)=1`
-/

namespace A123513.P4539339126792211761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + SequenceMachineLib.triUpRight a n * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A123513.P4539339126792211761

namespace A123513

/-- `T(n-1,k-1)+T(n-1,k)*(row(n)-col(n))+T(n-1,k+1)*(col(n)+1)` -/
def P4539339126792211761.Spec : Prop :=
  ∀ n, P4539339126792211761.a n = A123513 (n + 1)

end A123513

/-! ## A123513.P10972167970805802106

`A010027(A038722(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123513

/-- `A010027(A038722(n+1))` -/
def P10972167970805802106.Spec : Prop :=
  ∀ n, P10972167970805802106.a n = A123513 (n + 1)

theorem P10972167970805802106.correct : P10972167970805802106.Spec := by
  intro n
  simp only [A123513, Nat.add_sub_cancel]

end A123513

/-! ## A123513.P12767988454885476950

`A010027(A061579(n)+1)`
-/

namespace A123513.P12767988454885476950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A061579 n + 1).toNat

end

end A123513.P12767988454885476950

namespace A123513

/-- `A010027(A061579(n)+1)` -/
def P12767988454885476950.Spec : Prop :=
  ∀ n, P12767988454885476950.a n = A123513 (n + 1)

end A123513

/-! ## A123513.P7860580705846467157

`A010027(A002024(n+1)²-n)`
-/

namespace A123513.P7860580705846467157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A123513.P7860580705846467157

namespace A123513

/-- `A010027(A002024(n+1)²-n)` -/
def P7860580705846467157.Spec : Prop :=
  ∀ n, P7860580705846467157.a n = A123513 (n + 1)

end A123513

/-! ## A123513.P13334100061272389423

`gcd(Δ[A345462(n+1)], A136572(n))`
-/

namespace A123513.P13334100061272389423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A136572 n)

end

end A123513.P13334100061272389423

namespace A123513

/-- `gcd(Δ[A345462(n+1)], A136572(n))` -/
def P13334100061272389423.Spec : Prop :=
  ∀ n, (P13334100061272389423.a n : ℤ) = A123513 (n + 1)

end A123513

/-! ## A123513.P8689638050756911381

`A345462(n+1)-A345462(n+2)%A321352(n+1)`
-/

namespace A123513.P8689638050756911381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345462 (n + 1) - Int.tmod (A345462 (n + 2)) (A321352 (n + 1))

end

end A123513.P8689638050756911381

namespace A123513

/-- `A345462(n+1)-A345462(n+2)%A321352(n+1)` -/
def P8689638050756911381.Spec : Prop :=
  ∀ n, P8689638050756911381.a n = A123513 (n + 1)

end A123513

/-!
# A123514: Triangle read by rows: T(n,k) is the number of involutions of {1,2,...,n} with exactly k fixed points and which contain the pattern 321 exactly once (n>=3; 1<=k<=n-2).

The programs for A123514, there is no canonical definition to state claims against.
-/

/-! ## A123514.P13711584661716892708

`A053121(n)*A278116(A000108(n))`
-/

namespace A123514.P13711584661716892708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A278116 (A000108 n).toNat

end

end A123514.P13711584661716892708

/-! ## A123514.P13889146178939009842

`A053121(n)*A278116(abs(A168491(n)))`
-/

namespace A123514.P13889146178939009842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A278116 |A168491 n|.toNat

end

end A123514.P13889146178939009842

/-! ## A123514.P4539282283328273339

`A053121(n)*A278116(A126324(2*n))`
-/

namespace A123514.P4539282283328273339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A278116 (A126324 (2 * n)).toNat

end

end A123514.P4539282283328273339

/-! ## A123514.P1295594404400198842

`A053121(n)*A278116(A208355(2*n))`
-/

namespace A123514.P1295594404400198842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A278116 (A208355 (2 * n)).toNat

end

end A123514.P1295594404400198842

/-! ## A123514.P427286841849352433

`A053121(n)*A278116(A246604(n)+n)`
-/

namespace A123514.P427286841849352433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A278116 (A246604 n + (n : ℤ)).toNat

end

end A123514.P427286841849352433

/-!
# A123515: Triangle read by rows: T(n,k) is the number of involutions of {1,2,...,n} with exactly k fixed points and which contain the pattern 231 exactly once (n>=4, 2<=k<=n-2).

The programs for A123515, there is no canonical definition to state claims against.
-/

/-! ## A123515.P8559700988636993229

`A000523(A360069(n+2)^A185249(n))`
-/

namespace A123515.P8559700988636993229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A360069 (n + 2) : ℚ) ^ (A185249 n : ℤ))).toNat

end

end A123515.P8559700988636993229

/-! ## A123515.P4735729860738601424

`A265745(A185951(n+1)*A334636(n+1))`
-/

namespace A123515.P4735729860738601424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A185951 (n + 1) * A334636 (n + 1)).toNat

end

end A123515.P4735729860738601424

/-! ## A123515.P2379132861427811560

`A043559(A001522(3*n+2))*A168561(n)`
-/

namespace A123515.P2379132861427811560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A001522 (3 * n + 2)).toNat * A168561 n

end

end A123515.P2379132861427811560

/-! ## A123515.P11986462539728396311

`A265745(lcm(A185951(n+1), A334636(n+1)))`
-/

namespace A123515.P11986462539728396311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (Int.lcm (A185951 (n + 1)) (A334636 (n + 1)))

end

end A123515.P11986462539728396311

/-! ## A123515.P10194166414790594202

`and(A368518(A268457(n+1)), A368518(n+1))`
-/

namespace A123515.P10194166414790594202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368518 (A268457 (n + 1)).toNat) (A368518 (n + 1))

end

end A123515.P10194166414790594202

/-!
# A123516: Triangle read by rows: T(n,k) = (-1)^k * n! * 2^(n-2*k) * binomial(n,k) * binomial(2*k,k) (0<=k<=n).

The programs for A123516, there is no canonical definition to state claims against.
-/

/-! ## A123516.P1417820055588268209

`A021012(n)*A395930(n)/A395972(n)`
-/

namespace A123516.P1417820055588268209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021012 n * A395930 n : ℚ) / (A395972 n : ℚ)

end

end A123516.P1417820055588268209

/-!
# A123517: Triangle read by rows: T(n,k) = floor(n/k + 1/2) - floor(n/(k + 1/2)) (1<=k<=n).

The programs for A123517, the canonical program `A123517.P10643023097039143599` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123517 has offset 1).

The definition of A123517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)+1)/(col(n)+1)+1/2)-floor((row(n)+1)/(col(n)+1+1/2))` (program `A123517.P10643023097039143599`, by `A123517.P10643023097039143599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123517.P10643023097039143599

`floor((row(n)+1)/(col(n)+1)+1/2)-floor((row(n)+1)/(col(n)+1+1/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123517

/-- `floor((row(n)+1)/(col(n)+1)+1/2)-floor((row(n)+1)/(col(n)+1+1/2))` -/
def P10643023097039143599.Spec : Prop :=
  ∀ n, P10643023097039143599.a n = A123517 (n + 1)

theorem P10643023097039143599.correct : P10643023097039143599.Spec := by
  intro n
  simp only [A123517, Nat.add_sub_cancel]

end A123517

/-! ## A123517.P421946267271334228

`floor((row(n)+1)/(col(n)+1)+1/2)-floor((row(n)+1)/(col(n)+1+1/2))*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123517.P421946267271334228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ) + (1 : ℚ) / 2⌋ - ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / ((SequenceMachineLib.triCol n + 1 : ℚ) + (1 : ℚ) / 2)⌋ * 1

end

end A123517.P421946267271334228

namespace A123517

/-- `floor((row(n)+1)/(col(n)+1)+1/2)-floor((row(n)+1)/(col(n)+1+1/2))*1` -/
def P421946267271334228.Spec : Prop :=
  ∀ n, P421946267271334228.a n = A123517 (n + 1)

theorem P421946267271334228.correct : P421946267271334228.Spec := by
  intro n
  simp only [A123517, Nat.add_sub_cancel, A123517.P421946267271334228.a, A123517.P10643023097039143599.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123517

/-! ## A123517.P4920564813053660675

`floor(ratio[A124765(A008300(n))])`
-/

namespace A123517.P4920564813053660675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A008300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A123517.P4920564813053660675

namespace A123517

/-- `floor(ratio[A124765(A008300(n))])` -/
def P4920564813053660675.Spec : Prop :=
  ∀ n, P4920564813053660675.a n = A123517 (n + 1)

end A123517

/-! ## A123517.P837999206989779418

`floor(ratio[A110730(A117401(n))])`
-/

namespace A123517.P837999206989779418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (A117401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A123517.P837999206989779418

namespace A123517

/-- `floor(ratio[A110730(A117401(n))])` -/
def P837999206989779418.Spec : Prop :=
  ∀ n, P837999206989779418.a n = A123517 (n + 1)

end A123517

/-! ## A123517.P14025074375945292759

`Δ[A033687(A155794(n))]+1`
-/

namespace A123517.P14025074375945292759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (A155794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A123517.P14025074375945292759

namespace A123517

/-- `Δ[A033687(A155794(n))]+1` -/
def P14025074375945292759.Spec : Prop :=
  ∀ n, P14025074375945292759.a n = A123517 (n + 1)

end A123517

/-!
# A123518: Number of dumbbells in all possible arrangements of dumbbells on a 2 X n rectangular array of compartments.

The programs for A123518, there is no canonical definition to state claims against.
-/

/-! ## A123518.P11071797107149130847

`A258574(4^n)+4^n`
-/

namespace A123518.P11071797107149130847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258574 (4 ^ n) + (4 ^ n : ℤ)

end

end A123518.P11071797107149130847

/-!
# A123519: Triangle read by rows: T(n,k) number of tilings of a 2n X 3 grid by dominoes, 2k of which are in a vertical position (0<=k<=n).

The programs for A123519, the canonical program `A123519.P535361808568159482` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123519 has offset 0).

The definition of A123519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123519.P535361808568159482

`2^col(n)*C(row(n)+col(n), 2*col(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123519

/-- `2^col(n)*C(row(n)+col(n), 2*col(n))` -/
def P535361808568159482.Spec : Prop :=
  ∀ n, (P535361808568159482.a n : ℤ) = A123519 n

theorem P535361808568159482.correct : P535361808568159482.Spec := by
  intro n
  simp only [A123519]

end A123519

/-! ## A123519.P12200246824376549364

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`
-/

namespace A123519.P12200246824376549364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A123519.P12200246824376549364

namespace A123519

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)` -/
def P12200246824376549364.Spec : Prop :=
  ∀ n, P12200246824376549364.a n = A123519 n

end A123519

/-! ## A123519.P9169066619420576

`A059268(n)*A085478(n)`
-/

namespace A123519.P9169066619420576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A085478 n

end

end A123519.P9169066619420576

namespace A123519

/-- `A059268(n)*A085478(n)` -/
def P9169066619420576.Spec : Prop :=
  ∀ n, P9169066619420576.a n = A123519 n

end A123519

/-! ## A123519.P6198219841610676492

`A211955(n)*A238303(n)`
-/

namespace A123519.P6198219841610676492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211955 n * A238303 n

end

end A123519.P6198219841610676492

namespace A123519

/-- `A211955(n)*A238303(n)` -/
def P6198219841610676492.Spec : Prop :=
  ∀ n, P6198219841610676492.a n = A123519 n

end A123519

/-! ## A123519.P6995315690359708151

`abs(A059268(n)*A123970(n))`
-/

namespace A123519.P6995315690359708151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A123970 n|

end

end A123519.P6995315690359708151

namespace A123519

/-- `abs(A059268(n)*A123970(n))` -/
def P6995315690359708151.Spec : Prop :=
  ∀ n, P6995315690359708151.a n = A123519 n

end A123519

/-! ## A123519.P3362829825784220911

`2^A002262(n)*A085478(n)`
-/

namespace A123519.P3362829825784220911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A085478 n : ℚ)

end

end A123519.P3362829825784220911

namespace A123519

/-- `2^A002262(n)*A085478(n)` -/
def P3362829825784220911.Spec : Prop :=
  ∀ n, P3362829825784220911.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P16390025171541844306

`2^A002260(n+1)/2*A085478(n)`
-/

namespace A123519.P16390025171541844306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) / 2 * (A085478 n : ℚ)

end

end A123519.P16390025171541844306

namespace A123519

/-- `2^A002260(n+1)/2*A085478(n)` -/
def P16390025171541844306.Spec : Prop :=
  ∀ n, P16390025171541844306.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P16257176776165020157

`2^(A002260(2*n+1-n)-1)*A085478(n)`
-/

namespace A123519.P16257176776165020157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (2 * n + 1 - n) - 1 : ℤ) * (A085478 n : ℚ)

end

end A123519.P16257176776165020157

namespace A123519

/-- `2^(A002260(2*n+1-n)-1)*A085478(n)` -/
def P16257176776165020157.Spec : Prop :=
  ∀ n, P16257176776165020157.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P15744400972755257567

`A000079(A002262(n))*A085478(n)`
-/

namespace A123519.P15744400972755257567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A085478 n

end

end A123519.P15744400972755257567

namespace A123519

/-- `A000079(A002262(n))*A085478(n)` -/
def P15744400972755257567.Spec : Prop :=
  ∀ n, P15744400972755257567.a n = A123519 n

end A123519

/-! ## A123519.P2511714436775240179

`A011782(A002260(n+1))*A085478(n)`
-/

namespace A123519.P2511714436775240179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A085478 n

end

end A123519.P2511714436775240179

namespace A123519

/-- `A011782(A002260(n+1))*A085478(n)` -/
def P2511714436775240179.Spec : Prop :=
  ∀ n, P2511714436775240179.a n = A123519 n

end A123519

/-! ## A123519.P17878462976978909209

`A013609(n)/A007318(n)*A085478(n)`
-/

namespace A123519.P17878462976978909209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A085478 n : ℚ)

end

end A123519.P17878462976978909209

namespace A123519

/-- `A013609(n)/A007318(n)*A085478(n)` -/
def P17878462976978909209.Spec : Prop :=
  ∀ n, P17878462976978909209.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P12525604970330173873

`(A000225(A002260(n+1)-1)+1)*A085478(n)`
-/

namespace A123519.P12525604970330173873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A002260 (n + 1) - 1).toNat + 1) * A085478 n

end

end A123519.P12525604970330173873

namespace A123519

/-- `(A000225(A002260(n+1)-1)+1)*A085478(n)` -/
def P12525604970330173873.Spec : Prop :=
  ∀ n, P12525604970330173873.a n = A123519 n

end A123519

/-! ## A123519.P17465326809142743398

`A210036(n+1)/A210034(n+1)*A085478(n)`
-/

namespace A123519.P17465326809142743398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210036 (n + 1) : ℚ) / (A210034 (n + 1) : ℚ) * (A085478 n : ℚ)

end

end A123519.P17465326809142743398

namespace A123519

/-- `A210036(n+1)/A210034(n+1)*A085478(n)` -/
def P17465326809142743398.Spec : Prop :=
  ∀ n, P17465326809142743398.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P3167948134239870177

`A085478(n)*A135530(A002262(n)+A002260(n+1))`
-/

namespace A123519.P3167948134239870177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A135530 (A002262 n + A002260 (n + 1)).toNat

end

end A123519.P3167948134239870177

namespace A123519

/-- `A085478(n)*A135530(A002262(n)+A002260(n+1))` -/
def P3167948134239870177.Spec : Prop :=
  ∀ n, P3167948134239870177.a n = A123519 n

end A123519

/-! ## A123519.P9983344486201187356

`A054142(A061579(n))*A059268(n)`
-/

namespace A123519.P9983344486201187356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A061579 n).toNat * A059268 n

end

end A123519.P9983344486201187356

namespace A123519

/-- `A054142(A061579(n))*A059268(n)` -/
def P9983344486201187356.Spec : Prop :=
  ∀ n, P9983344486201187356.a n = A123519 n

end A123519

/-! ## A123519.P8869527635348188270

`A373547(n)/A059268(n)`
-/

namespace A123519.P8869527635348188270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373547 n : ℚ) / (A059268 n : ℚ)

end

end A123519.P8869527635348188270

namespace A123519

/-- `A373547(n)/A059268(n)` -/
def P8869527635348188270.Spec : Prop :=
  ∀ n, P8869527635348188270.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P490945230533161297

`2^(A026100(A026098(n+1))-1)*A085478(n)`
-/

namespace A123519.P490945230533161297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ) * (A085478 n : ℚ)

end

end A123519.P490945230533161297

namespace A123519

/-- `2^(A026100(A026098(n+1))-1)*A085478(n)` -/
def P490945230533161297.Spec : Prop :=
  ∀ n, P490945230533161297.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P11286010802321609519

`gcd(A113025(n), A373547(n))`
-/

namespace A123519.P11286010802321609519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113025 n) (A373547 n)

end

end A123519.P11286010802321609519

namespace A123519

/-- `gcd(A113025(n), A373547(n))` -/
def P11286010802321609519.Spec : Prop :=
  ∀ n, (P11286010802321609519.a n : ℤ) = A123519 n

end A123519

/-! ## A123519.P12332797825084821525

`A085478(n)/A001498(n)*A113025(n)`
-/

namespace A123519.P12332797825084821525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A001498 n : ℚ) * (A113025 n : ℚ)

end

end A123519.P12332797825084821525

namespace A123519

/-- `A085478(n)/A001498(n)*A113025(n)` -/
def P12332797825084821525.Spec : Prop :=
  ∀ n, P12332797825084821525.a n = (A123519 n : ℚ)

end A123519

/-! ## A123519.P13918607109269690139

`A000010(2^A002260(n+1))*A085478(n)`
-/

namespace A123519.P13918607109269690139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A085478 n

end

end A123519.P13918607109269690139

namespace A123519

/-- `A000010(2^A002260(n+1))*A085478(n)` -/
def P13918607109269690139.Spec : Prop :=
  ∀ n, P13918607109269690139.a n = A123519 n

end A123519

/-!
# A123520: Number of vertical dominoes in all possible tilings of a 2n X 3 grid by dominoes.

The programs for A123520, the canonical program `A123520.P2885948307093487100` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123520 has offset 1).

The definition of A123520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123520.P2885948307093487100

`2*Δ[A317451(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123520

/-- `2*Δ[A317451(n)]` -/
def P2885948307093487100.Spec : Prop :=
  ∀ n, P2885948307093487100.a n = A123520 (n + 1)

theorem P2885948307093487100.correct : P2885948307093487100.Spec := by
  intro n
  simp only [A123520, Nat.add_sub_cancel]

end A123520

/-! ## A123520.P7741761254253681294

`A073388(A005408(n))/2^n`
-/

namespace A123520.P7741761254253681294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (A005408 n).toNat : ℚ) / (2 ^ n : ℚ)

end

end A123520.P7741761254253681294

namespace A123520

/-- `A073388(A005408(n))/2^n` -/
def P7741761254253681294.Spec : Prop :=
  ∀ n, P7741761254253681294.a n = (A123520 (n + 1) : ℚ)

end A123520

/-! ## A123520.P3096018902076109313

`A073388(2*n+1)/A000079(n)`
-/

namespace A123520.P3096018902076109313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (2 * n + 1) : ℚ) / (A000079 n : ℚ)

end

end A123520.P3096018902076109313

namespace A123520

/-- `A073388(2*n+1)/A000079(n)` -/
def P3096018902076109313.Spec : Prop :=
  ∀ n, P3096018902076109313.a n = (A123520 (n + 1) : ℚ)

end A123520

/-! ## A123520.P2807043237792197492

`A073388(2*n+1)/∑[A011782(n)]`
-/

namespace A123520.P2807043237792197492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (2 * n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A123520.P2807043237792197492

namespace A123520

/-- `A073388(2*n+1)/∑[A011782(n)]` -/
def P2807043237792197492.Spec : Prop :=
  ∀ n, P2807043237792197492.a n = (A123520 (n + 1) : ℚ)

end A123520

/-! ## A123520.P7532413386698156997

`A073388(2*n+1)/A054582(∑[n])`
-/

namespace A123520.P7532413386698156997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (2 * n + 1) : ℚ) / (A054582 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A123520.P7532413386698156997

namespace A123520

/-- `A073388(2*n+1)/A054582(∑[n])` -/
def P7532413386698156997.Spec : Prop :=
  ∀ n, P7532413386698156997.a n = (A123520 (n + 1) : ℚ)

end A123520

/-! ## A123520.P5986930128984432490

`A073388(2*n+1)/Δ[A000225(n)]`
-/

namespace A123520.P5986930128984432490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (2 * n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A123520.P5986930128984432490

namespace A123520

/-- `A073388(2*n+1)/Δ[A000225(n)]` -/
def P5986930128984432490.Spec : Prop :=
  ∀ n, P5986930128984432490.a n = (A123520 (n + 1) : ℚ)

end A123520

/-! ## A123520.P3567886581213133392

`A073388(2*n+1)/A011782(n+1)`
-/

namespace A123520.P3567886581213133392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (2 * n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A123520.P3567886581213133392

namespace A123520

/-- `A073388(2*n+1)/A011782(n+1)` -/
def P3567886581213133392.Spec : Prop :=
  ∀ n, P3567886581213133392.a n = (A123520 (n + 1) : ℚ)

end A123520

/-! ## A123520.P7003792433533325972

`A073388(2*n+1)/A102363(A000217(n))`
-/

namespace A123520.P7003792433533325972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (2 * n + 1) : ℚ) / (A102363 (A000217 n).toNat : ℚ)

end

end A123520.P7003792433533325972

namespace A123520

/-- `A073388(2*n+1)/A102363(A000217(n))` -/
def P7003792433533325972.Spec : Prop :=
  ∀ n, P7003792433533325972.a n = (A123520 (n + 1) : ℚ)

end A123520

/-!
# A123521: Triangle read by rows: T(n,k)=number of tilings of a 2 X n grid with k pieces of 1 X 2 tiles (in horizontal position) and 2n-2k pieces of 1 X 1 tiles (0<=k<=n).

The programs for A123521, there is no canonical definition to state claims against.
-/

/-! ## A123521.P2732653896203213861

`A172991(lt[n, A173003(3*n+2)])`
-/

namespace A123521.P2732653896203213861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173003 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A123521.P2732653896203213861

/-!
# A123522: Not of the form n + [log_10 n].

The programs for A123522, the canonical program `A123522.P9968052775971892971` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123522 has offset 0).

The definition of A123522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123522.P9968052775971892971

`10^n+n-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123522

/-- `10^n+n-1` -/
def P9968052775971892971.Spec : Prop :=
  ∀ n, P9968052775971892971.a n = A123522 n

theorem P9968052775971892971.correct : P9968052775971892971.Spec := by
  intro n
  simp only [A123522]

end A123522

/-! ## A123522.P461274094633479685

`abs(1-or(n, 10^n))`
-/

namespace A123522.P461274094633479685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lor n (10 ^ n) : ℤ)|

end

end A123522.P461274094633479685

namespace A123522

/-- `abs(1-or(n, 10^n))` -/
def P461274094633479685.Spec : Prop :=
  ∀ n, P461274094633479685.a n = A123522 n

end A123522

/-! ## A123522.P7347103399014835643

`abs(1-xor(n, 10^n))`
-/

namespace A123522.P7347103399014835643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.xor n (10 ^ n) : ℤ)|

end

end A123522.P7347103399014835643

namespace A123522

/-- `abs(1-xor(n, 10^n))` -/
def P7347103399014835643.Spec : Prop :=
  ∀ n, P7347103399014835643.a n = A123522 n

end A123522

/-! ## A123522.P8647421472062164361

`∑[10*a(n-1)-9]` with `a(0)=0, a(1)=10`
-/

namespace A123522.P8647421472062164361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  10 * f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123522.P8647421472062164361

namespace A123522

/-- `∑[10*a(n-1)-9]` -/
def P8647421472062164361.Spec : Prop :=
  ∀ n, P8647421472062164361.a n = A123522 n

end A123522

/-! ## A123522.P10657606699210391910

`abs(1-A081552(n+1))`
-/

namespace A123522.P10657606699210391910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A081552 (n + 1)|

end

end A123522.P10657606699210391910

namespace A123522

/-- `abs(1-A081552(n+1))` -/
def P10657606699210391910.Spec : Prop :=
  ∀ n, P10657606699210391910.a n = A123522 n

end A123522

/-! ## A123522.P11649193398092443162

`abs(A011557(n)-1+n)`
-/

namespace A123522.P11649193398092443162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - 1 + (n : ℤ)|

end

end A123522.P11649193398092443162

namespace A123522

/-- `abs(A011557(n)-1+n)` -/
def P11649193398092443162.Spec : Prop :=
  ∀ n, P11649193398092443162.a n = A123522 n

end A123522

/-! ## A123522.P18025930852623186219

`abs(A173835(n)-(n+1))`
-/

namespace A123522.P18025930852623186219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173835 n - (n + 1 : ℤ)|

end

end A123522.P18025930852623186219

namespace A123522

/-- `abs(A173835(n)-(n+1))` -/
def P18025930852623186219.Spec : Prop :=
  ∀ n, P18025930852623186219.a n = A123522 n

end A123522

/-! ## A123522.P12608935204671624244

`abs(A023443(n)+10^n)`
-/

namespace A123522.P12608935204671624244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n + (10 ^ n : ℤ)|

end

end A123522.P12608935204671624244

namespace A123522

/-- `abs(A023443(n)+10^n)` -/
def P12608935204671624244.Spec : Prop :=
  ∀ n, P12608935204671624244.a n = A123522 n

end A123522

/-! ## A123522.P12871477800800281214

`abs(10^n-A024000(n))`
-/

namespace A123522.P12871477800800281214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A024000 n|

end

end A123522.P12871477800800281214

namespace A123522

/-- `abs(10^n-A024000(n))` -/
def P12871477800800281214.Spec : Prop :=
  ∀ n, P12871477800800281214.a n = A123522 n

end A123522

/-! ## A123522.P6564422899869427525

`(A086573(n)+2*n)/2`
-/

namespace A123522.P6564422899869427525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086573 n + (2 * n : ℤ) : ℚ) / 2

end

end A123522.P6564422899869427525

namespace A123522

/-- `(A086573(n)+2*n)/2` -/
def P6564422899869427525.Spec : Prop :=
  ∀ n, P6564422899869427525.a n = (A123522 n : ℚ)

theorem P6564422899869427525.correct : P6564422899869427525.Spec := by
  intro n
  simp only [A123522, Nat.add_sub_cancel, A123522.P6564422899869427525.a, A123522.P9968052775971892971.a, A086573, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123522

/-! ## A123522.P1860564854034779008

`(A086575(n)+4*n)/4`
-/

namespace A123522.P1860564854034779008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086575 n + (4 * n : ℤ) : ℚ) / 4

end

end A123522.P1860564854034779008

namespace A123522

/-- `(A086575(n)+4*n)/4` -/
def P1860564854034779008.Spec : Prop :=
  ∀ n, P1860564854034779008.a n = (A123522 n : ℚ)

theorem P1860564854034779008.correct : P1860564854034779008.Spec := by
  intro n
  simp only [A123522, Nat.add_sub_cancel, A123522.P1860564854034779008.a, A123522.P9968052775971892971.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123522

/-! ## A123522.P3423506597702349885

`abs(1-(Δ[A002275(n)]+n))`
-/

namespace A123522.P3423506597702349885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n + (n : ℤ))|

end

end A123522.P3423506597702349885

namespace A123522

/-- `abs(1-(Δ[A002275(n)]+n))` -/
def P3423506597702349885.Spec : Prop :=
  ∀ n, P3423506597702349885.a n = A123522 n

end A123522

/-! ## A123522.P14259068129071811444

`floor(A067272(n+1)/2+n)`
-/

namespace A123522.P14259068129071811444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067272 (n + 1) : ℚ) / 2 + (n : ℚ)⌋

end

end A123522.P14259068129071811444

namespace A123522

/-- `floor(A067272(n+1)/2+n)` -/
def P14259068129071811444.Spec : Prop :=
  ∀ n, P14259068129071811444.a n = A123522 n

end A123522

/-! ## A123522.P3339539415077531420

`abs(3^n-n-A155608(n))`
-/

namespace A123522.P3339539415077531420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (n : ℤ) - A155608 n|

end

end A123522.P3339539415077531420

namespace A123522

/-- `abs(3^n-n-A155608(n))` -/
def P3339539415077531420.Spec : Prop :=
  ∀ n, P3339539415077531420.a n = A123522 n

end A123522

/-! ## A123522.P6642960151274682683

`abs(A001489(n)-A002283(n))`
-/

namespace A123522.P6642960151274682683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A002283 n|

end

end A123522.P6642960151274682683

namespace A123522

/-- `abs(A001489(n)-A002283(n))` -/
def P6642960151274682683.Spec : Prop :=
  ∀ n, P6642960151274682683.a n = A123522 n

end A123522

/-! ## A123522.P14876881430353173216

`abs(A024000(n)-A011557(n))`
-/

namespace A123522.P14876881430353173216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 n - A011557 n|

end

end A123522.P14876881430353173216

namespace A123522

/-- `abs(A024000(n)-A011557(n))` -/
def P14876881430353173216.Spec : Prop :=
  ∀ n, P14876881430353173216.a n = A123522 n

end A123522

/-! ## A123522.P17468178218659267234

`or(val(A011782(n), 2), A178500(n))`
-/

namespace A123522.P17468178218659267234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A011782 n).toNat 2 : ℤ) (A178500 n)

end

end A123522.P17468178218659267234

namespace A123522

/-- `or(val(A011782(n), 2), A178500(n))` -/
def P17468178218659267234.Spec : Prop :=
  ∀ n, P17468178218659267234.a n = A123522 n

end A123522

/-!
# A123523: Smallest odd number k such that sigma(x) = k has exactly n solutions.

The programs for A123523, there is no canonical definition to state claims against.
-/

/-! ## A123523.P5380400911482712314

`A123524(∑[A056628(n+1)])`
-/

namespace A123523.P5380400911482712314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123523.P5380400911482712314

/-!
# A123524: Smallest odd number k such that sigma(x)=k has at least n solutions.

The programs for A123524, there is no canonical definition to state claims against.
-/

/-! ## A123524.P11290900743439562235

`A123523(A123546(2*(n+2))+n+1)`
-/

namespace A123524.P11290900743439562235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123523 (A123546 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A123524.P11290900743439562235

/-! ## A123524.P5647795751820412195

`A123523(n+1)%Δ[A123523(n+1)]`
-/

namespace A123524.P5647795751820412195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123523 (n + 1)) (f1 (n + 1) - f1 n)

end

end A123524.P5647795751820412195

/-! ## A123524.P6517915795619299008

`A123523(A063746(n)+n)`
-/

namespace A123524.P6517915795619299008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123523 (A063746 n + (n : ℤ)).toNat

end

end A123524.P6517915795619299008

/-!
# A123525: Arises in the normal ordering of functions of a*(a+)*a, where a and a+ are the boson annihilation and creation operators, respectively.

The programs for A123525, there is no canonical definition to state claims against.
-/

/-! ## A123525.P8151600177130134626

`(n+1)*A002720(n+1)`
-/

namespace A123525.P8151600177130134626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002720 (n + 1)

end

end A123525.P8151600177130134626

/-! ## A123525.P16883191985179824427

`(n+1)*A086885(∑[n+1])`
-/

namespace A123525.P16883191985179824427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123525.P16883191985179824427

/-! ## A123525.P11318401792311316653

`(n+1)*A176120(∑[n+2])`
-/

namespace A123525.P11318401792311316653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A176120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123525.P11318401792311316653

/-! ## A123525.P15878108850900033693

`(n+1)*(A097662(n+1)+1)`
-/

namespace A123525.P15878108850900033693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A097662 (n + 1) + 1)

end

end A123525.P15878108850900033693

/-! ## A123525.P13108129853819064083

`(n+1)*A056953(2*(n+1))`
-/

namespace A123525.P13108129853819064083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056953 (2 * (n + 1))

end

end A123525.P13108129853819064083

/-! ## A123525.P14830164294170796804

`A105219(n+1)+A103194(n+1)`
-/

namespace A123525.P14830164294170796804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105219 (n + 1) + A103194 (n + 1)

end

end A123525.P14830164294170796804

/-! ## A123525.P17201365641162457352

`A052852(n+2)-A002720(n+1)`
-/

namespace A123525.P17201365641162457352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 (n + 2) - A002720 (n + 1)

end

end A123525.P17201365641162457352

/-! ## A123525.P82116756880988970

`lcm(A000027(n+1), A002720(A000027(n+1)))`
-/

namespace A123525.P82116756880988970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A002720 (A000027 (n + 1)).toNat)

end

end A123525.P82116756880988970

/-!
# A123526: Octanacci numbers.

The programs for A123526, there is no canonical definition to state claims against.
-/

/-! ## A123526.P7210966460919592396

`A241718(A009694(n))+A009694(n)`
-/

namespace A123526.P7210966460919592396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241718 (A009694 n).toNat + A009694 n

end

end A123526.P7210966460919592396

/-!
# A123527: Triangular array T(n,k) giving number of connected graphs with n labeled nodes and k edges (n >= 1, n-1 <= k <= n(n-1)/2).

The programs for A123527, there is no canonical definition to state claims against.
-/

/-! ## A123527.P7304892382960715497

`A062734(lt[1, A062734(n+1)+1]+1)`
-/

namespace A123527.P7304892382960715497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062734 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A123527.P7304892382960715497

/-! ## A123527.P13631640802465396937

`filter[A062734(n+1), A023532(#)]`
-/

namespace A123527.P13631640802465396937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A123527.P13631640802465396937

/-! ## A123527.P11328832109272745760

`filter[A062734(n+1), A145568(#)]`
-/

namespace A123527.P11328832109272745760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A123527.P11328832109272745760

/-! ## A123527.P2351568647548476659

`filter[A062734(n+1), A276398(#)]`
-/

namespace A123527.P2351568647548476659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A123527.P2351568647548476659

/-! ## A123527.P13949023603141159170

`A276640(A028240(n)+n)`
-/

namespace A123527.P13949023603141159170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276640 (A028240 n + (n : ℤ)).toNat

end

end A123527.P13949023603141159170

/-!
# A123528: Numerator of average of prime factors of n.

The programs for A123528, the canonical program `A123528.P10938157915258155333` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123528 has offset 2).

The definition of A123528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123528.P10938157915258155333

`A001414(n+2)/A373369(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123528

/-- `A001414(n+2)/A373369(n+2)` -/
def P10938157915258155333.Spec : Prop :=
  ∀ n, P10938157915258155333.a n = (A123528 (n + 2) : ℚ)

end A123528

/-! ## A123528.P285533795760120618

`A082299(n+2)*A082343(n+2)/A373369(n+2)`
-/

namespace A123528.P285533795760120618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082299 (n + 2) * A082343 (n + 2) : ℚ) / (A373369 (n + 2) : ℚ)

end

end A123528.P285533795760120618

namespace A123528

/-- `A082299(n+2)*A082343(n+2)/A373369(n+2)` -/
def P285533795760120618.Spec : Prop :=
  ∀ n, P285533795760120618.a n = (A123528 (n + 2) : ℚ)

end A123528

/-! ## A123528.P16757108904173007207

`A001414(n+2)/A001222(n+2)*A123529(n+2)`
-/

namespace A123528.P16757108904173007207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ) * (A123529 (n + 2) : ℚ)

end

end A123528.P16757108904173007207

namespace A123528

/-- `A001414(n+2)/A001222(n+2)*A123529(n+2)` -/
def P16757108904173007207.Spec : Prop :=
  ∀ n, P16757108904173007207.a n = (A123528 (n + 2) : ℚ)

end A123528

/-! ## A123528.P11133944375244478304

`A326567(A064988(n+2))`
-/

namespace A123528.P11133944375244478304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (A064988 (n + 2)).toNat

end

end A123528.P11133944375244478304

namespace A123528

/-- `A326567(A064988(n+2))` -/
def P11133944375244478304.Spec : Prop :=
  ∀ n, P11133944375244478304.a n = A123528 (n + 2)

end A123528

/-! ## A123528.P18266995444194279885

`A323171(n+2)+A000122(A123645(n))`
-/

namespace A123528.P18266995444194279885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323171 (n + 2) + A000122 (A123645 (n + 35)).toNat

end

end A123528.P18266995444194279885

namespace A123528

/-- `A323171(n+2)+A000122(A123645(n))` -/
def P18266995444194279885.Spec : Prop :=
  ∀ n, P18266995444194279885.a n = A123528 (n + 2)

end A123528

/-!
# A123529: Denominator of average of prime factors of n.

The programs for A123529, the canonical program `A123529.P8735211021576388131` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123529 has offset 2).

The definition of A123529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123529.P8735211021576388131

`(A001414(n+2)-A059975(n+2))/A373369(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123529

/-- `(A001414(n+2)-A059975(n+2))/A373369(n+2)` -/
def P8735211021576388131.Spec : Prop :=
  ∀ n, P8735211021576388131.a n = (A123529 (n + 2) : ℚ)

end A123529

/-! ## A123529.P4172360335532907121

`A001222(n+2)/A001414(n+2)*A123528(n+2)`
-/

namespace A123529.P4172360335532907121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) / (A001414 (n + 2) : ℚ) * (A123528 (n + 2) : ℚ)

end

end A123529.P4172360335532907121

namespace A123529

/-- `A001222(n+2)/A001414(n+2)*A123528(n+2)` -/
def P4172360335532907121.Spec : Prop :=
  ∀ n, P4172360335532907121.a n = (A123529 (n + 2) : ℚ)

end A123529

/-! ## A123529.P12261968298439092817

`A326568(A318885(n+2))`
-/

namespace A123529.P12261968298439092817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A318885 (n + 2)).toNat

end

end A123529.P12261968298439092817

namespace A123529

/-- `A326568(A318885(n+2))` -/
def P12261968298439092817.Spec : Prop :=
  ∀ n, P12261968298439092817.a n = A123529 (n + 2)

end A123529

/-! ## A123529.P8953740256837102587

`A326568(A290641(n+2))`
-/

namespace A123529.P8953740256837102587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A290641 (n + 2)).toNat

end

end A123529.P8953740256837102587

namespace A123529

/-- `A326568(A290641(n+2))` -/
def P8953740256837102587.Spec : Prop :=
  ∀ n, P8953740256837102587.a n = A123529 (n + 2)

end A123529

/-! ## A123529.P8616000636281053481

`A326568(A064988(n+2))`
-/

namespace A123529.P8616000636281053481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A064988 (n + 2)).toNat

end

end A123529.P8616000636281053481

namespace A123529

/-- `A326568(A064988(n+2))` -/
def P8616000636281053481.Spec : Prop :=
  ∀ n, P8616000636281053481.a n = A123529 (n + 2)

end A123529

/-! ## A123529.P14814244230280740200

`A326568(A064554(n+2)²)`
-/

namespace A123529.P14814244230280740200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A064554 (n + 2) ^ 2).toNat

end

end A123529.P14814244230280740200

namespace A123529

/-- `A326568(A064554(n+2)²)` -/
def P14814244230280740200.Spec : Prop :=
  ∀ n, P14814244230280740200.a n = A123529 (n + 2)

end A123529

/-!
# A123530: Expansion of q^(-1/2)*eta(q)^2*eta(q^6)^3/(eta(q^2)*eta(q^3)^2) in powers of q.

The programs for A123530, the canonical program `A123530.P615654561327355968` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123530 has offset 0).

The definition of A123530 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112848, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123530.P18128003571933204775

`A097109(2*n+1)`
-/

namespace A123530.P18128003571933204775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 (2 * n + 1)

end

end A123530.P18128003571933204775

namespace A123530

/-- `A097109(2*n+1)` -/
def P18128003571933204775.Spec : Prop :=
  ∀ n, P18128003571933204775.a n = A123530 n

end A123530

/-! ## A123530.P615654561327355968

`A112848(2*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123530

/-- `A112848(2*n+1)` -/
def P615654561327355968.Spec : Prop :=
  ∀ n, P615654561327355968.a n = A123530 n

theorem P615654561327355968.correct : P615654561327355968.Spec := by
  intro n
  simp only [A123530]

end A123530

/-! ## A123530.P7422600122374815370

`A033762(n)*A131713(n)`
-/

namespace A123530.P7422600122374815370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 n * A131713 n

end

end A123530.P7422600122374815370

namespace A123530

/-- `A033762(n)*A131713(n)` -/
def P7422600122374815370.Spec : Prop :=
  ∀ n, P7422600122374815370.a n = A123530 n

end A123530

/-! ## A123530.P222252065808573374

`A057079(n)*A129449(n)`
-/

namespace A123530.P222252065808573374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A129449 n

end

end A123530.P222252065808573374

namespace A123530

/-- `A057079(n)*A129449(n)` -/
def P222252065808573374.Spec : Prop :=
  ∀ n, P222252065808573374.a n = A123530 n

end A123530

/-! ## A123530.P11640743510163231327

`A129449(n)*A132954(n)`
-/

namespace A123530.P11640743510163231327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 n * A132954 n

end

end A123530.P11640743510163231327

namespace A123530

/-- `A129449(n)*A132954(n)` -/
def P11640743510163231327.Spec : Prop :=
  ∀ n, P11640743510163231327.a n = A123530 n

end A123530

/-! ## A123530.P215619220417416011

`A005881(n)/A131756(n)`
-/

namespace A123530.P215619220417416011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 n : ℚ) / (A131756 n : ℚ)

end

end A123530.P215619220417416011

namespace A123530

/-- `A005881(n)/A131756(n)` -/
def P215619220417416011.Spec : Prop :=
  ∀ n, P215619220417416011.a n = (A123530 n : ℚ)

end A123530

/-! ## A123530.P10201023363851090930

`A096936(2*n+1)*A131713(n)`
-/

namespace A123530.P10201023363851090930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (2 * n + 1) * A131713 n

end

end A123530.P10201023363851090930

namespace A123530

/-- `A096936(2*n+1)*A131713(n)` -/
def P10201023363851090930.Spec : Prop :=
  ∀ n, P10201023363851090930.a n = A123530 n

end A123530

/-! ## A123530.P15002060013593383267

`(A057078(n+1)+A049347(n))*A033762(n)`
-/

namespace A123530.P15002060013593383267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (n + 1) + A049347 n) * A033762 n

end

end A123530.P15002060013593383267

namespace A123530

/-- `(A057078(n+1)+A049347(n))*A033762(n)` -/
def P15002060013593383267.Spec : Prop :=
  ∀ n, P15002060013593383267.a n = A123530 n

end A123530

/-! ## A123530.P3277434745274911090

`A005881(n)/A099837(n+3)`
-/

namespace A123530.P3277434745274911090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 n : ℚ) / (A099837 (n + 3) : ℚ)

end

end A123530.P3277434745274911090

namespace A123530

/-- `A005881(n)/A099837(n+3)` -/
def P3277434745274911090.Spec : Prop :=
  ∀ n, P3277434745274911090.a n = (A123530 n : ℚ)

end A123530

/-! ## A123530.P748834025575392081

`A113063(2*n+1)*A131561(n+1)`
-/

namespace A123530.P748834025575392081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (2 * n + 1) * A131561 (n + 1)

end

end A123530.P748834025575392081

namespace A123530

/-- `A113063(2*n+1)*A131561(n+1)` -/
def P748834025575392081.Spec : Prop :=
  ∀ n, P748834025575392081.a n = A123530 n

end A123530

/-! ## A123530.P8485282889808221855

`A057078(2*n)*A113063(2*n+1)`
-/

namespace A123530.P8485282889808221855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n) * A113063 (2 * n + 1)

end

end A123530.P8485282889808221855

namespace A123530

/-- `A057078(2*n)*A113063(2*n+1)` -/
def P8485282889808221855.Spec : Prop :=
  ∀ n, P8485282889808221855.a n = A123530 n

end A123530

/-! ## A123530.P15488325617908694758

`A260945(Δ[n²])`
-/

namespace A123530.P15488325617908694758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A123530.P15488325617908694758

namespace A123530

/-- `A260945(Δ[n²])` -/
def P15488325617908694758.Spec : Prop :=
  ∀ n, P15488325617908694758.a n = A123530 n

end A123530

/-! ## A123530.P1596287168405659540

`A226535(Δ[n²])/3`
-/

namespace A123530.P1596287168405659540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A123530.P1596287168405659540

namespace A123530

/-- `A226535(Δ[n²])/3` -/
def P1596287168405659540.Spec : Prop :=
  ∀ n, P1596287168405659540.a n = (A123530 n : ℚ)

end A123530

/-! ## A123530.P91345084991667735

`A177702(n+1)*A261884(2*n+1)`
-/

namespace A123530.P91345084991667735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (n + 1) * A261884 (2 * n + 1)

end

end A123530.P91345084991667735

namespace A123530

/-- `A177702(n+1)*A261884(2*n+1)` -/
def P91345084991667735.Spec : Prop :=
  ∀ n, P91345084991667735.a n = A123530 n

end A123530

/-! ## A123530.P3003901823981035433

`A002324(2*n+1)*A061347(n+2)`
-/

namespace A123530.P3003901823981035433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (2 * n + 1) * A061347 (n + 2)

end

end A123530.P3003901823981035433

namespace A123530

/-- `A002324(2*n+1)*A061347(n+2)` -/
def P3003901823981035433.Spec : Prop :=
  ∀ n, P3003901823981035433.a n = A123530 n

end A123530

/-! ## A123530.P7674942645271548536

`A061347(n+2)*A093829(2*n+1)`
-/

namespace A123530.P7674942645271548536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A093829 (2 * n + 1)

end

end A123530.P7674942645271548536

namespace A123530

/-- `A061347(n+2)*A093829(2*n+1)` -/
def P7674942645271548536.Spec : Prop :=
  ∀ n, P7674942645271548536.a n = A123530 n

end A123530

/-! ## A123530.P10204598262903330451

`A115978(2*n+1)/A131713(n+1)`
-/

namespace A123530.P10204598262903330451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115978 (2 * n + 1) : ℚ) / (A131713 (n + 1) : ℚ)

end

end A123530.P10204598262903330451

namespace A123530

/-- `A115978(2*n+1)/A131713(n+1)` -/
def P10204598262903330451.Spec : Prop :=
  ∀ n, P10204598262903330451.a n = (A123530 n : ℚ)

end A123530

/-! ## A123530.P17416401201230725560

`A113063(2*n+1)*A259022(2*n)`
-/

namespace A123530.P17416401201230725560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (2 * n + 1) * A259022 (2 * n)

end

end A123530.P17416401201230725560

namespace A123530

/-- `A113063(2*n+1)*A259022(2*n)` -/
def P17416401201230725560.Spec : Prop :=
  ∀ n, P17416401201230725560.a n = A123530 n

end A123530

/-! ## A123530.P11656143315573775486

`(A049347(n+1)+2)*A261884(2*n+1)`
-/

namespace A123530.P11656143315573775486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 (n + 1) + 2) * A261884 (2 * n + 1)

end

end A123530.P11656143315573775486

namespace A123530

/-- `(A049347(n+1)+2)*A261884(2*n+1)` -/
def P11656143315573775486.Spec : Prop :=
  ∀ n, P11656143315573775486.a n = A123530 n

end A123530

/-! ## A123530.P5998042364379745573

`A033685(2*n+1)-A123330(2*n+1)`
-/

namespace A123530.P5998042364379745573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (2 * n + 1) - A123330 (2 * n + 1)

end

end A123530.P5998042364379745573

namespace A123530

/-- `A033685(2*n+1)-A123330(2*n+1)` -/
def P5998042364379745573.Spec : Prop :=
  ∀ n, P5998042364379745573.a n = A123530 n

end A123530

/-!
# A123532: Expansion of (eta(q) * eta(q^6))^7 / (eta(q^2) * eta(q^3))^5 in powers of q.

The programs for A123532, there is no canonical definition to state claims against.
-/

/-! ## A123532.P8602647232937108626

`A125510(n+1)-A006353(n+1)`
-/

namespace A123532.P8602647232937108626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125510 (n + 1) - A006353 (n + 1)

end

end A123532.P8602647232937108626

/-! ## A123532.P7743185597992001270

`A006353(n+1)-A125514(n+1)`
-/

namespace A123532.P7743185597992001270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006353 (n + 1) - A125514 (n + 1)

end

end A123532.P7743185597992001270

/-! ## A123532.P829312573293773524

`(A125510(n+1)-A125514(n+1))/2`
-/

namespace A123532.P829312573293773524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125510 (n + 1) - A125514 (n + 1) : ℚ) / 2

end

end A123532.P829312573293773524

/-! ## A123532.P16217556664771626607

`A006353(n+1)-A131946(2*(n+1))`
-/

namespace A123532.P16217556664771626607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006353 (n + 1) - A131946 (2 * (n + 1))

end

end A123532.P16217556664771626607

/-! ## A123532.P8403556879945123208

`A282544(A109043(n+1))-A006353(n+1)`
-/

namespace A123532.P8403556879945123208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A109043 (n + 1)).toNat - A006353 (n + 1)

end

end A123532.P8403556879945123208

/-! ## A123532.P2072546918541648669

`A246707(A008574(n+1))-A006353(n+1)`
-/

namespace A123532.P2072546918541648669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246707 (A008574 (n + 1)).toNat - A006353 (n + 1)

end

end A123532.P2072546918541648669

/-! ## A123532.P10564973934625911050

`A282544(A008590(n+1))-A006353(n+1)`
-/

namespace A123532.P10564973934625911050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A008590 (n + 1)).toNat - A006353 (n + 1)

end

end A123532.P10564973934625911050

/-! ## A123532.P11467279092486957484

`A282544(A008598(n+1))-A006353(n+1)`
-/

namespace A123532.P11467279092486957484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (A008598 (n + 1)).toNat - A006353 (n + 1)

end

end A123532.P11467279092486957484

/-! ## A123532.P1102138998060606479

`A224226(Δ[A157889(Δ[n²])])`
-/

namespace A123532.P1102138998060606479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157889 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (f1 (n + 1) - f1 n).toNat

end

end A123532.P1102138998060606479

/-! ## A123532.P17719623948003620917

`A224226(A158136(n+1)+1)`
-/

namespace A123532.P17719623948003620917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (A158136 (n + 1) + 1).toNat

end

end A123532.P17719623948003620917

/-!
# A123533: Primes in A001855.

The programs for A123533, the canonical program `A123533.P16758832796833403602` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123533 has offset 1).

The definition of A123533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123533.P16758832796833403602

`p?[A083652(n)-1]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123533

/-- `p?[A083652(n)-1]` -/
def P16758832796833403602.Spec : Prop :=
  ∀ n, P16758832796833403602.a n = A123533 (n + 1)

theorem P16758832796833403602.correct : P16758832796833403602.Spec := by
  intro n
  simp only [A123533, Nat.add_sub_cancel]

end A123533

/-! ## A123533.P3055528366692101577

`p?[∑[A113473(n+1)]]`
-/

namespace A123533.P3055528366692101577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123533.P3055528366692101577

namespace A123533

/-- `p?[∑[A113473(n+1)]]` -/
def P3055528366692101577.Spec : Prop :=
  ∀ n, P3055528366692101577.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P17154266916951708989

`p?[∑[A000523(n+1)+1]]`
-/

namespace A123533.P17154266916951708989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123533.P17154266916951708989

namespace A123533

/-- `p?[∑[A000523(n+1)+1]]` -/
def P17154266916951708989.Spec : Prop :=
  ∀ n, P17154266916951708989.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P13676753915712711676

`p?[∑[A080804(n+1)-n]]`
-/

namespace A123533.P13676753915712711676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123533.P13676753915712711676

namespace A123533

/-- `p?[∑[A080804(n+1)-n]]` -/
def P13676753915712711676.Spec : Prop :=
  ∀ n, P13676753915712711676.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P8251395252963823626

`p?[∑[ceil(log2(n+1))]]`
-/

namespace A123533.P8251395252963823626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123533.P8251395252963823626

namespace A123533

/-- `p?[∑[ceil(log2(n+1))]]` -/
def P8251395252963823626.Spec : Prop :=
  ∀ n, P8251395252963823626.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P11944332917582285804

`or(1, p?[A001855(n+1)])`
-/

namespace A123533.P11944332917582285804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A123533.P11944332917582285804

namespace A123533

/-- `or(1, p?[A001855(n+1)])` -/
def P11944332917582285804.Spec : Prop :=
  ∀ n, P11944332917582285804.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P12032097288714685504

`A000027(p?[A001855(n+1)])`
-/

namespace A123533.P12032097288714685504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123533.P12032097288714685504

namespace A123533

/-- `A000027(p?[A001855(n+1)])` -/
def P12032097288714685504.Spec : Prop :=
  ∀ n, P12032097288714685504.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P9764017493622678148

`p?[A001855(n+1)]%A017054(n)`
-/

namespace A123533.P9764017493622678148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017054 n)

end

end A123533.P9764017493622678148

namespace A123533

/-- `p?[A001855(n+1)]%A017054(n)` -/
def P9764017493622678148.Spec : Prop :=
  ∀ n, P9764017493622678148.a n = A123533 (n + 1)

end A123533

/-! ## A123533.P2623572688936697686

`lcm(p?[A001855(n+1)], A020985(n))`
-/

namespace A123533.P2623572688936697686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020985 n)

end

end A123533.P2623572688936697686

namespace A123533

/-- `lcm(p?[A001855(n+1)], A020985(n))` -/
def P2623572688936697686.Spec : Prop :=
  ∀ n, (P2623572688936697686.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P474099951150060823

`∩[A001855(n+1), A065396(n+1)]`
-/

namespace A123533.P474099951150060823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P474099951150060823

namespace A123533

/-- `∩[A001855(n+1), A065396(n+1)]` -/
def P474099951150060823.Spec : Prop :=
  ∀ n, (P474099951150060823.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P13490320085279613093

`∩[A000040(n+1), A001855(n+1)]`
-/

namespace A123533.P13490320085279613093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P13490320085279613093

namespace A123533

/-- `∩[A000040(n+1), A001855(n+1)]` -/
def P13490320085279613093.Spec : Prop :=
  ∀ n, (P13490320085279613093.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P927943504624724038

`∩[A001855(n+1), A065091(n+1)]`
-/

namespace A123533.P927943504624724038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P927943504624724038

namespace A123533

/-- `∩[A001855(n+1), A065091(n+1)]` -/
def P927943504624724038.Spec : Prop :=
  ∀ n, (P927943504624724038.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P3595523392333833152

`∩[A001855(n+1), A116974(n+1)]`
-/

namespace A123533.P3595523392333833152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P3595523392333833152

namespace A123533

/-- `∩[A001855(n+1), A116974(n+1)]` -/
def P3595523392333833152.Spec : Prop :=
  ∀ n, (P3595523392333833152.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P1184172263911424816

`∩[A001855(n+1), A161346(n+1)]`
-/

namespace A123533.P1184172263911424816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P1184172263911424816

namespace A123533

/-- `∩[A001855(n+1), A161346(n+1)]` -/
def P1184172263911424816.Spec : Prop :=
  ∀ n, (P1184172263911424816.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P1825570732512321626

`∩[A001855(n+1), A175787(n+1)]`
-/

namespace A123533.P1825570732512321626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P1825570732512321626

namespace A123533

/-- `∩[A001855(n+1), A175787(n+1)]` -/
def P1825570732512321626.Spec : Prop :=
  ∀ n, (P1825570732512321626.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P13292386521216724393

`∩[A001855(n+1), A351398(n+1)]`
-/

namespace A123533.P13292386521216724393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P13292386521216724393

namespace A123533

/-- `∩[A001855(n+1), A351398(n+1)]` -/
def P13292386521216724393.Spec : Prop :=
  ∀ n, (P13292386521216724393.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P16493674711434866557

`∩[A001855(n+1), A051948(n+1)]`
-/

namespace A123533.P16493674711434866557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P16493674711434866557

namespace A123533

/-- `∩[A001855(n+1), A051948(n+1)]` -/
def P16493674711434866557.Spec : Prop :=
  ∀ n, (P16493674711434866557.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P2032031503485121586

`∩[A001855(n+1), A064728(n+1)]`
-/

namespace A123533.P2032031503485121586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P2032031503485121586

namespace A123533

/-- `∩[A001855(n+1), A064728(n+1)]` -/
def P2032031503485121586.Spec : Prop :=
  ∀ n, (P2032031503485121586.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P8557345649242168973

`∩[A001855(n+1), A140826(n+1)]`
-/

namespace A123533.P8557345649242168973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P8557345649242168973

namespace A123533

/-- `∩[A001855(n+1), A140826(n+1)]` -/
def P8557345649242168973.Spec : Prop :=
  ∀ n, (P8557345649242168973.a n : ℤ) = A123533 (n + 1)

end A123533

/-! ## A123533.P3901313446330239355

`∩[A001855(n+1), A251595(n+1)]`
-/

namespace A123533.P3901313446330239355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123533.P3901313446330239355

namespace A123533

/-- `∩[A001855(n+1), A251595(n+1)]` -/
def P3901313446330239355.Spec : Prop :=
  ∀ n, (P3901313446330239355.a n : ℤ) = A123533 (n + 1)

end A123533

/-!
# A123535: Recurrence from values at floor of a third and two-thirds.

The programs for A123535, the canonical program `A123535.P8539943543788694365` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123535 has offset 0).

The definition of A123535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123535.P8539943543788694365

`a(floor(n/3))+a(floor(2*n/3))+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123535

/-- `a(floor(n/3))+a(floor(2*n/3))+n+1` -/
def P8539943543788694365.Spec : Prop :=
  ∀ n, (P8539943543788694365.a n : ℤ) = A123535 n

theorem P8539943543788694365.correct : P8539943543788694365.Spec := by
  intro n
  simp only [A123535]

end A123535

/-!
# A123536: a(0) = 1; for n > 0, a(n) = (-1)^(n+1)*B(2n)*Product_{prime p<=2n+1} p where B(2n) denotes the (2n)-th Bernoulli number.

The programs for A123536, there is no canonical definition to state claims against.
-/

/-! ## A123536.P13481152008012240035

`abs(A292899(2*n))`
-/

namespace A123536.P13481152008012240035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292899 (2 * n)|

end

end A123536.P13481152008012240035

/-! ## A123536.P16430626666249250669

`gcd(A010894(n), A292899(2*n))`
-/

namespace A123536.P16430626666249250669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A292899 (2 * n))

end

end A123536.P16430626666249250669

/-! ## A123536.P6703738960123511584

`lcm(A292899(2*n), A356655(2*n+1))`
-/

namespace A123536.P6703738960123511584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A292899 (2 * n)) (A356655 (2 * n + 1))

end

end A123536.P6703738960123511584

/-! ## A123536.P10625880471067522209

`gcd(A010894(n)², A292899(A005843(n)))`
-/

namespace A123536.P10625880471067522209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21) ^ 2) (A292899 (A005843 n).toNat)

end

end A123536.P10625880471067522209

/-! ## A123536.P5470012992109237911

`lcm(A154096(A026810(n)), A292899(2*n))`
-/

namespace A123536.P5470012992109237911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154096 (A026810 n).toNat) (A292899 (2 * n))

end

end A123536.P5470012992109237911

/-!
# A123538: Numbers n such that A064168(n) is prime.

The programs for A123538, there is no canonical definition to state claims against.
-/

/-! ## A123538.P6878153120262147144

`eq[A259784(n), A266848(A078683(n+1))]`
-/

namespace A123538.P6878153120262147144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 (A078683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123538.P6878153120262147144

/-! ## A123538.P7578472892553593003

`lt[A098273(n+1), A098287(n+1)²]`
-/

namespace A123538.P7578472892553593003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123538.P7578472892553593003

/-! ## A123538.P68283384463396976

`lt[A301841(n+1), A257010(n+3)²]`
-/

namespace A123538.P68283384463396976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257010 (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123538.P68283384463396976

/-! ## A123538.P17838835712025885172

`lt[A193899(n+1), A130348(3*n+1)]`
-/

namespace A123538.P17838835712025885172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123538.P17838835712025885172

/-! ## A123538.P5632865896205093396

`eq[A010060(A132623(n)), A276890(n)]`
-/

namespace A123538.P5632865896205093396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A132623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123538.P5632865896205093396

/-!
# A123539: Irregular triangle t(n,m) = binomial(n-m, n-binomial(m, floor(m/2))), read by rows, 0 <= m <= n/2.

The programs for A123539, there is no canonical definition to state claims against.
-/

/-! ## A123539.P7664229231618557399

`A071178(or(1, A025616(n+1)))`
-/

namespace A123539.P7664229231618557399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (Int.lor 1 (A025616 (n + 1))).toNat

end

end A123539.P7664229231618557399

/-! ## A123539.P4950032274549695487

`A157754(or(1, A025616(n+1)))`
-/

namespace A123539.P4950032274549695487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (Int.lor 1 (A025616 (n + 1))).toNat

end

end A123539.P4950032274549695487

/-! ## A123539.P7295369674827109641

`A267116(or(1, A025616(n+1)))`
-/

namespace A123539.P7295369674827109641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (Int.lor 1 (A025616 (n + 1))).toNat

end

end A123539.P7295369674827109641

/-! ## A123539.P12537976316353475713

`A052409(A051288(n))%A087310(n+2)`
-/

namespace A123539.P12537976316353475713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (A051288 n).toNat) (A087310 (n + 2))

end

end A123539.P12537976316353475713

/-! ## A123539.P4873518063139114856

`A144789(A181666(n+1))`
-/

namespace A123539.P4873518063139114856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (A181666 (n + 1)).toNat

end

end A123539.P4873518063139114856

/-!
# A123541: a(0) = 2; for n > 0, a(n) = number of earlier terms which when added to n give a prime.

The programs for A123541, there is no canonical definition to state claims against.
-/

/-! ## A123541.P15904512764797605962

`A114897(A261143(n)+n)`
-/

namespace A123541.P15904512764797605962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (A261143 n + (n : ℤ)).toNat

end

end A123541.P15904512764797605962

/-! ## A123541.P15584915264948216883

`xor(3*A154272(n+1), A114897(n+1))`
-/

namespace A123541.P15584915264948216883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A154272 (n + 1)) (A114897 (n + 1))

end

end A123541.P15584915264948216883

/-! ## A123541.P6568727060928006668

`A114897(n+1)+A010815(n)*A154272(n+1)`
-/

namespace A123541.P6568727060928006668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) + A010815 n * A154272 (n + 1)

end

end A123541.P6568727060928006668

/-! ## A123541.P13346571771033949350

`A114897(n+1)+A015325(n)*A154272(n+1)`
-/

namespace A123541.P13346571771033949350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) + A015325 n * A154272 (n + 1)

end

end A123541.P13346571771033949350

/-! ## A123541.P2568751358035509330

`A108839(n+1)+A114897(n+1)-A114898(n+1)`
-/

namespace A123541.P2568751358035509330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (n + 1) + (A114897 (n + 1) - A114898 (n + 1))

end

end A123541.P2568751358035509330

/-! ## A123541.P11691973428348632199

`A114897(n+1)+A015325(A163985(n))`
-/

namespace A123541.P11691973428348632199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) + A015325 (A163985 n).toNat

end

end A123541.P11691973428348632199

/-! ## A123541.P16123561962414876375

`A114897(n+1)-A010815(p?[A007494(n)])`
-/

namespace A123541.P16123561962414876375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) - A010815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123541.P16123561962414876375

/-! ## A123541.P6925571781822794977

`A114897(n+1)-A010815(A210144(n+1))`
-/

namespace A123541.P6925571781822794977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) - A010815 (A210144 (n + 1)).toNat

end

end A123541.P6925571781822794977

/-! ## A123541.P8038547094695026371

`A114897(n+1)-A010815(A053184(n+1))`
-/

namespace A123541.P8038547094695026371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) - A010815 (A053184 (n + 1)).toNat

end

end A123541.P8038547094695026371

/-! ## A123541.P12123299416521227207

`A114897(n+1)+A091069(A036561(n))`
-/

namespace A123541.P12123299416521227207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114897 (n + 1) + A091069 (A036561 n).toNat

end

end A123541.P12123299416521227207

/-!
# A123543: Number of connected labeled 2-regular pseudodigraphs (multiple arcs and loops allowed) of order n.

The programs for A123543, there is no canonical definition to state claims against.
-/

/-! ## A123543.P13330118141626039909

`A307804(∑[n]+1)`
-/

namespace A123543.P13330118141626039909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307804 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123543.P13330118141626039909

/-! ## A123543.P1762228367970812879

`record[A307804(n+1)]`
-/

namespace A123543.P1762228367970812879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123543.P1762228367970812879

/-! ## A123543.P15268602971905952310

`record[Δ[A307804(A008621(n))]]`
-/

namespace A123543.P15268602971905952310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307804 (A008621 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123543.P15268602971905952310

/-! ## A123543.P9134154599580924978

`record[A002262(n)*A307804(n)]`
-/

namespace A123543.P9134154599580924978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A307804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123543.P9134154599580924978

/-! ## A123543.P608355907954046387

`record[A140531(n)*A307804(n)]`
-/

namespace A123543.P608355907954046387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 n * A307804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123543.P608355907954046387

/-!
# A123544: Number of connected labeled 2-regular relations of order n.

The programs for A123544, there is no canonical definition to state claims against.
-/

/-! ## A123544.P9497323590895938462

`A059477(n)-A000189(A059477(n))`
-/

namespace A123544.P9497323590895938462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059477 n - A000189 (A059477 n).toNat

end

end A123544.P9497323590895938462

/-! ## A123544.P1725593735841390498

`A344607(A063834(n))-A007562(n+1)`
-/

namespace A123544.P1725593735841390498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344607 (A063834 n).toNat - A007562 (n + 1)

end

end A123544.P1725593735841390498

/-!
# A123545: Triangle read by rows: T(n,k) = number of unlabeled connected graphs on n nodes with degree >= 3 at each node (n >= 1, 0 <= k <= n(n-1)/2).

The programs for A123545, there is no canonical definition to state claims against.
-/

/-! ## A123545.P7920042642903103225

`lcm(Δ[A324692(n)], A123546(n+1))`
-/

namespace A123545.P7920042642903103225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A123546 (n + 1))

end

end A123545.P7920042642903103225

/-! ## A123545.P7466068092927027982

`A123546(n+1)%∑[A226798(n+1)]`
-/

namespace A123545.P7466068092927027982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123546 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123545.P7466068092927027982

/-! ## A123545.P13071436512729695056

`A123546(n+1)+A000007(A273855(n))`
-/

namespace A123545.P13071436512729695056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123546 (n + 1) + A000007 (A273855 n).toNat

end

end A123545.P13071436512729695056

/-! ## A123545.P5791488571834790753

`A123546(n+1)-A200214(A225644(n))`
-/

namespace A123545.P5791488571834790753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123546 (n + 1) - A200214 (A225644 n).toNat

end

end A123545.P5791488571834790753

/-! ## A123545.P2572082311085676627

`A123546(n+1)+A000007(A153671(n+1))`
-/

namespace A123545.P2572082311085676627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123546 (n + 1) + A000007 (A153671 (n + 1)).toNat

end

end A123545.P2572082311085676627

/-! ## A123545.P16652573450398792715

`A123546(n+1)+A000007(A163311(n+1))`
-/

namespace A123545.P16652573450398792715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123546 (n + 1) + A000007 (A163311 (n + 1)).toNat

end

end A123545.P16652573450398792715

/-! ## A123545.P3168411647739466406

`A123546(n+1)^A123548(A123550(n+4))`
-/

namespace A123545.P3168411647739466406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123546 (n + 1) : ℚ) ^ (A123548 (A123550 (n + 4)).toNat : ℤ)

end

end A123545.P3168411647739466406

/-! ## A123545.P1834926377939985992

`A123546(n+1)^A007318(A123546(n+7))`
-/

namespace A123545.P1834926377939985992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123546 (n + 1) : ℚ) ^ (A007318 (A123546 (n + 7)).toNat : ℤ)

end

end A123545.P1834926377939985992

/-! ## A123545.P13026383553034125508

`A123546(n+1)^A014963(∑[A008620(2*n)])`
-/

namespace A123545.P13026383553034125508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123546 (n + 1) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A123545.P13026383553034125508

/-!
# A123546: Triangle read by rows: T(n,k) = number of unlabeled graphs on n nodes with degree >= 3 at each node (n >= 1, 0 <= k <= n(n-1)/2).

The programs for A123546, there is no canonical definition to state claims against.
-/

/-! ## A123546.P11015159714450208752

`A123545(round(acot(A004438(n+1))+n))`
-/

namespace A123546.P11015159714450208752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A004438 (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A123546.P11015159714450208752

/-! ## A123546.P1187582483565381621

`A123545(abs(C(A221531(n+1), n)-n))`
-/

namespace A123546.P1187582483565381621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 |(Nat.choose (A221531 (n + 1)).toNat n : ℤ) - (n : ℤ)|.toNat

end

end A123546.P1187582483565381621

/-! ## A123546.P2576745842901044100

`A123545(abs(1-n)+1)%A004438(n+1)`
-/

namespace A123546.P2576745842901044100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123545 (|1 - (n : ℤ)| + 1).toNat) (A004438 (n + 1))

end

end A123546.P2576745842901044100

/-! ## A123546.P13456021725357773210

`A123545(abs(A059667(n+1)%2-n)+1)`
-/

namespace A123546.P13456021725357773210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (|Int.tmod (A059667 (n + 1)) 2 - (n : ℤ)| + 1).toNat

end

end A123546.P13456021725357773210

/-! ## A123546.P17892299056497917959

`A123545(abs(C(A177517(n+1), n)+1-n)+1)`
-/

namespace A123546.P17892299056497917959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (|(Nat.choose (A177517 (n + 1)).toNat n + 1 : ℤ) - (n : ℤ)| + 1).toNat

end

end A123546.P17892299056497917959

/-! ## A123546.P13328685883294448387

`A123545(A099257(n+1))`
-/

namespace A123546.P13328685883294448387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (A099257 (n + 1)).toNat

end

end A123546.P13328685883294448387

/-! ## A123546.P11328890209359577883

`A123545(A028310(n))%A158037(n+1)`
-/

namespace A123546.P11328890209359577883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123545 (A028310 n).toNat) (A158037 (n + 1))

end

end A123546.P11328890209359577883

/-! ## A123546.P3499282647062807968

`A123545(A233583(n+1))^A014963(A065555(n+2))`
-/

namespace A123546.P3499282647062807968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123545 (A233583 (n + 1)).toNat : ℚ) ^ (A014963 (A065555 (n + 2)).toNat : ℤ)

end

end A123546.P3499282647062807968

/-! ## A123546.P13292500727164933912

`A123545(A160755(n+1))`
-/

namespace A123546.P13292500727164933912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (A160755 (n + 1)).toNat

end

end A123546.P13292500727164933912

/-!
# A123548: Triangle read by rows: T(n,k) = number of unlabeled bicolored graphs having 2n nodes and k edges, which are invariant when the two color classes are interchanged. Here n >= 0, 0 <= k <= n^2.

The programs for A123548, there is no canonical definition to state claims against.
-/

/-! ## A123548.P12180809984036368893

`2*A106498(n)-A052371(n)`
-/

namespace A123548.P12180809984036368893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106498 n - A052371 n

end

end A123548.P12180809984036368893

/-! ## A123548.P15758806159930056682

`A004277(A106498(n))-A052371(n)`
-/

namespace A123548.P15758806159930056682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A106498 n).toNat - A052371 n

end

end A123548.P15758806159930056682

/-!
# A123549: Number of unlabeled connected bicolored graphs on 2n nodes which are invariant when the two color classes are interchanged.

The programs for A123549, there is no canonical definition to state claims against.
-/

/-! ## A123549.P2567665812042086343

`2*A005142(2*n)-A318870(2*n)`
-/

namespace A123549.P2567665812042086343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005142 (2 * n) - A318870 (2 * n)

end

end A123549.P2567665812042086343

/-! ## A123549.P16761262946595594967

`A005142(n)+A318869(n)-A318870(n)`
-/

namespace A123549.P16761262946595594967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005142 n + (A318869 n - A318870 n)

end

end A123549.P16761262946595594967

/-!
# A123551: Triangle read by rows: T(n,k) gives number of unlabeled graphs without endpoints on n nodes and k edges, (n >= 0, 0 <= k <= n(n-1)/2).

The programs for A123551, there is no canonical definition to state claims against.
-/

/-! ## A123551.P3573702349055996777

`A327103(A369928(n))`
-/

namespace A123551.P3573702349055996777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A369928 n).toNat

end

end A123551.P3573702349055996777

/-! ## A123551.P3265692422714080965

`A240066(A110939(n+1)+2+n)`
-/

namespace A123551.P3265692422714080965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240066 (A110939 (n + 1) + 2 + (n : ℤ)).toNat

end

end A123551.P3265692422714080965

/-! ## A123551.P17174189751103115047

`A085860(n)+A011558(A018156(n))`
-/

namespace A123551.P17174189751103115047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 n + A011558 (A018156 n).toNat

end

end A123551.P17174189751103115047

/-! ## A123551.P9452755008961232342

`A284490(A217113(n))*A290105(n+1)`
-/

namespace A123551.P9452755008961232342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (A217113 n).toNat * A290105 (n + 1)

end

end A123551.P9452755008961232342

/-! ## A123551.P3427518034209609760

`A000161(xor(A000120(n), A147128(n+1)))`
-/

namespace A123551.P3427518034209609760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (Int.xor (A000120 n) (A147128 (n + 1))).toNat

end

end A123551.P3427518034209609760

/-!
# A123552: Expansion of 1/(1 - x - x^3 + x^5).

The programs for A123552, the canonical program `A123552.P2335716011044176476` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123552 has offset 0).

The definition of A123552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^5))` (program `A123552.P2335716011044176476`, by `A123552.P2335716011044176476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123552.P2335716011044176476

`ogf(1/(1-x-x^3+x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123552

/-- `ogf(1/(1-x-x^3+x^5))` -/
def P2335716011044176476.Spec : Prop :=
  ∀ n, P2335716011044176476.a n = A123552 n

theorem P2335716011044176476.correct : P2335716011044176476.Spec := by
  intro n
  simp only [A123552]

end A123552

/-! ## A123552.P15661785165061971552

`a(n-3)+a(n-4)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A123552.P15661785165061971552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 3) + a (n - 4) + 1

end

end A123552.P15661785165061971552

namespace A123552

/-- `a(n-3)+a(n-4)+1` -/
def P15661785165061971552.Spec : Prop :=
  ∀ n, (P15661785165061971552.a n : ℤ) = A123552 n

end A123552

/-! ## A123552.P13725265510237912987

`∑[a(n-3)+a(n-4)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A123552.P13725265510237912987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  f1 (n - 3) + f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123552.P13725265510237912987

namespace A123552

/-- `∑[a(n-3)+a(n-4)]` -/
def P13725265510237912987.Spec : Prop :=
  ∀ n, (P13725265510237912987.a n : ℤ) = A123552 n

end A123552

/-! ## A123552.P15102106679324792232

`∑[A017817(n)]`
-/

namespace A123552.P15102106679324792232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123552.P15102106679324792232

namespace A123552

/-- `∑[A017817(n)]` -/
def P15102106679324792232.Spec : Prop :=
  ∀ n, P15102106679324792232.a n = A123552 n

end A123552

/-! ## A123552.P5941037031804631648

`∑[A127838(n+5)]`
-/

namespace A123552.P5941037031804631648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123552.P5941037031804631648

namespace A123552

/-- `∑[A127838(n+5)]` -/
def P5941037031804631648.Spec : Prop :=
  ∀ n, P5941037031804631648.a n = A123552 n

end A123552

/-! ## A123552.P7504726135215766753

`A079398(n+5)-1`
-/

namespace A123552.P7504726135215766753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 5) - 1

end

end A123552.P7504726135215766753

namespace A123552

/-- `A079398(n+5)-1` -/
def P7504726135215766753.Spec : Prop :=
  ∀ n, P7504726135215766753.a n = A123552 n

end A123552

/-! ## A123552.P18283349726068634863

`Δ[A123015(n+3)]-1`
-/

namespace A123552.P18283349726068634863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123015 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A123552.P18283349726068634863

namespace A123552

/-- `Δ[A123015(n+3)]-1` -/
def P18283349726068634863.Spec : Prop :=
  ∀ n, P18283349726068634863.a n = A123552 n

end A123552

/-! ## A123552.P1189762388520234336

`∑[A306713(∑[n+3])]`
-/

namespace A123552.P1189762388520234336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123552.P1189762388520234336

namespace A123552

/-- `∑[A306713(∑[n+3])]` -/
def P1189762388520234336.Spec : Prop :=
  ∀ n, P1189762388520234336.a n = A123552 n

end A123552

/-!
# A123553: A "king chicken" in a tournament graph (a directed labeled graph on n nodes with a single arc between every pair of nodes) is a player A who for any other player B either beats B directly or beats someone who beats B. Sequence gives total number of king chickens in all 2^(n(n-1)/2) tournaments.

The programs for A123553, there is no canonical definition to state claims against.
-/

/-! ## A123553.P16475474281157685153

`∑[A266641(10*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A123553.P16475474281157685153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A266641 (10 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123553.P16475474281157685153

/-!
# A123554: Triangle read by rows: T(n,k) = number of labeled loopless digraphs with n nodes and k arcs (n >= 1, 0 <= k <= n*(n-1)).

The programs for A123554, the canonical program `A123554.P6569602096052592708` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123554 has offset 1).

The definition of A123554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123554.P6569602096052592708

`A034870(eq[1, A010054(A000196(n))])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123554

/-- `A034870(eq[1, A010054(A000196(n))])` -/
def P6569602096052592708.Spec : Prop :=
  ∀ n, P6569602096052592708.a n = A123554 (n + 1)

theorem P6569602096052592708.correct : P6569602096052592708.Spec := by
  intro n
  simp only [A123554, Nat.add_sub_cancel]

end A123554

/-! ## A123554.P8160195454542716642

`A034870(eq[2, A035214(A000196(n))])`
-/

namespace A123554.P8160195454542716642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P8160195454542716642

namespace A123554

/-- `A034870(eq[2, A035214(A000196(n))])` -/
def P8160195454542716642.Spec : Prop :=
  ∀ n, P8160195454542716642.a n = A123554 (n + 1)

end A123554

/-! ## A123554.P7787566442187340973

`A007318(eq[0, A053615(A003056(n))])`
-/

namespace A123554.P7787566442187340973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P7787566442187340973

namespace A123554

/-- `A007318(eq[0, A053615(A003056(n))])` -/
def P7787566442187340973.Spec : Prop :=
  ∀ n, P7787566442187340973.a n = A123554 (n + 1)

end A123554

/-! ## A123554.P12073464586887473311

`A007318(eq[0, A337835(A002024(n+1))])`
-/

namespace A123554.P12073464586887473311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P12073464586887473311

namespace A123554

/-- `A007318(eq[0, A337835(A002024(n+1))])` -/
def P12073464586887473311.Spec : Prop :=
  ∀ n, P12073464586887473311.a n = A123554 (n + 1)

end A123554

/-! ## A123554.P852165943626121673

`A007318(eq[1, A074294(A002024(n+1))])`
-/

namespace A123554.P852165943626121673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P852165943626121673

namespace A123554

/-- `A007318(eq[1, A074294(A002024(n+1))])` -/
def P852165943626121673.Spec : Prop :=
  ∀ n, P852165943626121673.a n = A123554 (n + 1)

end A123554

/-! ## A123554.P11553780459079904056

`A007318(eq[1, A005369(A002024(n+1)-1)])`
-/

namespace A123554.P11553780459079904056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A002024 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123554.P11553780459079904056

namespace A123554

/-- `A007318(eq[1, A005369(A002024(n+1)-1)])` -/
def P11553780459079904056.Spec : Prop :=
  ∀ n, P11553780459079904056.a n = A123554 (n + 1)

end A123554

/-!
# A123555: Number of standard Young tableaux of type (n+1,n,n-1).

The programs for A123555, there is no canonical definition to state claims against.
-/

/-! ## A123555.P15859749849344463927

`A123691(n+1)-A005789(n)`
-/

namespace A123555.P15859749849344463927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123691 (n + 1) - A005789 n

end

end A123555.P15859749849344463927

/-! ## A123555.P5614273766687577475

`A123691(n+1)-A000108(n+1)/(n+1)*A001764(n)`
-/

namespace A123555.P5614273766687577475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123691 (n + 1) : ℚ) - (A000108 (n + 1) : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A123555.P5614273766687577475

/-! ## A123555.P17861296196076215679

`A123691(n+1)-A324151(n)/(n+1)`
-/

namespace A123555.P17861296196076215679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123691 (n + 1) : ℚ) - (A324151 n : ℚ) / (n + 1 : ℚ)

end

end A123555.P17861296196076215679

/-! ## A123555.P18006960516324523694

`A123691(n+1)-2*A001700(n+1)*A001764(n+1)/(3*(3*n+1)*(3*n+2))`
-/

namespace A123555.P18006960516324523694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123691 (n + 1) : ℚ) - (2 * A001700 (n + 1) * A001764 (n + 1) : ℚ) / (3 * ((3 * n + 1) * (3 * n + 2)) : ℚ)

end

end A123555.P18006960516324523694

/-! ## A123555.P5779628176020977987

`A123691(n+1)-A060854(A034856(n+1))`
-/

namespace A123555.P5779628176020977987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123691 (n + 1) - A060854 (A034856 (n + 1)).toNat

end

end A123555.P5779628176020977987

/-!
# A123556: Number of elements in longest possible arithmetic progression of primes with difference n.

The programs for A123556, there is no canonical definition to state claims against.
-/

/-! ## A123556.P8579306706854895150

`A071222(n)+val(A064652(n+2), A015886(n*n%2+1))`
-/

namespace A123556.P8579306706854895150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + (SequenceMachineLib.valuation (A064652 (n + 2)).toNat (A015886 (n * (n % 2) + 1)).toNat : ℤ)

end

end A123556.P8579306706854895150

/-! ## A123556.P7325811847464265184

`A015886(lcm(A230405(n), A241423(n+2)))`
-/

namespace A123556.P7325811847464265184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (Int.lcm (A230405 n) (A241423 (n + 2)))

end

end A123556.P7325811847464265184

/-! ## A123556.P2125213889432964117

`A015886(A241423(n+2)+A230398(n+1))`
-/

namespace A123556.P2125213889432964117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (A241423 (n + 2) + A230398 (n + 1)).toNat

end

end A123556.P2125213889432964117

/-! ## A123556.P18194621893255084630

`A053669(n+1)-A010051(A330953(3*n+5))`
-/

namespace A123556.P18194621893255084630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - A010051 (A330953 (3 * n + 5)).toNat

end

end A123556.P18194621893255084630

/-! ## A123556.P390879784791584856

`A053669(n+1)^A186726(A327805(n))`
-/

namespace A123556.P390879784791584856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053669 (n + 1) : ℚ) ^ (A186726 (A327805 n).toNat : ℤ)

end

end A123556.P390879784791584856

/-!
# A123557: a(n) = A064688(n) - 1.

The programs for A123557, there is no canonical definition to state claims against.
-/

/-! ## A123557.P10287111036294103028

`A064688(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123557.P10287111036294103028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064688 (n + 1) - 1

end

end A123557.P10287111036294103028

/-! ## A123557.P14188714317295242530

`A000009(A000040(n+1))-1`
-/

namespace A123557.P14188714317295242530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000040 (n + 1)).toNat - 1

end

end A123557.P14188714317295242530

/-! ## A123557.P3931811891420769818

`A078408(A102781(n+1))-1`
-/

namespace A123557.P3931811891420769818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 (A102781 (n + 1)).toNat - 1

end

end A123557.P3931811891420769818

/-! ## A123557.P11976103193987250772

`A078374(A000040(n+1))`
-/

namespace A123557.P11976103193987250772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (A000040 (n + 1)).toNat

end

end A123557.P11976103193987250772

/-! ## A123557.P11520336178854475793

`A111133(A006005(n+1))`
-/

namespace A123557.P11520336178854475793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A006005 (n + 1)).toNat

end

end A123557.P11520336178854475793

/-! ## A123557.P13290111472214586089

`A111133(A075643(n+2))`
-/

namespace A123557.P13290111472214586089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A075643 (n + 2)).toNat

end

end A123557.P13290111472214586089

/-! ## A123557.P2352426241162253953

`A111133(eq[1, A032741(n)])`
-/

namespace A123557.P2352426241162253953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123557.P2352426241162253953

/-! ## A123557.P15011651754354262969

`record[A111133(A006530(n+1))]`
-/

namespace A123557.P15011651754354262969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123557.P15011651754354262969

/-! ## A123557.P8234226164383744258

`record[A111133(A020639(n+1))]`
-/

namespace A123557.P8234226164383744258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123557.P8234226164383744258

/-! ## A123557.P8130224937853085804

`A078374(record[A006530(n+2)])`
-/

namespace A123557.P8130224937853085804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123557.P8130224937853085804

/-! ## A123557.P12760725583469627988

`A079124(record[A006530(n+2)])`
-/

namespace A123557.P12760725583469627988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123557.P12760725583469627988

/-! ## A123557.P8346695159538654951

`A078374(record[A020639(n+2)])`
-/

namespace A123557.P8346695159538654951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123557.P8346695159538654951

/-! ## A123557.P16044586538987594117

`A079124(record[A020639(n+2)])`
-/

namespace A123557.P16044586538987594117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123557.P16044586538987594117

/-! ## A123557.P2989100804420604986

`A111133(p?[n*A032741(n)])`
-/

namespace A123557.P2989100804420604986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123557.P2989100804420604986

/-! ## A123557.P12819971631257321885

`A000009(A008578(n+2))-1`
-/

namespace A123557.P12819971631257321885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A008578 (n + 2)).toNat - 1

end

end A123557.P12819971631257321885

/-! ## A123557.P3329930311060357391

`A357456(record[A006530(2*n+1)])`
-/

namespace A123557.P3329930311060357391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123557.P3329930311060357391

/-! ## A123557.P13651513673326751499

`A357456(record[A020639(2*n+1)])`
-/

namespace A123557.P13651513673326751499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123557.P13651513673326751499

/-! ## A123557.P16940595407967628540

`A111133(A000040(2*n+1-n))`
-/

namespace A123557.P16940595407967628540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A000040 (2 * n + 1 - n)).toNat

end

end A123557.P16940595407967628540

/-! ## A123557.P6470427169602825987

`record[A282892(record[A006530(n+1)])-1]`
-/

namespace A123557.P6470427169602825987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123557.P6470427169602825987

/-! ## A123557.P11483538298751577401

`record[A282892(record[A020639(n+1)])-1]`
-/

namespace A123557.P11483538298751577401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123557.P11483538298751577401

/-!
# A123559: a(n) is the smallest integer such that 1/a(1)^2 + 1/a(2)^2 + ... + 1/a(n-1)^2 + 1/a(n)^2 is less than Pi.

The programs for A123559, there is no canonical definition to state claims against.
-/

/-! ## A123559.P8543661718496712958

`A130483(A240579(n)^A240575(n))`
-/

namespace A123559.P8543661718496712958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130483 (SequenceMachineLib.roundAway ((A240579 n : ℚ) ^ (A240575 n : ℤ))).toNat

end

end A123559.P8543661718496712958

/-! ## A123559.P17314751497677203793

`A235645(A261426(2*(n+1))+A061602(n))`
-/

namespace A123559.P17314751497677203793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235645 (A261426 (2 * (n + 1)) + A061602 n).toNat

end

end A123559.P17314751497677203793

/-!
# A123560: a(n) is the smallest integer such that 1/a(1)^2 + 1/a(2)^2 + ... + 1/a(n-1)^2 + 1/a(n)^2 is less than e.

The programs for A123560, there is no canonical definition to state claims against.
-/

/-! ## A123560.P14526855864697483764

`A287698(a(n-1)+n)+a(n-1)` with `a(0)=1`
-/

namespace A123560.P14526855864697483764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287698 (a (n - 1) + (n : ℤ)).toNat + a (n - 1)

end

end A123560.P14526855864697483764

/-! ## A123560.P11233213056171828969

`A008620(A135907(n)+1+n)`
-/

namespace A123560.P11233213056171828969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A135907 n + 1 + (n : ℤ)).toNat

end

end A123560.P11233213056171828969

/-!
# A123561: Continued fraction expansion of Mills' constant.

The programs for A123561, there is no canonical definition to state claims against.
-/

/-! ## A123561.P6529584310544187639

`A001222(A332258(n)+66)`
-/

namespace A123561.P6529584310544187639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A332258 n + 66).toNat

end

end A123561.P6529584310544187639

/-! ## A123561.P13226396377951996828

`A178045(A120057(n+1))+1`
-/

namespace A123561.P13226396377951996828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178045 (A120057 (n + 1)).toNat + 1

end

end A123561.P13226396377951996828

/-! ## A123561.P287237693636715112

`A194337(A077852(n))+A078442(n+1)`
-/

namespace A123561.P287237693636715112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194337 (A077852 n).toNat + A078442 (n + 1)

end

end A123561.P287237693636715112

/-! ## A123561.P17794926780345830669

`A279387(A166136(n+1))+A209229(n)`
-/

namespace A123561.P17794926780345830669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A166136 (n + 1)).toNat + A209229 n

end

end A123561.P17794926780345830669

/-!
# A123562: Pascal-(1,-3,1) array, read by antidiagonals.

The programs for A123562, the canonical program `A123562.P12633591770868679047` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123562 has offset 0).

The definition of A123562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123562.P12633591770868679047

`T(n-1,k-1)+T(n-1,k)-3*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123562

/-- `T(n-1,k-1)+T(n-1,k)-3*T(n-2,k-1)` -/
def P12633591770868679047.Spec : Prop :=
  ∀ n, P12633591770868679047.a n = A123562 n

theorem P12633591770868679047.correct : P12633591770868679047.Spec := by
  intro n
  simp only [A123562]

end A123562

/-! ## A123562.P13541188404869348783

`A131061(n)-2*A318994(A118180(n))`
-/

namespace A123562.P13541188404869348783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n - 2 * A318994 (A118180 n).toNat

end

end A123562.P13541188404869348783

namespace A123562

/-- `A131061(n)-2*A318994(A118180(n))` -/
def P13541188404869348783.Spec : Prop :=
  ∀ n, P13541188404869348783.a n = A123562 n

end A123562

/-! ## A123562.P18149560938189859656

`A004273(A119329(n))-A001222(A118185(n))`
-/

namespace A123562.P18149560938189859656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A119329 n).toNat - A001222 (A118185 n).toNat

end

end A123562.P18149560938189859656

namespace A123562

/-- `A004273(A119329(n))-A001222(A118185(n))` -/
def P18149560938189859656.Spec : Prop :=
  ∀ n, P18149560938189859656.a n = A123562 n

end A123562

/-! ## A123562.P44445318839305261

`A088705(A154867(n)²)`
-/

namespace A123562.P44445318839305261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A154867 n ^ 2).toNat

end

end A123562.P44445318839305261

namespace A123562

/-- `A088705(A154867(n)²)` -/
def P44445318839305261.Spec : Prop :=
  ∀ n, P44445318839305261.a n = A123562 n

end A123562

/-! ## A123562.P261319009317324019

`A145037(A202549(n+1)²)`
-/

namespace A123562.P261319009317324019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A202549 (n + 1) ^ 2).toNat

end

end A123562.P261319009317324019

namespace A123562

/-- `A145037(A202549(n+1)²)` -/
def P261319009317324019.Spec : Prop :=
  ∀ n, P261319009317324019.a n = A123562 n

end A123562

/-!
# A123563: Discriminants of imaginary quadratic fields with class number 20 (negated).

The programs for A123563, there is no canonical definition to state claims against.
-/

/-! ## A123563.P6611185071170082840

`eq[20, A191410(A028310(n))]`
-/

namespace A123563.P6611185071170082840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123563.P6611185071170082840

/-!
# A123564: The infinite Fibonacci word reencoded by writing successive non-overlapping pairs of bits as decimal numbers.

The programs for A123564, the canonical program `A123564.P1394772909650347147` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123564 has offset 1).

The definition of A123564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123564.P1018698318403111117

`3-A383670(2*(n+1))`
-/

namespace A123564.P1018698318403111117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A383670 (2 * (n + 1))

end

end A123564.P1018698318403111117

namespace A123564

/-- `3-A383670(2*(n+1))` -/
def P1018698318403111117.Spec : Prop :=
  ∀ n, P1018698318403111117.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P9442514423245989465

`and(3, -A003754(2*n+3))`
-/

namespace A123564.P9442514423245989465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A003754 (2 * n + 3))

end

end A123564.P9442514423245989465

namespace A123564

/-- `and(3, -A003754(2*n+3))` -/
def P9442514423245989465.Spec : Prop :=
  ∀ n, P9442514423245989465.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P2473796573927856253

`A339052(n)+Δ[A184516(n+1)]`
-/

namespace A123564.P2473796573927856253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 n + (f1 (n + 1) - f1 n)

end

end A123564.P2473796573927856253

namespace A123564

/-- `A339052(n)+Δ[A184516(n+1)]` -/
def P2473796573927856253.Spec : Prop :=
  ∀ n, P2473796573927856253.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P1394772909650347147

`A096270(Δ[n²])+Δ[A001965(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123564

/-- `A096270(Δ[n²])+Δ[A001965(n)]` -/
def P1394772909650347147.Spec : Prop :=
  ∀ n, P1394772909650347147.a n = A123564 (n + 1)

theorem P1394772909650347147.correct : P1394772909650347147.Spec := by
  intro n
  simp only [A123564, Nat.add_sub_cancel]

end A123564

/-! ## A123564.P7644649466901790139

`Δ[A001965(n)]+1-A003849(2*n)`
-/

namespace A123564.P7644649466901790139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A003849 (2 * n))

end

end A123564.P7644649466901790139

namespace A123564

/-- `Δ[A001965(n)]+1-A003849(2*n)` -/
def P7644649466901790139.Spec : Prop :=
  ∀ n, P7644649466901790139.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P14091725384137505373

`A123740(2*n+1)+A014675(2*n)`
-/

namespace A123564.P14091725384137505373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (2 * n + 1) + A014675 (2 * n)

end

end A123564.P14091725384137505373

namespace A123564

/-- `A123740(2*n+1)+A014675(2*n)` -/
def P14091725384137505373.Spec : Prop :=
  ∀ n, P14091725384137505373.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P8304793748744903564

`A014675(2*n)+1-A005713(2*n)`
-/

namespace A123564.P8304793748744903564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (2 * n) + (1 - A005713 (2 * n))

end

end A123564.P8304793748744903564

namespace A123564

/-- `A014675(2*n)+1-A005713(2*n)` -/
def P8304793748744903564.Spec : Prop :=
  ∀ n, P8304793748744903564.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P9784160045263357793

`A282162(2*n+1)-A005713(2*n)`
-/

namespace A123564.P9784160045263357793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (2 * n + 1) - A005713 (2 * n)

end

end A123564.P9784160045263357793

namespace A123564

/-- `A282162(2*n+1)-A005713(2*n)` -/
def P9784160045263357793.Spec : Prop :=
  ∀ n, P9784160045263357793.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P8890548212315085129

`A005614(2*n)+2-A005713(2*n)`
-/

namespace A123564.P8890548212315085129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) + (2 - A005713 (2 * n))

end

end A123564.P8890548212315085129

namespace A123564

/-- `A005614(2*n)+2-A005713(2*n)` -/
def P8890548212315085129.Spec : Prop :=
  ∀ n, P8890548212315085129.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P16319984961599514808

`3-(A005713(2*n)+A003849(2*n))`
-/

namespace A123564.P16319984961599514808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A005713 (2 * n) + A003849 (2 * n))

end

end A123564.P16319984961599514808

namespace A123564

/-- `3-(A005713(2*n)+A003849(2*n))` -/
def P16319984961599514808.Spec : Prop :=
  ∀ n, P16319984961599514808.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P10270600395793559083

`or(A005614(2*n+1), A014675(2*n))`
-/

namespace A123564.P10270600395793559083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (2 * n + 1)) (A014675 (2 * n))

end

end A123564.P10270600395793559083

namespace A123564

/-- `or(A005614(2*n+1), A014675(2*n))` -/
def P10270600395793559083.Spec : Prop :=
  ∀ n, P10270600395793559083.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P14867055562857435978

`Δ[A001965(n)]+abs(1-A159917(2*n))`
-/

namespace A123564.P14867055562857435978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |1 - A159917 (2 * n)|

end

end A123564.P14867055562857435978

namespace A123564

/-- `Δ[A001965(n)]+abs(1-A159917(2*n))` -/
def P14867055562857435978.Spec : Prop :=
  ∀ n, P14867055562857435978.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P16782518503939089627

`or(A001468(2*n+1), A005614(Δ[n²]))`
-/

namespace A123564.P16782518503939089627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001468 (2 * n + 1)) (A005614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A123564.P16782518503939089627

namespace A123564

/-- `or(A001468(2*n+1), A005614(Δ[n²]))` -/
def P16782518503939089627.Spec : Prop :=
  ∀ n, P16782518503939089627.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P1815454094790433888

`A096270(2*n+1)+Δ[A005206(2*n)]`
-/

namespace A123564.P1815454094790433888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A123564.P1815454094790433888

namespace A123564

/-- `A096270(2*n+1)+Δ[A005206(2*n)]` -/
def P1815454094790433888.Spec : Prop :=
  ∀ n, P1815454094790433888.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P1057325972442491314

`A123740(2*n+1)+A001468(2*n+1)`
-/

namespace A123564.P1057325972442491314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (2 * n + 1) + A001468 (2 * n + 1)

end

end A123564.P1057325972442491314

namespace A123564

/-- `A123740(2*n+1)+A001468(2*n+1)` -/
def P1057325972442491314.Spec : Prop :=
  ∀ n, P1057325972442491314.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P1085158821465971828

`A001468(2*n+1)+1-A005713(2*n)`
-/

namespace A123564.P1085158821465971828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (2 * n + 1) + (1 - A005713 (2 * n))

end

end A123564.P1085158821465971828

namespace A123564

/-- `A001468(2*n+1)+1-A005713(2*n)` -/
def P1085158821465971828.Spec : Prop :=
  ∀ n, P1085158821465971828.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P7866791688555399041

`A050141(2*n+1)-A003849(2*n+1)`
-/

namespace A123564.P7866791688555399041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050141 (2 * n + 1) - A003849 (2 * n + 1)

end

end A123564.P7866791688555399041

namespace A123564

/-- `A050141(2*n+1)-A003849(2*n+1)` -/
def P7866791688555399041.Spec : Prop :=
  ∀ n, P7866791688555399041.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P9248850778557760273

`A001950(A060144(2*n+1)+1)-2*n`
-/

namespace A123564.P9248850778557760273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A060144 (2 * n + 1) + 1).toNat - (2 * n : ℤ)

end

end A123564.P9248850778557760273

namespace A123564

/-- `A001950(A060144(2*n+1)+1)-2*n` -/
def P9248850778557760273.Spec : Prop :=
  ∀ n, P9248850778557760273.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P7723637807631985534

`A005614(2*n)*A014675(2*n+1)+1`
-/

namespace A123564.P7723637807631985534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) * A014675 (2 * n + 1) + 1

end

end A123564.P7723637807631985534

namespace A123564

/-- `A005614(2*n)*A014675(2*n+1)+1` -/
def P7723637807631985534.Spec : Prop :=
  ∀ n, P7723637807631985534.a n = A123564 (n + 1)

end A123564

/-! ## A123564.P7529465454924445465

`A096270(2*n+1)+2-A005713(2*n)`
-/

namespace A123564.P7529465454924445465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n + 1) + (2 - A005713 (2 * n))

end

end A123564.P7529465454924445465

namespace A123564

/-- `A096270(2*n+1)+2-A005713(2*n)` -/
def P7529465454924445465.Spec : Prop :=
  ∀ n, P7529465454924445465.a n = A123564 (n + 1)

end A123564

/-!
# A123565: a(n) is the number of positive integers k which are <= n and where k, k-1 and k+1 are each coprime to n.

The programs for A123565, there is no canonical definition to state claims against.
-/

/-! ## A123565.P875349967110472345

`A002016(n+1)*A232991(n)`
-/

namespace A123565.P875349967110472345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002016 (n + 1) * A232991 n

end

end A123565.P875349967110472345

/-! ## A123565.P16123726175703083297

`A232991(n)*A319534(n+1)`
-/

namespace A123565.P16123726175703083297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 n * A319534 (n + 1)

end

end A123565.P16123726175703083297

/-! ## A123565.P7274583375589302737

`char[A047233(n+1)]*A002016(n+1)`
-/

namespace A123565.P7274583375589302737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002016 (n + 1)

end

end A123565.P7274583375589302737

/-! ## A123565.P10566636534007232939

`char[A047233(n+1)]*A319534(n+1)`
-/

namespace A123565.P10566636534007232939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319534 (n + 1)

end

end A123565.P10566636534007232939

/-! ## A123565.P6763655299286271425

`A000007(A215573(n+1))*A002016(n+1)`
-/

namespace A123565.P6763655299286271425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A215573 (n + 1)).toNat * A002016 (n + 1)

end

end A123565.P6763655299286271425

/-! ## A123565.P11193228138327416038

`A000007(A215573(n+1))*A319534(n+1)`
-/

namespace A123565.P11193228138327416038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A215573 (n + 1)).toNat * A319534 (n + 1)

end

end A123565.P11193228138327416038

/-! ## A123565.P11954770740977010818

`A057427(A241663(n+1))*A319534(n+1)`
-/

namespace A123565.P11954770740977010818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A241663 (n + 1)).toNat * A319534 (n + 1)

end

end A123565.P11954770740977010818

/-! ## A123565.P6079087642063566546

`A002016(n+1)%A001844(A347233(n+1))`
-/

namespace A123565.P6079087642063566546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002016 (n + 1)) (A001844 (A347233 (n + 1)).toNat)

end

end A123565.P6079087642063566546

/-! ## A123565.P15790999807337382936

`A319534(n+1)%A001844(A347233(n+1))`
-/

namespace A123565.P15790999807337382936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319534 (n + 1)) (A001844 (A347233 (n + 1)).toNat)

end

end A123565.P15790999807337382936

/-! ## A123565.P9382872488478986687

`A030267(n+1)%2*A319534(n+1)`
-/

namespace A123565.P9382872488478986687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030267 (n + 1)) 2 * A319534 (n + 1)

end

end A123565.P9382872488478986687

/-!
# A123566: Table (read by antidiagonals) where t(1,n) = t(m,1) = 1 and where t(m,n) = lcm(Sum_{k=1..m-1} t(k,n), Sum_{j=1..n-1} t(m,j)).

The programs for A123566, there is no canonical definition to state claims against.
-/

/-! ## A123566.P12206957807500473059

`A204551(lcm(A022166(n), A099594(n)))`
-/

namespace A123566.P12206957807500473059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (Int.lcm (A022166 n) (A099594 n))

end

end A123566.P12206957807500473059

/-! ## A123566.P12820226742254958781

`A124976(n+1)/A356224(A260340(n))`
-/

namespace A123566.P12820226742254958781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124976 (n + 1) : ℚ) / (A356224 (A260340 n).toNat : ℚ)

end

end A123566.P12820226742254958781

/-! ## A123566.P18204731424956510669

`gcd(A002417(A317565(n+1)), A124976(n+1))`
-/

namespace A123566.P18204731424956510669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002417 (A317565 (n + 1)).toNat) (A124976 (n + 1))

end

end A123566.P18204731424956510669

/-!
# A123567: Recursive sum of 2*Omega(n), where Omega(n) is the sequence A001222.

The programs for A123567, the canonical program `A123567.P4954258086783533628` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123567 has offset 1).

The definition of A123567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123567.P4954258086783533628

`∑[2*∑{e}[n+1, #]]+3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123567

/-- `∑[2*∑{e}[n+1, #]]+3` -/
def P4954258086783533628.Spec : Prop :=
  ∀ n, (P4954258086783533628.a n : ℤ) = A123567 (n + 1)

theorem P4954258086783533628.correct : P4954258086783533628.Spec := by
  intro n
  simp only [A123567, Nat.add_sub_cancel]

end A123567

/-! ## A123567.P8565859844120835000

`∑{e}[n+1, 2*#]+a(n-1)` with `a(0)=3`
-/

namespace A123567.P8565859844120835000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p + a (n - 1)

end

end A123567.P8565859844120835000

namespace A123567

/-- `∑{e}[n+1, 2*#]+a(n-1)` -/
def P8565859844120835000.Spec : Prop :=
  ∀ n, (P8565859844120835000.a n : ℤ) = A123567 (n + 1)

end A123567

/-! ## A123567.P1406498344730380208

`∑[A255201(n+1)]+3`
-/

namespace A123567.P1406498344730380208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A123567.P1406498344730380208

namespace A123567

/-- `∑[A255201(n+1)]+3` -/
def P1406498344730380208.Spec : Prop :=
  ∀ n, P1406498344730380208.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P6652118673059291361

`2*A022559(n+1)+3`
-/

namespace A123567.P6652118673059291361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022559 (n + 1) + 3

end

end A123567.P6652118673059291361

namespace A123567

/-- `2*A022559(n+1)+3` -/
def P6652118673059291361.Spec : Prop :=
  ∀ n, P6652118673059291361.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P9187300545187393440

`∑[2*A086436(n+1)]+1`
-/

namespace A123567.P9187300545187393440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123567.P9187300545187393440

namespace A123567

/-- `∑[2*A086436(n+1)]+1` -/
def P9187300545187393440.Spec : Prop :=
  ∀ n, P9187300545187393440.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P14618906642651943698

`∑[2*A001222(n+1)]+3`
-/

namespace A123567.P14618906642651943698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A123567.P14618906642651943698

namespace A123567

/-- `∑[2*A001222(n+1)]+3` -/
def P14618906642651943698.Spec : Prop :=
  ∀ n, P14618906642651943698.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P11027814385384473385

`∑[A004277(A001222(n+1))]+2`
-/

namespace A123567.P11027814385384473385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A123567.P11027814385384473385

namespace A123567

/-- `∑[A004277(A001222(n+1))]+2` -/
def P11027814385384473385.Spec : Prop :=
  ∀ n, P11027814385384473385.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P11612124540478794264

`A004275(∑[∑{e}[n+1, #]]+2)+1`
-/

namespace A123567.P11612124540478794264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A123567.P11612124540478794264

namespace A123567

/-- `A004275(∑[∑{e}[n+1, #]]+2)+1` -/
def P11612124540478794264.Spec : Prop :=
  ∀ n, P11612124540478794264.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P12559387029490978782

`A004273(A022559(n+1)+2)`
-/

namespace A123567.P12559387029490978782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A022559 (n + 1) + 2).toNat

end

end A123567.P12559387029490978782

namespace A123567

/-- `A004273(A022559(n+1)+2)` -/
def P12559387029490978782.Spec : Prop :=
  ∀ n, P12559387029490978782.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P8801717927957622224

`A005408(∑[A001222(n+1)]+1)`
-/

namespace A123567.P8801717927957622224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A123567.P8801717927957622224

namespace A123567

/-- `A005408(∑[A001222(n+1)]+1)` -/
def P8801717927957622224.Spec : Prop :=
  ∀ n, P8801717927957622224.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P6106306139085147210

`A144396(∑[A001222(n+1)]+1)`
-/

namespace A123567.P6106306139085147210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A123567.P6106306139085147210

namespace A123567

/-- `A144396(∑[A001222(n+1)]+1)` -/
def P6106306139085147210.Spec : Prop :=
  ∀ n, P6106306139085147210.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P8741952865373399267

`A004273(∑[A001222(n+1)]+2)`
-/

namespace A123567.P8741952865373399267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A123567.P8741952865373399267

namespace A123567

/-- `A004273(∑[A001222(n+1)]+2)` -/
def P8741952865373399267.Spec : Prop :=
  ∀ n, P8741952865373399267.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P12232256241529849589

`A165754(∑[2*A001222(n+1)])`
-/

namespace A123567.P12232256241529849589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123567.P12232256241529849589

namespace A123567

/-- `A165754(∑[2*A001222(n+1)])` -/
def P12232256241529849589.Spec : Prop :=
  ∀ n, P12232256241529849589.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P17840940244850370073

`∑[∑{e}[(n+1)², #]]+3`
-/

namespace A123567.P17840940244850370073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A123567.P17840940244850370073

namespace A123567

/-- `∑[∑{e}[(n+1)², #]]+3` -/
def P17840940244850370073.Spec : Prop :=
  ∀ n, (P17840940244850370073.a n : ℤ) = A123567 (n + 1)

end A123567

/-! ## A123567.P3443936499302722372

`∑[A001222((n+1)²)]+3`
-/

namespace A123567.P3443936499302722372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A123567.P3443936499302722372

namespace A123567

/-- `∑[A001222((n+1)²)]+3` -/
def P3443936499302722372.Spec : Prop :=
  ∀ n, P3443936499302722372.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P3073533407622545226

`A001222(∑[n+1+n])+a(n-1)` with `a(0)=3`
-/

namespace A123567.P3073533407622545226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A123567.P3073533407622545226

namespace A123567

/-- `A001222(∑[n+1+n])+a(n-1)` -/
def P3073533407622545226.Spec : Prop :=
  ∀ n, P3073533407622545226.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P12824595557762540123

`A165754(∑[A001222((n+1)²)])`
-/

namespace A123567.P12824595557762540123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123567.P12824595557762540123

namespace A123567

/-- `A165754(∑[A001222((n+1)²)])` -/
def P12824595557762540123.Spec : Prop :=
  ∀ n, P12824595557762540123.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P4010730121542457241

`∑[A086436((n+1)²)]+2`
-/

namespace A123567.P4010730121542457241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A123567.P4010730121542457241

namespace A123567

/-- `∑[A086436((n+1)²)]+2` -/
def P4010730121542457241.Spec : Prop :=
  ∀ n, P4010730121542457241.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P10067420891526655922

`∑[A249901((n+1)²)]+2`
-/

namespace A123567.P10067420891526655922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249901 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A123567.P10067420891526655922

namespace A123567

/-- `∑[A249901((n+1)²)]+2` -/
def P10067420891526655922.Spec : Prop :=
  ∀ n, P10067420891526655922.a n = A123567 (n + 1)

end A123567

/-! ## A123567.P16191268151258242388

`∑[A144494((n+1)²)]+3`
-/

namespace A123567.P16191268151258242388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A123567.P16191268151258242388

namespace A123567

/-- `∑[A144494((n+1)²)]+3` -/
def P16191268151258242388.Spec : Prop :=
  ∀ n, P16191268151258242388.a n = A123567 (n + 1)

end A123567

/-!
# A123568: Prime numbers of the form (10^n - 7)/3.

The programs for A123568, there is no canonical definition to state claims against.
-/

/-! ## A123568.P5042134879249086544

`A051200(n+2)`
-/

namespace A123568.P5042134879249086544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051200 (n + 2)

end

end A123568.P5042134879249086544

/-! ## A123568.P4996609994021082204

`A033175(A055520(n+1))`
-/

namespace A123568.P4996609994021082204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 (A055520 (n + 1)).toNat

end

end A123568.P4996609994021082204

/-! ## A123568.P10596392576003036655

`A033175(eq[1, A104484(n)])`
-/

namespace A123568.P10596392576003036655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123568.P10596392576003036655

/-! ## A123568.P12871303857323421588

`A033175(eq[2, A105267(n)])`
-/

namespace A123568.P12871303857323421588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123568.P12871303857323421588

/-! ## A123568.P14010759217628674544

`A033175(A055557(n+1)-1)`
-/

namespace A123568.P14010759217628674544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 (A055557 (n + 1) - 1).toNat

end

end A123568.P14010759217628674544

/-!
# A123569: Number of ways to write n as an ordered sum of 1s, 2s, 3s and 4s such that no 2 precedes any 1 and no 3 precedes any 1 or 2.

The programs for A123569, there is no canonical definition to state claims against.
-/

/-! ## A123569.P16727104769097514833

`A123576(A001611(n))+A085894(n)`
-/

namespace A123569.P16727104769097514833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A001611 n).toNat + A085894 n

end

end A123569.P16727104769097514833

/-! ## A123569.P67143114498252826

`A331162(A271485(n)-A326593(n))`
-/

namespace A123569.P67143114498252826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A271485 n - A326593 n).toNat

end

end A123569.P67143114498252826

/-! ## A123569.P16879263934335125646

`A000196(A210736(n)*A313281(n))`
-/

namespace A123569.P16879263934335125646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A210736 n * A313281 n).toNat

end

end A123569.P16879263934335125646

/-! ## A123569.P9515519386192853053

`A178786(A210736(n)*A313281(n))`
-/

namespace A123569.P9515519386192853053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A210736 n * A313281 n).toNat

end

end A123569.P9515519386192853053

/-! ## A123569.P11074207112261184666

`A331162(xor(A271485(n), A326593(n)))`
-/

namespace A123569.P11074207112261184666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (Int.xor (A271485 n) (A326593 n)).toNat

end

end A123569.P11074207112261184666

/-!
# A123571: Smallest prime p such that p divides m^(m+1)+1, where m = (p-2n-1)/(2n).

The programs for A123571, there is no canonical definition to state claims against.
-/

/-! ## A123571.P6836741239466996148

`(A177714(n+1)+1)*2*(n+1)+1`
-/

namespace A123571.P6836741239466996148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177714 (n + 1) + 1) * (2 * (n + 1) : ℤ) + 1

end

end A123571.P6836741239466996148

/-!
# A123572: The Kruskal-Macaulay function K_3(n).

The programs for A123572, there is no canonical definition to state claims against.
-/

/-! ## A123572.P5189259611355819094

`comp[a(round(n-sqrt(2*n)))+n]-n` with `a(0)=1`
-/

namespace A123572.P5189259611355819094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 * n : ℝ))).toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A123572.P5189259611355819094

/-! ## A123572.P11013425177046442669

`comp[∑[A002262(n)]+1]-n`
-/

namespace A123572.P11013425177046442669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P11013425177046442669

/-! ## A123572.P816370101247641545

`comp[∑[A163351(n)]+1]-n`
-/

namespace A123572.P816370101247641545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P816370101247641545

/-! ## A123572.P16302712431844713948

`comp[∑[A298486(n)]+1]-n`
-/

namespace A123572.P16302712431844713948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P16302712431844713948

/-! ## A123572.P14374754647721808056

`comp[∑[A128227(n)]-n]-n`
-/

namespace A123572.P14374754647721808056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P14374754647721808056

/-! ## A123572.P16228248586844526095

`comp[A111138(n+1)+1]-n`
-/

namespace A123572.P16228248586844526095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111138 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P16228248586844526095

/-! ## A123572.P1161130045977826288

`comp[A014370(n+1)-n]-n`
-/

namespace A123572.P1161130045977826288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P1161130045977826288

/-! ## A123572.P11640264200712961779

`comp[1-A056558(n)+n]-n`
-/

namespace A123572.P11640264200712961779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056558 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P11640264200712961779

/-! ## A123572.P15197124578106085154

`comp[∑[A025668(n+1)]+1]-n`
-/

namespace A123572.P15197124578106085154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P15197124578106085154

/-! ## A123572.P4109497946076422340

`comp[∑[A025690(n+1)]+1]-n`
-/

namespace A123572.P4109497946076422340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025690 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123572.P4109497946076422340

/-!
# A123573: The Kruskal-Macaulay function K_4(n).

The programs for A123573, there is no canonical definition to state claims against.
-/

/-! ## A123573.P3755363493148566661

`comp[A123575(n)+1]-n`
-/

namespace A123573.P3755363493148566661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123573.P3755363493148566661

/-! ## A123573.P12236207278587136448

`comp[1-A127324(n)+n]-n`
-/

namespace A123573.P12236207278587136448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127324 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123573.P12236207278587136448

/-! ## A123573.P3119537555099177089

`∑[val(lt[(n*A000120(n)-4*n)², 3]+1, 2)]`
-/

namespace A123573.P3119537555099177089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000120 n - (4 * n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123573.P3119537555099177089

/-! ## A123573.P2583857833051879494

`A001489(n)+comp[A123575(n)+1]`
-/

namespace A123573.P2583857833051879494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A123573.P2583857833051879494

/-! ## A123573.P2829467401945459588

`eq[0, A038189(A014312(n+1)+1)]-n`
-/

namespace A123573.P2829467401945459588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A014312 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123573.P2829467401945459588

/-! ## A123573.P17514440058205038996

`A024000(n+1)+comp[A123575(n)+1+n]`
-/

namespace A123573.P17514440058205038996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A123573.P17514440058205038996

/-! ## A123573.P420349056831306571

`A022958(n+2)+comp[A123575(n)+1+n]`
-/

namespace A123573.P420349056831306571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A123573.P420349056831306571

/-! ## A123573.P3293831588028548508

`A123580(n)+A123572(A123580(n))`
-/

namespace A123573.P3293831588028548508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 n + A123572 (A123580 n).toNat

end

end A123573.P3293831588028548508

/-! ## A123573.P6099391312474949695

`A176447(A005843(n))+comp[A123575(n)+1+n]`
-/

namespace A123573.P6099391312474949695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (A005843 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A123573.P6099391312474949695

/-!
# A123574: The Kruskal-Macaulay function K_5(n).

The programs for A123574, there is no canonical definition to state claims against.
-/

/-! ## A123574.P15637820255903980345

`A123731(n)+A123573(A123731(n))`
-/

namespace A123574.P15637820255903980345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 n + A123573 (A123731 n).toNat

end

end A123574.P15637820255903980345

/-! ## A123574.P4391618424497054632

`∑[eq[5*n, A057147(n)]%10]`
-/

namespace A123574.P4391618424497054632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123574.P4391618424497054632

/-! ## A123574.P12435166697032012759

`A123731(eq[0, A123731(n)%A123731(n+1)])`
-/

namespace A123574.P12435166697032012759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123731 n) (A123731 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123574.P12435166697032012759

/-! ## A123574.P4544576748417886383

`∑[A166352(A261307(n+2))]`
-/

namespace A123574.P4544576748417886383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166352 (A261307 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123574.P4544576748417886383

/-!
# A123575: The Kruskal-Macaulay function L_3(n).

The programs for A123575, the canonical program `A123575.P4742146334013980851` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123575 has offset 0).

The definition of A123575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123575.P4742146334013980851

`∑[A056558(abs(1-n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A123575

/-- `∑[A056558(abs(1-n))]` -/
def P4742146334013980851.Spec : Prop :=
  ∀ n, P4742146334013980851.a n = A123575 n

theorem P4742146334013980851.correct : P4742146334013980851.Spec := by
  intro n
  simp only [A123575]

end A123575

/-! ## A123575.P14818522788535781835

`A056558(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A123575.P14818522788535781835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056558 (n - 1) + a (n - 1)

end

end A123575.P14818522788535781835

namespace A123575

/-- `A056558(n-1)+a(n-1)` -/
def P14818522788535781835.Spec : Prop :=
  ∀ n, P14818522788535781835.a n = A123575 n

end A123575

/-! ## A123575.P9565805603937995062

`∑[A056558(n)]-A056558(n)`
-/

namespace A123575.P9565805603937995062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056558 n

end

end A123575.P9565805603937995062

namespace A123575

/-- `∑[A056558(n)]-A056558(n)` -/
def P9565805603937995062.Spec : Prop :=
  ∀ n, P9565805603937995062.a n = A123575 n

end A123575

/-! ## A123575.P1921216042507203621

`∑[A331195(record[A014682(n)])]`
-/

namespace A123575.P1921216042507203621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123575.P1921216042507203621

namespace A123575

/-- `∑[A331195(record[A014682(n)])]` -/
def P1921216042507203621.Spec : Prop :=
  ∀ n, P1921216042507203621.a n = A123575 n

end A123575

/-! ## A123575.P8531860136887550598

`∑[A331195(record[A173732(n)])]`
-/

namespace A123575.P8531860136887550598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123575.P8531860136887550598

namespace A123575

/-- `∑[A331195(record[A173732(n)])]` -/
def P8531860136887550598.Spec : Prop :=
  ∀ n, P8531860136887550598.a n = A123575 n

end A123575

/-! ## A123575.P14241610755543916956

`∑[A331195(record[A185727(n)])]`
-/

namespace A123575.P14241610755543916956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123575.P14241610755543916956

namespace A123575

/-- `∑[A331195(record[A185727(n)])]` -/
def P14241610755543916956.Spec : Prop :=
  ∀ n, P14241610755543916956.a n = A123575 n

end A123575

/-! ## A123575.P4962965910616114220

`eq[0, A127324(n)]-n`
-/

namespace A123575.P4962965910616114220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123575.P4962965910616114220

namespace A123575

/-- `eq[0, A127324(n)]-n` -/
def P4962965910616114220.Spec : Prop :=
  ∀ n, P4962965910616114220.a n = A123575 n

end A123575

/-! ## A123575.P1941523895998042621

`∑[A333516(n+1)]-(A333516(n+1)+n)`
-/

namespace A123575.P1941523895998042621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A333516 (n + 1) + (n : ℤ))

end

end A123575.P1941523895998042621

namespace A123575

/-- `∑[A333516(n+1)]-(A333516(n+1)+n)` -/
def P1941523895998042621.Spec : Prop :=
  ∀ n, P1941523895998042621.a n = A123575 n

end A123575

/-!
# A123576: The Kruskal-Macaulay function L_4(n).

The programs for A123576, there is no canonical definition to state claims against.
-/

/-! ## A123576.P14123174890731907589

`∑[A127324(abs(1-n))]`
-/

namespace A123576.P14123174890731907589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123576.P14123174890731907589

/-! ## A123576.P165628675431461218

`eq[1, Δ[A004889(n+1)]]-n`
-/

namespace A123576.P165628675431461218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123576.P165628675431461218

/-! ## A123576.P16144521708904462623

`eq[1, Δ[A004911(n+1)]]-n`
-/

namespace A123576.P16144521708904462623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123576.P16144521708904462623

/-! ## A123576.P9246849685562555662

`A127324(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A123576.P9246849685562555662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A127324 (n - 1) + a (n - 1)

end

end A123576.P9246849685562555662

/-! ## A123576.P1494461264968604673

`∑[A127324(n)]-A127324(n)`
-/

namespace A123576.P1494461264968604673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127324 n

end

end A123576.P1494461264968604673

/-! ## A123576.P2441286272308750347

`eq[1, Δ[A004889(n+1)]]%A028310(n)`
-/

namespace A123576.P2441286272308750347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A028310 n)

end

end A123576.P2441286272308750347

/-!
# A123577: The Kruskal-Macaulay function L_5(n).

The programs for A123577, there is no canonical definition to state claims against.
-/

/-! ## A123577.P17034549574421041274

`eq[1, Δ[A004868(n+1)]]-n`
-/

namespace A123577.P17034549574421041274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123577.P17034549574421041274

/-! ## A123577.P6123691345607280449

`eq[1, Δ[A004879(n+1)]]-n`
-/

namespace A123577.P6123691345607280449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123577.P6123691345607280449

/-! ## A123577.P7358782125582498413

`eq[1, Δ[A004901(n+1)]]-n`
-/

namespace A123577.P7358782125582498413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123577.P7358782125582498413

/-! ## A123577.P249834414405586823

`eq[1, Δ[A004912(n+1)]]-n`
-/

namespace A123577.P249834414405586823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123577.P249834414405586823

/-! ## A123577.P5127805422368433128

`eq[1, and(1, A023688(n+1))]-n`
-/

namespace A123577.P5127805422368433128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A023688 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A123577.P5127805422368433128

/-! ## A123577.P5989829120022010929

`lt[A001222(Δ[A004868(n+1)]), 1]-n`
-/

namespace A123577.P5989829120022010929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A123577.P5989829120022010929

/-! ## A123577.P6447701449281328701

`∑[A007814(A014313(A233583(n+1)))]`
-/

namespace A123577.P6447701449281328701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014313 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123577.P6447701449281328701

/-!
# A123578: The Kruskal-Macaulay function M_2(n).

The programs for A123578, the canonical program `A123578.P15021592032537272378` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123578 has offset 0).

The definition of A123578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123578.P2074939819039533460

`round(sqrt(2*n))`
-/

namespace A123578.P2074939819039533460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A123578.P2074939819039533460

namespace A123578

/-- `round(sqrt(2*n))` -/
def P2074939819039533460.Spec : Prop :=
  ∀ n, P2074939819039533460.a n = A123578 n

end A123578

/-! ## A123578.P14363828406229350663

`∑[char[C(n, 2)+1]]`
-/

namespace A123578.P14363828406229350663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P14363828406229350663

namespace A123578

/-- `∑[char[C(n, 2)+1]]` -/
def P14363828406229350663.Spec : Prop :=
  ∀ n, (P14363828406229350663.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P13222987715002831751

`comp[C(n+2, 2)]-n`
-/

namespace A123578.P13222987715002831751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A123578.P13222987715002831751

namespace A123578

/-- `comp[C(n+2, 2)]-n` -/
def P13222987715002831751.Spec : Prop :=
  ∀ n, P13222987715002831751.a n = A123578 n

end A123578

/-! ## A123578.P10893586794059856677

`∑[and(1, char[∑[n]+1])]`
-/

namespace A123578.P10893586794059856677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P10893586794059856677

namespace A123578

/-- `∑[and(1, char[∑[n]+1])]` -/
def P10893586794059856677.Spec : Prop :=
  ∀ n, (P10893586794059856677.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P8581439656113484990

`ceil(sqrt(∪[2*n, n²]))`
-/

namespace A123578.P8581439656113484990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℝ)⌉

end

end A123578.P8581439656113484990

namespace A123578

/-- `ceil(sqrt(∪[2*n, n²]))` -/
def P8581439656113484990.Spec : Prop :=
  ∀ n, P8581439656113484990.a n = A123578 n

end A123578

/-! ## A123578.P2044658563157959890

`comp[∑[n]+1]%(n+1)`
-/

namespace A123578.P2044658563157959890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A123578.P2044658563157959890

namespace A123578

/-- `comp[∑[n]+1]%(n+1)` -/
def P2044658563157959890.Spec : Prop :=
  ∀ n, (P2044658563157959890.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P9481241833567437292

`∑[char[a(n-1)+n]]` with `a(0)=1`
-/

namespace A123578.P9481241833567437292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P9481241833567437292

namespace A123578

/-- `∑[char[a(n-1)+n]]` -/
def P9481241833567437292.Spec : Prop :=
  ∀ n, (P9481241833567437292.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P10471596109138155591

`∑[char[∑[n%(n+1)]+1]]`
-/

namespace A123578.P10471596109138155591
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P10471596109138155591

namespace A123578

/-- `∑[char[∑[n%(n+1)]+1]]` -/
def P10471596109138155591.Spec : Prop :=
  ∀ n, (P10471596109138155591.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P13917646295534757153

`∑[char[∑[n]+gcd(n, n+1)]]`
-/

namespace A123578.P13917646295534757153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + Nat.gcd n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P13917646295534757153

namespace A123578

/-- `∑[char[∑[n]+gcd(n, n+1)]]` -/
def P13917646295534757153.Spec : Prop :=
  ∀ n, (P13917646295534757153.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P15021592032537272378

`1+a(n-a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123578

/-- `1+a(n-a(n-1))` -/
def P15021592032537272378.Spec : Prop :=
  ∀ n, (P15021592032537272378.a n : ℤ) = A123578 n

theorem P15021592032537272378.correct : P15021592032537272378.Spec := by
  intro n
  simp only [A123578]

end A123578

/-! ## A123578.P1178736353698652372

`∑[char[n-(1-a(n-1))]]` with `a(0)=1`
-/

namespace A123578.P1178736353698652372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - (1 - f2 (n - 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P1178736353698652372

namespace A123578

/-- `∑[char[n-(1-a(n-1))]]` -/
def P1178736353698652372.Spec : Prop :=
  ∀ n, (P1178736353698652372.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P11422086555580777945

`∑[char[∑[ogf((1-x+x^2)/(1-2x+x^2))]]]`
-/

namespace A123578.P11422086555580777945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123578.P11422086555580777945

namespace A123578

/-- `∑[char[∑[ogf((1-x+x^2)/(1-2x+x^2))]]]` -/
def P11422086555580777945.Spec : Prop :=
  ∀ n, (P11422086555580777945.a n : ℤ) = A123578 n

end A123578

/-! ## A123578.P14733595701318711676

`ceil(sqrt(2*n-a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A123578.P14733595701318711676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.sqrt ((2 * n : ℤ) - a (n - 1) : ℝ)⌉

end

end A123578.P14733595701318711676

namespace A123578

/-- `ceil(sqrt(2*n-a(n-1)))` -/
def P14733595701318711676.Spec : Prop :=
  ∀ n, P14733595701318711676.a n = A123578 n

end A123578

/-! ## A123578.P3904298357285184407

`ceil(sqrt(lt[ceil(sqrt(n))², lcm(2, n+1)]))`
-/

namespace A123578.P3904298357285184407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℝ)⌉

end

end A123578.P3904298357285184407

namespace A123578

/-- `ceil(sqrt(lt[ceil(sqrt(n))², lcm(2, n+1)]))` -/
def P3904298357285184407.Spec : Prop :=
  ∀ n, P3904298357285184407.a n = A123578 n

end A123578

/-! ## A123578.P6698774063565323921

`2-(1-a(n-a(n-1)))%n` with `a(0)=0, a(1)=1`
-/

namespace A123578.P6698774063565323921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - Int.tmod (1 - a ((n : ℤ) - a (n - 1)).toNat) (n : ℤ)

end

end A123578.P6698774063565323921

namespace A123578

/-- `2-(1-a(n-a(n-1)))%n` -/
def P6698774063565323921.Spec : Prop :=
  ∀ n, P6698774063565323921.a n = A123578 n

end A123578

/-! ## A123578.P5827115709774387022

`abs(A274093(n))`
-/

namespace A123578.P5827115709774387022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274093 n|

end

end A123578.P5827115709774387022

namespace A123578

/-- `abs(A274093(n))` -/
def P5827115709774387022.Spec : Prop :=
  ∀ n, P5827115709774387022.a n = A123578 n

end A123578

/-! ## A123578.P17703524483852255738

`abs(A274094(n))`
-/

namespace A123578.P17703524483852255738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274094 n|

end

end A123578.P17703524483852255738

namespace A123578

/-- `abs(A274094(n))` -/
def P17703524483852255738.Spec : Prop :=
  ∀ n, P17703524483852255738.a n = A123578 n

end A123578

/-! ## A123578.P12881876419513686576

`sqrt(A168038(n))`
-/

namespace A123578.P12881876419513686576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168038 n : ℝ)

end

end A123578.P12881876419513686576

namespace A123578

/-- `sqrt(A168038(n))` -/
def P12881876419513686576.Spec : Prop :=
  ∀ n, P12881876419513686576.a n = (A123578 n : ℝ)

end A123578

/-! ## A123578.P1687333628954780328

`floor(sqrt(A393450(n)))`
-/

namespace A123578.P1687333628954780328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A393450 n)

end

end A123578.P1687333628954780328

namespace A123578

/-- `floor(sqrt(A393450(n)))` -/
def P1687333628954780328.Spec : Prop :=
  ∀ n, P1687333628954780328.a n = A123578 n

end A123578

/-! ## A123578.P11814634752206592241

`A003056(n)+1-A010054(n)`
-/

namespace A123578.P11814634752206592241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A010054 n)

end

end A123578.P11814634752206592241

namespace A123578

/-- `A003056(n)+1-A010054(n)` -/
def P11814634752206592241.Spec : Prop :=
  ∀ n, P11814634752206592241.a n = A123578 n

end A123578

/-!
# A123579: The Kruskal-Macaulay function M_3(n).

The programs for A123579, the canonical program `A123579.P3370401837568714296` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123579 has offset 0).

The definition of A123579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123579.P3370401837568714296

`∑[char[∑[A002262(n)]+1]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123579

/-- `∑[char[∑[A002262(n)]+1]]` -/
def P3370401837568714296.Spec : Prop :=
  ∀ n, (P3370401837568714296.a n : ℤ) = A123579 n

theorem P3370401837568714296.correct : P3370401837568714296.Spec := by
  intro n
  simp only [A123579]

end A123579

/-! ## A123579.P5889422935156868426

`∑[char[∑[A128227(n)]-n]]`
-/

namespace A123579.P5889422935156868426
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P5889422935156868426

namespace A123579

/-- `∑[char[∑[A128227(n)]-n]]` -/
def P5889422935156868426.Spec : Prop :=
  ∀ n, (P5889422935156868426.a n : ℤ) = A123579 n

end A123579

/-! ## A123579.P5011136756549441408

`∑[char[A111138(n+1)+1]]`
-/

namespace A123579.P5011136756549441408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111138 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P5011136756549441408

namespace A123579

/-- `∑[char[A111138(n+1)+1]]` -/
def P5011136756549441408.Spec : Prop :=
  ∀ n, (P5011136756549441408.a n : ℤ) = A123579 n

end A123579

/-! ## A123579.P10498733769971896783

`∑[char[A014370(n+1)-n]]`
-/

namespace A123579.P10498733769971896783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P10498733769971896783

namespace A123579

/-- `∑[char[A014370(n+1)-n]]` -/
def P10498733769971896783.Spec : Prop :=
  ∀ n, (P10498733769971896783.a n : ℤ) = A123579 n

end A123579

/-! ## A123579.P5928757608523166488

`comp[∑[A131818(n+1)]]-n`
-/

namespace A123579.P5928757608523166488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A123579.P5928757608523166488

namespace A123579

/-- `comp[∑[A131818(n+1)]]-n` -/
def P5928757608523166488.Spec : Prop :=
  ∀ n, P5928757608523166488.a n = A123579 n

end A123579

/-! ## A123579.P17884266176544727044

`∑[char[∑[A002260(n+1)]-n]]`
-/

namespace A123579.P17884266176544727044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P17884266176544727044

namespace A123579

/-- `∑[char[∑[A002260(n+1)]-n]]` -/
def P17884266176544727044.Spec : Prop :=
  ∀ n, (P17884266176544727044.a n : ℤ) = A123579 n

end A123579

/-! ## A123579.P12894420085145955288

`∑[char[∑[A057554(2*n+1)]+1]]`
-/

namespace A123579.P12894420085145955288
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P12894420085145955288

namespace A123579

/-- `∑[char[∑[A057554(2*n+1)]+1]]` -/
def P12894420085145955288.Spec : Prop :=
  ∀ n, (P12894420085145955288.a n : ℤ) = A123579 n

end A123579

/-! ## A123579.P11492951581830669402

`∑[val(p?[5-A000120(n)], 3)]`
-/

namespace A123579.P11492951581830669402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P11492951581830669402

namespace A123579

/-- `∑[val(p?[5-A000120(n)], 3)]` -/
def P11492951581830669402.Spec : Prop :=
  ∀ n, (P11492951581830669402.a n : ℤ) = A123579 n

end A123579

/-! ## A123579.P1272590186716221064

`A340068(A151757(n+1)-1)`
-/

namespace A123579.P1272590186716221064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340068 (A151757 (n + 1) - 1).toNat

end

end A123579.P1272590186716221064

namespace A123579

/-- `A340068(A151757(n+1)-1)` -/
def P1272590186716221064.Spec : Prop :=
  ∀ n, P1272590186716221064.a n = A123579 n

end A123579

/-!
# A123580: The Kruskal-Macaulay function M_4(n).

The programs for A123580, there is no canonical definition to state claims against.
-/

/-! ## A123580.P16802991063564275228

`∑[char[A123575(n)+1]]`
-/

namespace A123580.P16802991063564275228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P16802991063564275228

/-! ## A123580.P10761049604651613002

`∑[char[∑[A056558(n)]+1]]`
-/

namespace A123580.P10761049604651613002
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P10761049604651613002

/-! ## A123580.P13459972873338862950

`∑[A066884(∑[n+3])%2]`
-/

namespace A123580.P13459972873338862950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066884 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P13459972873338862950

/-! ## A123580.P9020306615606420827

`∑[char[eq[0, A127324(n)]+1]]`
-/

namespace A123580.P9020306615606420827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P9020306615606420827

/-! ## A123580.P6262013066311269807

`∑[char[Δ[A004866(n+1)]+n]]`
-/

namespace A123580.P6262013066311269807
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P6262013066311269807

/-! ## A123580.P418762735221263158

`∑[char[Δ[A004877(n+1)]+n]]`
-/

namespace A123580.P418762735221263158
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P418762735221263158

/-! ## A123580.P16629311110015550588

`∑[eq[1, and(3, A061338(n+1))]%2]`
-/

namespace A123580.P16629311110015550588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A061338 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P16629311110015550588

/-! ## A123580.P2515708707475250626

`∑[A014707(A014312(n+1))]`
-/

namespace A123580.P2515708707475250626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A014312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P2515708707475250626

/-! ## A123580.P5518374375385472867

`∑[A014707(eq[4, A000120(n)])]`
-/

namespace A123580.P5518374375385472867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P5518374375385472867

/-! ## A123580.P1061716323752603244

`∑[A038189(A014312(n+1)+1)]`
-/

namespace A123580.P1061716323752603244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A014312 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123580.P1061716323752603244

/-!
# A123581: a(1) = 3, a(n) = a(n-1) + greatest prime factor of a(n-1).

The programs for A123581, the canonical program `A123581.P17906717897180016687` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123581 has offset 1).

The definition of A123581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123581.P1963592270798413497

`A367504(n+2)/2`
-/

namespace A123581.P1963592270798413497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367504 (n + 2) : ℚ) / 2

end

end A123581.P1963592270798413497

namespace A123581

/-- `A367504(n+2)/2` -/
def P1963592270798413497.Spec : Prop :=
  ∀ n, P1963592270798413497.a n = (A123581 (n + 1) : ℚ)

end A123581

/-! ## A123581.P17906717897180016687

`∑[or(1, A076272(n+2))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A123581

/-- `∑[or(1, A076272(n+2))]` -/
def P17906717897180016687.Spec : Prop :=
  ∀ n, P17906717897180016687.a n = A123581 (n + 1)

theorem P17906717897180016687.correct : P17906717897180016687.Spec := by
  intro n
  simp only [A123581, Nat.add_sub_cancel]

end A123581

/-! ## A123581.P12392696751369030245

`∑[A076272((char[1]+1)*(n+1)+1)]+1`
-/

namespace A123581.P12392696751369030245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (((if ∃ j, f2 j = n then 1 else 0) + 1) * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123581.P12392696751369030245

namespace A123581

/-- `∑[A076272((char[1]+1)*(n+1)+1)]+1` -/
def P12392696751369030245.Spec : Prop :=
  ∀ n, P12392696751369030245.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P7255744563329681552

`∑[A093074(A076272(n+2))]`
-/

namespace A123581.P7255744563329681552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A076272 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123581.P7255744563329681552

namespace A123581

/-- `∑[A093074(A076272(n+2))]` -/
def P7255744563329681552.Spec : Prop :=
  ∀ n, P7255744563329681552.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P1161338723352829007

`∑[A129527(p?[A076272(n+1)])]`
-/

namespace A123581.P1161338723352829007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123581.P1161338723352829007

namespace A123581

/-- `∑[A129527(p?[A076272(n+1)])]` -/
def P1161338723352829007.Spec : Prop :=
  ∀ n, P1161338723352829007.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P16904378399469345137

`∑[A076272(2*A076272(n+2))]`
-/

namespace A123581.P16904378399469345137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (2 * A076272 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123581.P16904378399469345137

namespace A123581

/-- `∑[A076272(2*A076272(n+2))]` -/
def P16904378399469345137.Spec : Prop :=
  ∀ n, P16904378399469345137.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P5708736302921863378

`∑[A076973(2*A076973(n+2))]`
-/

namespace A123581.P5708736302921863378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (2 * A076973 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123581.P5708736302921863378

namespace A123581

/-- `∑[A076973(2*A076973(n+2))]` -/
def P5708736302921863378.Spec : Prop :=
  ∀ n, P5708736302921863378.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P12175203805506431881

`∑[A076973(A070229(A076973(n+2)))]`
-/

namespace A123581.P12175203805506431881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A070229 (A076973 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123581.P12175203805506431881

namespace A123581

/-- `∑[A076973(A070229(A076973(n+2)))]` -/
def P12175203805506431881.Spec : Prop :=
  ∀ n, P12175203805506431881.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P3136845072094674154

`A076272(n+1)+A036441(n+2)-A076973(n+1)`
-/

namespace A123581.P3136845072094674154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1) + (A036441 (n + 2) - A076973 (n + 1))

end

end A123581.P3136845072094674154

namespace A123581

/-- `A076272(n+1)+A036441(n+2)-A076973(n+1)` -/
def P3136845072094674154.Spec : Prop :=
  ∀ n, P3136845072094674154.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P17317417007014392194

`A000720(2*n+1)+A036441(n+2)-A000720(2*(n+1))`
-/

namespace A123581.P17317417007014392194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) + (A036441 (n + 2) - A000720 (2 * (n + 1)))

end

end A123581.P17317417007014392194

namespace A123581

/-- `A000720(2*n+1)+A036441(n+2)-A000720(2*(n+1))` -/
def P17317417007014392194.Spec : Prop :=
  ∀ n, P17317417007014392194.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P17350105014365302931

`A076271(n+3)-char[A284205(n+1)]`
-/

namespace A123581.P17350105014365302931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284205 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A123581.P17350105014365302931

namespace A123581

/-- `A076271(n+3)-char[A284205(n+1)]` -/
def P17350105014365302931.Spec : Prop :=
  ∀ n, P17350105014365302931.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P8973550177832260076

`A076271(n+3)-char[A284184(3*n+1)]`
-/

namespace A123581.P8973550177832260076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284184 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A123581.P8973550177832260076

namespace A123581

/-- `A076271(n+3)-char[A284184(3*n+1)]` -/
def P8973550177832260076.Spec : Prop :=
  ∀ n, P8973550177832260076.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P4609294424175604620

`∑[A076272(A233583(n+1)+2)]`
-/

namespace A123581.P4609294424175604620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A233583 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123581.P4609294424175604620

namespace A123581

/-- `∑[A076272(A233583(n+1)+2)]` -/
def P4609294424175604620.Spec : Prop :=
  ∀ n, P4609294424175604620.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P13460589439595865917

`∑[A155047(n+2)]+1`
-/

namespace A123581.P13460589439595865917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123581.P13460589439595865917

namespace A123581

/-- `∑[A155047(n+2)]+1` -/
def P13460589439595865917.Spec : Prop :=
  ∀ n, P13460589439595865917.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P4096160430180624110

`A006530(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A123581.P4096160430180624110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1)).toNat + a (n - 1)

end

end A123581.P4096160430180624110

namespace A123581

/-- `A006530(a(n-1))+a(n-1)` -/
def P4096160430180624110.Spec : Prop :=
  ∀ n, P4096160430180624110.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P17452738722779613239

`A331288(A036441(n+2))`
-/

namespace A123581.P17452738722779613239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (A036441 (n + 2)).toNat

end

end A123581.P17452738722779613239

namespace A123581

/-- `A331288(A036441(n+2))` -/
def P17452738722779613239.Spec : Prop :=
  ∀ n, P17452738722779613239.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P197345064321680393

`A070229(a(n-1))` with `a(0)=3`
-/

namespace A123581.P197345064321680393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A070229 (a (n - 1)).toNat

end

end A123581.P197345064321680393

namespace A123581

/-- `A070229(a(n-1))` -/
def P197345064321680393.Spec : Prop :=
  ∀ n, P197345064321680393.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P1101615692241771017

`A171462(a(n-1))+n+3` with `a(0)=3`
-/

namespace A123581.P1101615692241771017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A171462 (a (n - 1)).toNat + (n + 3 : ℤ)

end

end A123581.P1101615692241771017

namespace A123581

/-- `A171462(a(n-1))+n+3` -/
def P1101615692241771017.Spec : Prop :=
  ∀ n, P1101615692241771017.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P16971917715878633792

`A111089(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A123581.P16971917715878633792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A111089 (a (n - 1)).toNat + a (n - 1)

end

end A123581.P16971917715878633792

namespace A123581

/-- `A111089(a(n-1))+a(n-1)` -/
def P16971917715878633792.Spec : Prop :=
  ∀ n, P16971917715878633792.a n = A123581 (n + 1)

end A123581

/-! ## A123581.P11675896418176919928

`A284695(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A123581.P11675896418176919928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A284695 (a (n - 1)).toNat + a (n - 1)

end

end A123581.P11675896418176919928

namespace A123581

/-- `A284695(a(n-1))+a(n-1)` -/
def P11675896418176919928.Spec : Prop :=
  ∀ n, P11675896418176919928.a n = A123581 (n + 1)

end A123581

/-!
# A123585: Triangle T(n,k), 0<=k<=n, given by [1, -1, 1, 0, 0, 0, 0, 0, ...] DELTA [1, 1, -1, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A123585, there is no canonical definition to state claims against.
-/

/-! ## A123585.P2385373028944198425

`A201947(A061579(n))`
-/

namespace A123585.P2385373028944198425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A061579 n).toNat

end

end A123585.P2385373028944198425

/-! ## A123585.P6887222979354687322

`A201947(A114327(n)+n)`
-/

namespace A123585.P6887222979354687322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A114327 n + (n : ℤ)).toNat

end

end A123585.P6887222979354687322

/-! ## A123585.P11612114125436375840

`A201947(A038722(n+1)-1)`
-/

namespace A123585.P11612114125436375840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A038722 (n + 1) - 1).toNat

end

end A123585.P11612114125436375840

/-! ## A123585.P16129799359804502628

`A201947(A093995(n+1)-(n+1))`
-/

namespace A123585.P16129799359804502628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A123585.P16129799359804502628

/-! ## A123585.P562499735074621115

`A201947(A057944(n)+A025581(n))`
-/

namespace A123585.P562499735074621115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A057944 n + A025581 n).toNat

end

end A123585.P562499735074621115

/-! ## A123585.P16224759235708620117

`A201947(A002378(n)%A014132(n+1))`
-/

namespace A123585.P16224759235708620117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A123585.P16224759235708620117

/-! ## A123585.P6685602588890767426

`A201947(A004273(A038722(n+1))%A038722(n+1))`
-/

namespace A123585.P6685602588890767426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (Int.tmod (A004273 (A038722 (n + 1)).toNat) (A038722 (n + 1))).toNat

end

end A123585.P6685602588890767426

/-! ## A123585.P886369321516444671

`A201947(A286099(n)-A268040(n))`
-/

namespace A123585.P886369321516444671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A286099 n - A268040 n).toNat

end

end A123585.P886369321516444671

/-!
# A123586: Numbers that are not palindromes of 3 or more digits in some base b >= 2.

The programs for A123586, there is no canonical definition to state claims against.
-/

/-! ## A123586.P8811142295163656686

`eq[0, A100563(n+1)]+1`
-/

namespace A123586.P8811142295163656686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123586.P8811142295163656686

/-! ## A123586.P13016496295809694720

`lt[n, A016026(n+1)²]+1`
-/

namespace A123586.P13016496295809694720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A123586.P13016496295809694720

/-! ## A123586.P14670086599639088437

`lt[n*A100563(A028310(n)), n]`
-/

namespace A123586.P14670086599639088437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100563 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A123586.P14670086599639088437

/-! ## A123586.P1226330886898173191

`record[(1-A100563(n+1))*A000027(n+1)]`
-/

namespace A123586.P1226330886898173191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A100563 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123586.P1226330886898173191

/-! ## A123586.P16730996438544971977

`record[A028310(n+1)/(A100563(n+1)+1)]`
-/

namespace A123586.P16730996438544971977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A100563 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123586.P16730996438544971977

/-! ## A123586.P9222477136983956836

`record[A008619(2*n)/(A100563(n+1)+1)]`
-/

namespace A123586.P9222477136983956836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A100563 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123586.P9222477136983956836

/-! ## A123586.P16203324052407019320

`record[A028242(2*n)/(A100563(n+1)+1)]`
-/

namespace A123586.P16203324052407019320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A100563 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123586.P16203324052407019320

/-! ## A123586.P562132839831161002

`record[A131732(2*n)/(A100563(n+1)+1)]`
-/

namespace A123586.P562132839831161002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131732 (2 * n) : ℚ) / (A100563 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123586.P562132839831161002

/-!
# A123588: Triangle read by rows: T(n, k) is the coefficient of x^k in the polynomial 1 - ChT(n, x^(1/2))^2, where ChT(n, x) is the n-th Chebyshev polynomial of the first kind, evaluated at x (0 <= k <= n).

The programs for A123588, the canonical program `A123588.P9658134305888897931` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123588 has offset 0).

The definition of A123588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123588.P9658134305888897931

`-floor(A127674(n)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123588

/-- `-floor(A127674(n)/2)` -/
def P9658134305888897931.Spec : Prop :=
  ∀ n, P9658134305888897931.a n = A123588 n

theorem P9658134305888897931.correct : P9658134305888897931.Spec := by
  intro n
  simp only [A123588]

end A123588

/-! ## A123588.P7501260283606812932

`A123583(A133280(n))`
-/

namespace A123588.P7501260283606812932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (A133280 n).toNat

end

end A123588.P7501260283606812932

namespace A123588

/-- `A123583(A133280(n))` -/
def P7501260283606812932.Spec : Prop :=
  ∀ n, P7501260283606812932.a n = A123588 n

end A123588

/-! ## A123588.P3903794990733574172

`A123583(eq[1, A071028(n)])`
-/

namespace A123588.P3903794990733574172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123588.P3903794990733574172

namespace A123588

/-- `A123583(eq[1, A071028(n)])` -/
def P3903794990733574172.Spec : Prop :=
  ∀ n, P3903794990733574172.a n = A123588 n

end A123588

/-! ## A123588.P13626592240004288104

`A123583(2*n-A003056(n))`
-/

namespace A123588.P13626592240004288104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 ((2 * n : ℤ) - A003056 n).toNat

end

end A123588.P13626592240004288104

namespace A123588

/-- `A123583(2*n-A003056(n))` -/
def P13626592240004288104.Spec : Prop :=
  ∀ n, P13626592240004288104.a n = A123588 n

end A123588

/-! ## A123588.P7238523089281529194

`A123583(n-A003056(n)+n)`
-/

namespace A123588.P7238523089281529194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 ((n : ℤ) - A003056 n + (n : ℤ)).toNat

end

end A123588.P7238523089281529194

namespace A123588

/-- `A123583(n-A003056(n)+n)` -/
def P7238523089281529194.Spec : Prop :=
  ∀ n, P7238523089281529194.a n = A123588 n

end A123588

/-! ## A123588.P7281091243749067232

`A123583(n-(A003056(n)-n))`
-/

namespace A123588.P7281091243749067232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 ((n : ℤ) - (A003056 n - (n : ℤ))).toNat

end

end A123588.P7281091243749067232

namespace A123588

/-- `A123583(n-(A003056(n)-n))` -/
def P7281091243749067232.Spec : Prop :=
  ∀ n, P7281091243749067232.a n = A123588 n

end A123588

/-! ## A123588.P3868469985253373259

`A123583(A005408(n)-A002024(n+1))`
-/

namespace A123588.P3868469985253373259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (A005408 n - A002024 (n + 1)).toNat

end

end A123588.P3868469985253373259

namespace A123588

/-- `A123583(A005408(n)-A002024(n+1))` -/
def P3868469985253373259.Spec : Prop :=
  ∀ n, P3868469985253373259.a n = A123588 n

end A123588

/-! ## A123588.P8712467834639022450

`A123583(eq[A123583(n+1)², A123583(n+1)])`
-/

namespace A123588.P8712467834639022450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123588.P8712467834639022450

namespace A123588

/-- `A123583(eq[A123583(n+1)², A123583(n+1)])` -/
def P8712467834639022450.Spec : Prop :=
  ∀ n, P8712467834639022450.a n = A123588 n

end A123588

/-! ## A123588.P2458404813006604640

`A123583(eq[A123583(n+1)^2, A123583(n+1)])`
-/

namespace A123588.P2458404813006604640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123583 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123588.P2458404813006604640

namespace A123588

/-- `A123583(eq[A123583(n+1)^2, A123583(n+1)])` -/
def P2458404813006604640.Spec : Prop :=
  ∀ n, P2458404813006604640.a n = A123588 n

end A123588

/-!
# A123589: Expansion of x*(3*x+1)*(1 - x^2 - x^3)/(1 - x - 15*x^2 - 19*x^3 + 20*x^4).

The programs for A123589, the canonical program `A123589.P9849093435116557279` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123589 has offset 1).

The definition of A123589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-x^2-4x^3-3x^4)/(1-x-15x^2-19x^3+20x^4))` (program `A123589.P9849093435116557279`, by `A123589.P9849093435116557279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123589.P9849093435116557279

`ogf((1+3x-x^2-4x^3-3x^4)/(1-x-15x^2-19x^3+20x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123589

/-- `ogf((1+3x-x^2-4x^3-3x^4)/(1-x-15x^2-19x^3+20x^4))` -/
def P9849093435116557279.Spec : Prop :=
  ∀ n, P9849093435116557279.a n = A123589 (n + 1)

theorem P9849093435116557279.correct : P9849093435116557279.Spec := by
  intro n
  simp only [A123589, Nat.add_sub_cancel]

end A123589

/-!
# A123591: 

The programs for A123591, there is no canonical definition to state claims against.
-/

/-! ## A123591.P9559973962859052572

`((2^n-1)^2^n-1)/(2^n)²`
-/

namespace A123591.P9559973962859052572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ n : ℤ) - 1) ^ 2 ^ n - 1 : ℚ) / ((2 ^ n) ^ 2 : ℚ)

end

end A123591.P9559973962859052572

/-!
# A123592: Primes of the form p^2 + q^2 + r^2, where p,q,r are primes.

The programs for A123592, there is no canonical definition to state claims against.
-/

/-! ## A123592.P17225868603723444298

`p?[A214514(n+1)]`
-/

namespace A123592.P17225868603723444298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123592.P17225868603723444298

/-! ## A123592.P1488338659325820474

`p?[A214515(n+1)-4]`
-/

namespace A123592.P1488338659325820474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214515 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123592.P1488338659325820474

/-! ## A123592.P17090303664763663080

`p?[A045636(n+1)+9]`
-/

namespace A123592.P17090303664763663080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123592.P17090303664763663080

/-! ## A123592.P1145820406423644677

`eq[A183214(n), A226602(n)]`
-/

namespace A123592.P1145820406423644677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123592.P1145820406423644677

/-! ## A123592.P6408931313859192972

`eq[A183214(n), A323774(n)]`
-/

namespace A123592.P6408931313859192972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123592.P6408931313859192972

/-!
# A123593: Inverse binomial transform of lucky numbers (A000959).

The programs for A123593, there is no canonical definition to state claims against.
-/

/-! ## A123593.P11878763576063198469

`A350001(∑[n]+n)`
-/

namespace A123593.P11878763576063198469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350001 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A123593.P11878763576063198469

/-! ## A123593.P8597578018281618644

`A051064(3*n+5)*A350001(A000096(n))`
-/

namespace A123593.P8597578018281618644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (3 * n + 5) * A350001 (A000096 n).toNat

end

end A123593.P8597578018281618644

/-! ## A123593.P6324731476441763801

`A038548(A000040(n+1))*A350001(A000096(n))`
-/

namespace A123593.P6324731476441763801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A000040 (n + 1)).toNat * A350001 (A000096 n).toNat

end

end A123593.P6324731476441763801

/-! ## A123593.P9658228187006494929

`A038548(A105126(n+1))*A350001(A000096(n))`
-/

namespace A123593.P9658228187006494929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A105126 (n + 1)).toNat * A350001 (A000096 n).toNat

end

end A123593.P9658228187006494929

/-! ## A123593.P12376276427032827869

`A292712(A000217(n))*A350001(A000096(n))`
-/

namespace A123593.P12376276427032827869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 n).toNat * A350001 (A000096 n).toNat

end

end A123593.P12376276427032827869

/-!
# A123594: Unique sequence of 0's and 1's which are either repeated or not repeated with the following property: when the sequence is 'coded' in writing down a 1 when an element is repeated and a 0 when it is not repeated and by putting the initial element in front of the sequence thus obtained, the above sequence appears.

The programs for A123594, the canonical program `A123594.P17678384235713202492` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123594 has offset 1).

The definition of A123594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123594.P17678384235713202492

`a(A049705(n-1))` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123594

/-- `a(A049705(n-1))` -/
def P17678384235713202492.Spec : Prop :=
  ∀ n, (P17678384235713202492.a n : ℤ) = A123594 (n + 1)

theorem P17678384235713202492.correct : P17678384235713202492.Spec := by
  intro n
  simp only [A123594, Nat.add_sub_cancel]

end A123594

/-! ## A123594.P13962016868679385817

`char[comp[A013947(n+1)+1]]`
-/

namespace A123594.P13962016868679385817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A123594.P13962016868679385817

namespace A123594

/-- `char[comp[A013947(n+1)+1]]` -/
def P13962016868679385817.Spec : Prop :=
  ∀ n, (P13962016868679385817.a n : ℤ) = A123594 (n + 1)

end A123594

/-! ## A123594.P6002334070446895570

`A000002(abs(2-n)+1)-1`
-/

namespace A123594.P6002334070446895570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (|2 - (n : ℤ)| + 1).toNat - 1

end

end A123594.P6002334070446895570

namespace A123594

/-- `A000002(abs(2-n)+1)-1` -/
def P6002334070446895570.Spec : Prop :=
  ∀ n, P6002334070446895570.a n = A123594 (n + 1)

end A123594

/-! ## A123594.P9985136050281667590

`char[comp[record[A100808(n+1)+n]+1]]`
-/

namespace A123594.P9985136050281667590
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A123594.P9985136050281667590

namespace A123594

/-- `char[comp[record[A100808(n+1)+n]+1]]` -/
def P9985136050281667590.Spec : Prop :=
  ∀ n, (P9985136050281667590.a n : ℤ) = A123594 (n + 1)

end A123594

/-! ## A123594.P13567837155739716910

`A000607(a(A000002(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A123594.P13567837155739716910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000607 (a (A000002 (n - 1)).toNat).toNat

end

end A123594.P13567837155739716910

namespace A123594

/-- `A000607(a(A000002(n-1)))` -/
def P13567837155739716910.Spec : Prop :=
  ∀ n, P13567837155739716910.a n = A123594 (n + 1)

end A123594

/-! ## A123594.P16433521353610791116

`A025900(a(A000002(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A123594.P16433521353610791116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025900 (a (A000002 (n - 1)).toNat).toNat

end

end A123594.P16433521353610791116

namespace A123594

/-- `A025900(a(A000002(n-1)))` -/
def P16433521353610791116.Spec : Prop :=
  ∀ n, P16433521353610791116.a n = A123594 (n + 1)

end A123594

/-! ## A123594.P320448001476382990

`A068914(a(A000002(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A123594.P320448001476382990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A068914 (a (A000002 (n - 1)).toNat).toNat

end

end A123594.P320448001476382990

namespace A123594

/-- `A068914(a(A000002(n-1)))` -/
def P320448001476382990.Spec : Prop :=
  ∀ n, P320448001476382990.a n = A123594 (n + 1)

end A123594

/-! ## A123594.P14059122014676138821

`A171911(a(A000002(n-1))+1)` with `a(0)=1, a(1)=1`
-/

namespace A123594.P14059122014676138821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A171911 (a (A000002 (n - 1)).toNat + 1).toNat

end

end A123594.P14059122014676138821

namespace A123594

/-- `A171911(a(A000002(n-1))+1)` -/
def P14059122014676138821.Spec : Prop :=
  ∀ n, P14059122014676138821.a n = A123594 (n + 1)

end A123594

/-! ## A123594.P11755466712113208358

`2-A000002(A025504(n+1)+2)`
-/

namespace A123594.P11755466712113208358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000002 (A025504 (n + 1) + 2).toNat

end

end A123594.P11755466712113208358

namespace A123594

/-- `2-A000002(A025504(n+1)+2)` -/
def P11755466712113208358.Spec : Prop :=
  ∀ n, P11755466712113208358.a n = A123594 (n + 1)

end A123594

/-! ## A123594.P15759082468807152552

`A022303(A022295(n+3))-1`
-/

namespace A123594.P15759082468807152552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A022295 (n + 3)).toNat - 1

end

end A123594.P15759082468807152552

namespace A123594

/-- `A022303(A022295(n+3))-1` -/
def P15759082468807152552.Spec : Prop :=
  ∀ n, P15759082468807152552.a n = A123594 (n + 1)

end A123594

/-!
# A123596: Squares alternating with triangular numbers.

The programs for A123596, the canonical program `A123596.P13725170469569972941` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123596 has offset 0).

The definition of A123596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123596.P9098848306028814544

`(3*n²-1+(n²+1)*(-1)^n)/16`
-/

namespace A123596.P9098848306028814544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 : ℤ) - 1 + (n ^ 2 + 1 : ℤ) * (-1) ^ n : ℚ) / 16

end

end A123596.P9098848306028814544

namespace A123596

/-- `(3*n²-1+(n²+1)*(-1)^n)/16` -/
def P9098848306028814544.Spec : Prop :=
  ∀ n, P9098848306028814544.a n = (A123596 n : ℚ)

theorem P9098848306028814544.correct : P9098848306028814544.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A123596, Nat.add_sub_cancel, A123596.P9098848306028814544.a, A123596.P13725170469569972941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A123596, Nat.add_sub_cancel, A123596.P9098848306028814544.a, A123596.P13725170469569972941.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123596

/-! ## A123596.P13725170469569972941

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123596

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P13725170469569972941.Spec : Prop :=
  ∀ n, P13725170469569972941.a n = A123596 n

theorem P13725170469569972941.correct : P13725170469569972941.Spec := by
  intro n
  simp only [A123596]

end A123596

/-! ## A123596.P13330191705735378166

`round(lcm(n+1, 1-n)/4)`
-/

namespace A123596.P13330191705735378166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)

end

end A123596.P13330191705735378166

namespace A123596

/-- `round(lcm(n+1, 1-n)/4)` -/
def P13330191705735378166.Spec : Prop :=
  ∀ n, P13330191705735378166.a n = A123596 n

end A123596

/-! ## A123596.P13239966534928707012

`floor((n/2)²/gcd(2, n+1))`
-/

namespace A123596.P13239966534928707012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2 / (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A123596.P13239966534928707012

namespace A123596

/-- `floor((n/2)²/gcd(2, n+1))` -/
def P13239966534928707012.Spec : Prop :=
  ∀ n, P13239966534928707012.a n = A123596 n

end A123596

/-! ## A123596.P2139681026782742713

`gcd(floor((n/2)^4), floor((n/2)²))`
-/

namespace A123596.P2139681026782742713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊((n : ℚ) / 2) ^ 4⌋ ⌊((n : ℚ) / 2) ^ 2⌋

end

end A123596.P2139681026782742713

namespace A123596

/-- `gcd(floor((n/2)^4), floor((n/2)²))` -/
def P2139681026782742713.Spec : Prop :=
  ∀ n, (P2139681026782742713.a n : ℤ) = A123596 n

end A123596

/-! ## A123596.P7034603781125204449

`floor((n²/(n%2+1)+1)/4)`
-/

namespace A123596.P7034603781125204449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ) + 1) / 4⌋

end

end A123596.P7034603781125204449

namespace A123596

/-- `floor((n²/(n%2+1)+1)/4)` -/
def P7034603781125204449.Spec : Prop :=
  ∀ n, P7034603781125204449.a n = A123596 n

end A123596

/-! ## A123596.P3674036701088597077

`a(n-2)+lcm(2, n-1)/2` with `a(0)=0, a(1)=0`
-/

namespace A123596.P3674036701088597077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (Int.lcm 2 ((n : ℤ) - 1) : ℚ) / 2

end

end A123596.P3674036701088597077

namespace A123596

/-- `a(n-2)+lcm(2, n-1)/2` -/
def P3674036701088597077.Spec : Prop :=
  ∀ n, P3674036701088597077.a n = (A123596 n : ℚ)

end A123596

/-! ## A123596.P18370092571653065475

`A124093(xor(1, n))`
-/

namespace A123596.P18370092571653065475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (Nat.xor 1 n)

end

end A123596.P18370092571653065475

namespace A123596

/-- `A124093(xor(1, n))` -/
def P18370092571653065475.Spec : Prop :=
  ∀ n, P18370092571653065475.a n = A123596 n

end A123596

/-! ## A123596.P6168711868322581669

`floor(A181900(n)/8)`
-/

namespace A123596.P6168711868322581669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181900 n : ℚ) / 8⌋

end

end A123596.P6168711868322581669

namespace A123596

/-- `floor(A181900(n)/8)` -/
def P6168711868322581669.Spec : Prop :=
  ∀ n, P6168711868322581669.a n = A123596 n

end A123596

/-! ## A123596.P6914733402670553867

`round(n²/A010713(n))`
-/

namespace A123596.P6914733402670553867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (A010713 n : ℚ))

end

end A123596.P6914733402670553867

namespace A123596

/-- `round(n²/A010713(n))` -/
def P6914733402670553867.Spec : Prop :=
  ∀ n, P6914733402670553867.a n = A123596 n

end A123596

/-! ## A123596.P10055342683605322749

`A002620(n)/2*gcd(2, n)`
-/

namespace A123596.P10055342683605322749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 n : ℚ) / 2 * (Nat.gcd 2 n : ℚ)

end

end A123596.P10055342683605322749

namespace A123596

/-- `A002620(n)/2*gcd(2, n)` -/
def P10055342683605322749.Spec : Prop :=
  ∀ n, P10055342683605322749.a n = (A123596 n : ℚ)

end A123596

/-! ## A123596.P7562374101231041153

`A001318(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A123596.P7562374101231041153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001318 (n - 1) - a (n - 1)

end

end A123596.P7562374101231041153

namespace A123596

/-- `A001318(n-1)-a(n-1)` -/
def P7562374101231041153.Spec : Prop :=
  ∀ n, P7562374101231041153.a n = A123596 n

end A123596

/-! ## A123596.P10656359498305734758

`A124093(A004442(n))`
-/

namespace A123596.P10656359498305734758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (A004442 n).toNat

end

end A123596.P10656359498305734758

namespace A123596

/-- `A124093(A004442(n))` -/
def P10656359498305734758.Spec : Prop :=
  ∀ n, P10656359498305734758.a n = A123596 n

end A123596

/-! ## A123596.P18142354927865336395

`A131174(n)-A142150(n)`
-/

namespace A123596.P18142354927865336395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 n - A142150 n

end

end A123596.P18142354927865336395

namespace A123596

/-- `A131174(n)-A142150(n)` -/
def P18142354927865336395.Spec : Prop :=
  ∀ n, P18142354927865336395.a n = A123596 n

end A123596

/-! ## A123596.P15677478334171819220

`A109900(n)-A235355(n)`
-/

namespace A123596.P15677478334171819220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - A235355 n

end

end A123596.P15677478334171819220

namespace A123596

/-- `A109900(n)-A235355(n)` -/
def P15677478334171819220.Spec : Prop :=
  ∀ n, P15677478334171819220.a n = A123596 n

end A123596

/-! ## A123596.P2263959203870835907

`A002817(n)%A228564(n)`
-/

namespace A123596.P2263959203870835907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002817 n) (A228564 n)

end

end A123596.P2263959203870835907

namespace A123596

/-- `A002817(n)%A228564(n)` -/
def P2263959203870835907.Spec : Prop :=
  ∀ n, P2263959203870835907.a n = A123596 n

end A123596

/-! ## A123596.P668931135078506285

`A011863(n)%A076921(n+1)`
-/

namespace A123596.P668931135078506285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011863 n) (A076921 (n + 1))

end

end A123596.P668931135078506285

namespace A123596

/-- `A011863(n)%A076921(n+1)` -/
def P668931135078506285.Spec : Prop :=
  ∀ n, P668931135078506285.a n = A123596 n

end A123596

/-! ## A123596.P6999560802494267026

`Δ[A028724(n+1)]`
-/

namespace A123596.P6999560802494267026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123596.P6999560802494267026

namespace A123596

/-- `Δ[A028724(n+1)]` -/
def P6999560802494267026.Spec : Prop :=
  ∀ n, P6999560802494267026.a n = A123596 n

end A123596

/-! ## A123596.P5115918390757760024

`A028724(n+2)-A028724(n+1)`
-/

namespace A123596.P5115918390757760024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (n + 2) - A028724 (n + 1)

end

end A123596.P5115918390757760024

namespace A123596

/-- `A028724(n+2)-A028724(n+1)` -/
def P5115918390757760024.Spec : Prop :=
  ∀ n, P5115918390757760024.a n = A123596 n

end A123596

/-! ## A123596.P14512612599820112919

`Δ[Δ[A000241(n+1)]]`
-/

namespace A123596.P14512612599820112919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123596.P14512612599820112919

namespace A123596

/-- `Δ[Δ[A000241(n+1)]]` -/
def P14512612599820112919.Spec : Prop :=
  ∀ n, P14512612599820112919.a n = A123596 n

end A123596

/-!
# A123597: Primes of the form p^3 + q^3 + r^3, where p, q and r are primes.

The programs for A123597, there is no canonical definition to state claims against.
-/

/-! ## A123597.P4976092306104635838

`p?[A258865(n+1)]`
-/

namespace A123597.P4976092306104635838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123597.P4976092306104635838

/-! ## A123597.P9690733833278150864

`p?[A346917(n+1)-8]`
-/

namespace A123597.P9690733833278150864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346917 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123597.P9690733833278150864

/-! ## A123597.P523684861459669580

`record[p?[A258865(A052938(n))]]`
-/

namespace A123597.P523684861459669580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123597.P523684861459669580

/-! ## A123597.P5928157123124720420

`record[A020639(A258865(n+2))]`
-/

namespace A123597.P5928157123124720420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A258865 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123597.P5928157123124720420

/-! ## A123597.P9968138787432092316

`filter[A258865(n+1), A010051(#)]`
-/

namespace A123597.P9968138787432092316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123597.P9968138787432092316

