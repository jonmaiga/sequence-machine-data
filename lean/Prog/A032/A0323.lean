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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A032300: "EFJ" (unordered, size, labeled) transform of 1,3,5,7,...

The programs for A032300, there is no canonical definition to state claims against.
-/

/-! ## A032300.P6188608867226766806

`A032212(A061479(n))`
-/

namespace A032300.P6188608867226766806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032212 (A061479 n).toNat

end

end A032300.P6188608867226766806

/-! ## A032300.P1570662018399431930

`A094518(A032223(n))+A032212(n)`
-/

namespace A032300.P1570662018399431930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (A032223 n).toNat + A032212 n

end

end A032300.P1570662018399431930

/-! ## A032300.P7745226390441506886

`A032212(n)^A032221(A328599(n))`
-/

namespace A032300.P7745226390441506886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032212 n : ℚ) ^ (A032221 (A328599 n).toNat : ℤ)

end

end A032300.P7745226390441506886

/-! ## A032300.P17662384963208932773

`A032212(n)%A007641(A032219(n))`
-/

namespace A032300.P17662384963208932773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032212 n) (A007641 (A032219 n).toNat)

end

end A032300.P17662384963208932773

/-! ## A032300.P14740959086986025926

`or(A010054(A000108(n)), A032212(n))`
-/

namespace A032300.P14740959086986025926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A000108 n).toNat) (A032212 n)

end

end A032300.P14740959086986025926

/-!
# A032301: Shifts left under "EFJ" (unordered, size, labeled) transform.

The programs for A032301, there is no canonical definition to state claims against.
-/

/-! ## A032301.P3748227329369328645

`A000027(A032213(n+1))`
-/

namespace A032301.P3748227329369328645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A032213 (n + 1)).toNat

end

end A032301.P3748227329369328645

/-! ## A032301.P12214002218775407602

`filter[A032213(n+1), A005171(#)]`
-/

namespace A032301.P12214002218775407602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A032301.P12214002218775407602

/-! ## A032301.P3142129175255699704

`filter[A032213(n+1), A283265(#)]`
-/

namespace A032301.P3142129175255699704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A032301.P3142129175255699704

/-! ## A032301.P9997506345743450931

`filter[A032213(n+1), A336834(#)]`
-/

namespace A032301.P9997506345743450931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336834 (f1 j).toNat = 1) n)

end

end A032301.P9997506345743450931

/-! ## A032301.P3224212472599070710

`filter[A032213(n+1), A354034(#)]`
-/

namespace A032301.P3224212472599070710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A032301.P3224212472599070710

/-!
# A032302: G.f.: Product_{k>=1} (1 + 2*x^k).

The programs for A032302, there is no canonical definition to state claims against.
-/

/-! ## A032302.P13481780714565416519

`lcm(A072706(n), A280560(n))`
-/

namespace A032302.P13481780714565416519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072706 n) (A280560 n)

end

end A032302.P13481780714565416519

/-! ## A032302.P2243516948473630467

`A036453(n+1)*A072706(n)`
-/

namespace A032302.P2243516948473630467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A072706 n

end

end A032302.P2243516948473630467

/-! ## A032302.P5110059065425356571

`(2-A000007(n))*A072706(n)`
-/

namespace A032302.P5110059065425356571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A072706 n

end

end A032302.P5110059065425356571

/-! ## A032302.P1477105896657854904

`A040001(2*n)*A072706(n)`
-/

namespace A032302.P1477105896657854904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A072706 n

end

end A032302.P1477105896657854904

/-! ## A032302.P1558699669119926338

`A072706(n)*A280560(2*n)`
-/

namespace A032302.P1558699669119926338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072706 n * A280560 (2 * n)

end

end A032302.P1558699669119926338

/-! ## A032302.P17766078683784044682

`gcd(2, A261568(n))*A072706(n)`
-/

namespace A032302.P17766078683784044682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A261568 n) : ℤ) * A072706 n

end

end A032302.P17766078683784044682

/-! ## A032302.P6300409370797146026

`A072706(n)+A072706(n)%A032308(n)`
-/

namespace A032302.P6300409370797146026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072706 n + Int.tmod (A072706 n) (A032308 n)

end

end A032302.P6300409370797146026

/-! ## A032302.P9755519389210363814

`A011782(n+1)/A011782(n)*A072706(n)`
-/

namespace A032302.P9755519389210363814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A072706 n : ℚ)

end

end A032302.P9755519389210363814

/-! ## A032302.P578717595678400704

`∑[A000740(n+1)]%3*A072706(n)`
-/

namespace A032302.P578717595678400704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3 * A072706 n

end

end A032302.P578717595678400704

/-! ## A032302.P9008298200725948302

`A286957(∑[n+3])`
-/

namespace A032302.P9008298200725948302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032302.P9008298200725948302

/-!
# A032303: "EFK" (unordered, size, unlabeled) transform of 2,1,1,1,...

The programs for A032303, there is no canonical definition to state claims against.
-/

/-! ## A032303.P9448242264610625797

`A096765(n)+A000009(n)`
-/

namespace A032303.P9448242264610625797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A000009 n

end

end A032303.P9448242264610625797

/-! ## A032303.P11406945866925292575

`A096765(n)+abs(A081360(n))`
-/

namespace A032303.P11406945866925292575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + |A081360 n|

end

end A032303.P11406945866925292575

/-! ## A032303.P3560349395564488591

`A096765(n)+A111133(n)+1`
-/

namespace A032303.P3560349395564488591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + (A111133 n + 1)

end

end A032303.P3560349395564488591

/-! ## A032303.P8663656972104019706

`A333147(n)+1-A025147(n)`
-/

namespace A032303.P8663656972104019706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + (1 - A025147 n)

end

end A032303.P8663656972104019706

/-! ## A032303.P2898832919474505945

`A025147(n)+2*A096765(n)`
-/

namespace A032303.P2898832919474505945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + 2 * A096765 n

end

end A032303.P2898832919474505945

/-! ## A032303.P14754785256411033022

`A096765(n)+A035457(2*n)`
-/

namespace A032303.P14754785256411033022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A035457 (2 * n)

end

end A032303.P14754785256411033022

/-! ## A032303.P15553310277550694873

`2*A000009(n)-A025147(n)`
-/

namespace A032303.P15553310277550694873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000009 n - A025147 n

end

end A032303.P15553310277550694873

/-! ## A032303.P6472436472625311339

`A096765(n+1)+2*A096765(n)`
-/

namespace A032303.P6472436472625311339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + 2 * A096765 n

end

end A032303.P6472436472625311339

/-! ## A032303.P5199018089829506044

`A067659(n)+A096765(n)+A067661(n)`
-/

namespace A032303.P5199018089829506044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A096765 n + A067661 n)

end

end A032303.P5199018089829506044

/-! ## A032303.P3943165044815105215

`A000041(n)+A096765(n)-A047967(n)`
-/

namespace A032303.P3943165044815105215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A096765 n - A047967 n)

end

end A032303.P3943165044815105215

/-! ## A032303.P9871792578116266384

`∑[A002865(n)]+A096765(n)-A047967(n)`
-/

namespace A032303.P9871792578116266384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A096765 n - A047967 n)

end

end A032303.P9871792578116266384

/-! ## A032303.P11200962007482330135

`A000009(n)+Δ[A038348(n)-A000009(n)]`
-/

namespace A032303.P11200962007482330135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (f1 (n + 1) - f1 n)

end

end A032303.P11200962007482330135

/-! ## A032303.P4361678327302027263

`A284593(∑[n])+A096765(n)`
-/

namespace A032303.P4361678327302027263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) + A096765 n

end

end A032303.P4361678327302027263

/-! ## A032303.P2334853695073883026

`A264404((n+2)²-2)`
-/

namespace A032303.P2334853695073883026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264404 ((n + 2) ^ 2 - 2)

end

end A032303.P2334853695073883026

/-!
# A032305: Number of rooted trees where any 2 subtrees extending from the same node have a different number of nodes.

The programs for A032305, there is no canonical definition to state claims against.
-/

/-! ## A032305.P9902837862612641066

`A318754(abs(2-∑[n])+4)`
-/

namespace A032305.P9902837862612641066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (|2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 4).toNat

end

end A032305.P9902837862612641066

/-! ## A032305.P7336979869064126345

`C(A318754(A133263(n)), gcd(2, 2*n+1))`
-/

namespace A032305.P7336979869064126345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318754 (A133263 n).toNat).toNat (Nat.gcd 2 (2 * n + 1))

end

end A032305.P7336979869064126345

/-! ## A032305.P12917887447447570264

`lcm(A097807(n), A318754(A133263(n)))`
-/

namespace A032305.P12917887447447570264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A318754 (A133263 n).toNat)

end

end A032305.P12917887447447570264

/-! ## A032305.P9273403459543711766

`or(A000007(n), A318754(A133263(n)))`
-/

namespace A032305.P9273403459543711766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318754 (A133263 n).toNat)

end

end A032305.P9273403459543711766

/-! ## A032305.P2392221566974102990

`A318754(A133263(n))%A000444(n+3)`
-/

namespace A032305.P2392221566974102990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318754 (A133263 n).toNat) (A000444 (n + 3))

end

end A032305.P2392221566974102990

/-! ## A032305.P3471760836734972653

`(A005835(n+1)+1)%2*A318754(A133263(n))`
-/

namespace A032305.P3471760836734972653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005835 (n + 1) + 1) 2 * A318754 (A133263 n).toNat

end

end A032305.P3471760836734972653

/-! ## A032305.P13889332697713489319

`A318754(A133263(n))+2-A000040(gcd(n, n+1))`
-/

namespace A032305.P13889332697713489319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A133263 n).toNat + 2 - A000040 (Nat.gcd n (n + 1))

end

end A032305.P13889332697713489319

/-! ## A032305.P11373121704694717920

`A318754(A133263(n))+A171765(A008687(n))`
-/

namespace A032305.P11373121704694717920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A133263 n).toNat + A171765 (A008687 n).toNat

end

end A032305.P11373121704694717920

/-! ## A032305.P12977003135093480104

`A318753(∑[n+3]+1)`
-/

namespace A032305.P12977003135093480104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032305.P12977003135093480104

/-! ## A032305.P14641057155168762164

`A003989(∑[n+1])*A318754(A133263(n))`
-/

namespace A032305.P14641057155168762164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (∑ j ∈ Finset.range (n + 1), f1 j) * A318754 (A133263 n).toNat

end

end A032305.P14641057155168762164

/-!
# A032306: Number of rooted trees with leaves of 2 colors where any 2 subtrees extending from the same node have a different number of nodes.

The programs for A032306, there is no canonical definition to state claims against.
-/

/-! ## A032306.P10611003072907998601

`A233583(or(A053602(n), A245306(n)))`
-/

namespace A032306.P10611003072907998601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor (A053602 n) (A245306 n)).toNat

end

end A032306.P10611003072907998601

/-! ## A032306.P6370064558019171123

`A233583(or(A166516(n), A205003(n+1)))`
-/

namespace A032306.P6370064558019171123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor (A166516 n) (A205003 (n + 1))).toNat

end

end A032306.P6370064558019171123

/-! ## A032306.P9991079055783407011

`A036554(A035053(n)^A000700(n))`
-/

namespace A032306.P9991079055783407011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (SequenceMachineLib.roundAway ((A035053 n : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A032306.P9991079055783407011

/-! ## A032306.P2473816316153159994

`A036554(C(A035053(n), A000700(n)))`
-/

namespace A032306.P2473816316153159994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (Nat.choose (A035053 n).toNat (A000700 n).toNat)

end

end A032306.P2473816316153159994

/-!
# A032307: Shifts left 2 places under "EFK" (unordered, size, unlabeled) transform.

The programs for A032307, there is no canonical definition to state claims against.
-/

/-! ## A032307.P4590250694560212099

`ceil(A320330(n)/A024671(n+1))`
-/

namespace A032307.P4590250694560212099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320330 n : ℚ) / (A024671 (n + 1) : ℚ)⌉

end

end A032307.P4590250694560212099

/-! ## A032307.P11788894227155388712

`A168255(A300913(n)-A337600(n)-A083915(n+1))`
-/

namespace A032307.P11788894227155388712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A300913 n - A337600 n - A083915 (n + 1)).toNat

end

end A032307.P11788894227155388712

/-! ## A032307.P15487471293722895885

`A167976(A032237(n+1))`
-/

namespace A032307.P15487471293722895885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A032237 (n + 1)).toNat

end

end A032307.P15487471293722895885

/-! ## A032307.P82459997619029664

`A195098(A007560(n+1))`
-/

namespace A032307.P82459997619029664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A007560 (n + 1)).toNat

end

end A032307.P82459997619029664

/-! ## A032307.P10291697842036787286

`A135660(A283877(n)+1)`
-/

namespace A032307.P10291697842036787286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A283877 n + 1).toNat

end

end A032307.P10291697842036787286

/-!
# A032308: Expansion of Product_{k>=1} (1 + 3*x^k).

The programs for A032308, there is no canonical definition to state claims against.
-/

/-! ## A032308.P17992871932796559340

`A286957(∑[n+4]+2)`
-/

namespace A032308.P17992871932796559340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A032308.P17992871932796559340

/-! ## A032308.P15605651891451393186

`abs(A286957(A046691(n+2))-1)+1`
-/

namespace A032308.P15605651891451393186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286957 (A046691 (n + 2)).toNat - 1| + 1

end

end A032308.P15605651891451393186

/-! ## A032308.P18362440131736211162

`A286957(A046691(n+2))%A065694(n)`
-/

namespace A032308.P18362440131736211162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286957 (A046691 (n + 2)).toNat) (A065694 n)

end

end A032308.P18362440131736211162

/-! ## A032308.P5580467407121092577

`or(A000007(n), A286957(A046691(n+2)))`
-/

namespace A032308.P5580467407121092577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286957 (A046691 (n + 2)).toNat)

end

end A032308.P5580467407121092577

/-! ## A032308.P5290976653698029941

`A286957(A046691(n+2))+A000007(n+1)`
-/

namespace A032308.P5290976653698029941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A032308.P5290976653698029941

/-! ## A032308.P8420286718696321150

`A286957(A046691(n+2))+A000038(n+1)`
-/

namespace A032308.P8420286718696321150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (A046691 (n + 2)).toNat + A000038 (n + 1)

end

end A032308.P8420286718696321150

/-! ## A032308.P13417776801427284282

`A286957(A046691(n+2))^A075180(2*n)`
-/

namespace A032308.P13417776801427284282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286957 (A046691 (n + 2)).toNat : ℚ) ^ (A075180 (2 * n) : ℤ)

end

end A032308.P13417776801427284282

/-! ## A032308.P9596087773809774394

`A057237(2*A054353(n+1))*A286957(A046691(n+2))`
-/

namespace A032308.P9596087773809774394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (2 * A054353 (n + 1)).toNat * A286957 (A046691 (n + 2)).toNat

end

end A032308.P9596087773809774394

/-! ## A032308.P9286862983216591569

`A027926(n²)*A286957(A046691(n+2))`
-/

namespace A032308.P9286862983216591569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (n ^ 2) * A286957 (A046691 (n + 2)).toNat

end

end A032308.P9286862983216591569

/-! ## A032308.P4053874725168376638

`A286957(A046691(n+2))+A021913(n²)`
-/

namespace A032308.P4053874725168376638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (A046691 (n + 2)).toNat + A021913 (n ^ 2)

end

end A032308.P4053874725168376638

/-!
# A032309: "EFK" (unordered, size, unlabeled) transform of 2,4,6,8,...

The programs for A032309, there is no canonical definition to state claims against.
-/

/-! ## A032309.P5325600469754085434

`A090245(n)+A348999(n)-1`
-/

namespace A032309.P5325600469754085434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090245 n + (A348999 n - 1)

end

end A032309.P5325600469754085434

/-! ## A032309.P2911743608388143146

`A200506(floor(6^(n/2)))+A090245(n)`
-/

namespace A032309.P2911743608388143146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200506 ⌊(6 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat + A090245 n

end

end A032309.P2911743608388143146

/-! ## A032309.P14791651470796334103

`A172311(A129418(n+1)+A007662(n))`
-/

namespace A032309.P14791651470796334103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (A129418 (n + 1) + A007662 n).toNat

end

end A032309.P14791651470796334103

/-!
# A032310: Number of ways to partition n labeled elements into sets of odd sizes, with all sizes different.

The programs for A032310, there is no canonical definition to state claims against.
-/

/-! ## A032310.P4585748667772485126

`A032220(n)+A000007(A032233(n))`
-/

namespace A032310.P4585748667772485126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032220 n + A000007 (A032233 n).toNat

end

end A032310.P4585748667772485126

/-! ## A032310.P17164492484712889744

`A032220(n)+A025469(A027214(n))`
-/

namespace A032310.P17164492484712889744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032220 n + A025469 (A027214 n).toNat

end

end A032310.P17164492484712889744

/-! ## A032310.P18156528737697612442

`A032220(n)+A025469(A290622(n))`
-/

namespace A032310.P18156528737697612442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032220 n + A025469 (A290622 n).toNat

end

end A032310.P18156528737697612442

/-! ## A032310.P9177738656398673232

`A032220(n)^A230093(A014160(n))`
-/

namespace A032310.P9177738656398673232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032220 n : ℚ) ^ (A230093 (A014160 n).toNat : ℤ)

end

end A032310.P9177738656398673232

/-! ## A032310.P2324575480225277083

`lcm(A032220(n), A124766(A225512(n+1)))`
-/

namespace A032310.P2324575480225277083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032220 n) (A124766 (A225512 (n + 1)).toNat)

end

end A032310.P2324575480225277083

/-!
# A032311: Number of ways to partition n labeled elements into sets of different sizes of at least 2.

The programs for A032311, there is no canonical definition to state claims against.
-/

/-! ## A032311.P7405364026730004746

`A007837(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A032311.P7405364026730004746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007837 n - (n : ℤ) * a (n - 1)

end

end A032311.P7405364026730004746

/-! ## A032311.P3635676842410602719

`A007837(n)-A327876(n)`
-/

namespace A032311.P3635676842410602719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 n - A327876 n

end

end A032311.P3635676842410602719

/-! ## A032311.P15224315234459791136

`A327869(∑[n])-A327876(n)`
-/

namespace A032311.P15224315234459791136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (∑ j ∈ Finset.range (n + 1), f1 j) - A327876 n

end

end A032311.P15224315234459791136

/-! ## A032311.P9385437663226796855

`2*A007837(n)-A032298(n)`
-/

namespace A032311.P9385437663226796855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007837 n - A032298 n

end

end A032311.P9385437663226796855

/-! ## A032311.P75036446270579260

`A032298(n)-2*A327876(n)`
-/

namespace A032311.P75036446270579260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032298 n - 2 * A327876 n

end

end A032311.P75036446270579260

/-! ## A032311.P14048058012206236034

`A327876(n+1)/(n+1)`
-/

namespace A032311.P14048058012206236034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327876 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A032311.P14048058012206236034

/-! ## A032311.P14341877664661585266

`A327869(∑[n+1]+1)/(n+1)`
-/

namespace A032311.P14341877664661585266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327869 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A032311.P14341877664661585266

/-! ## A032311.P13442348944584145754

`A271423(A133263(n)-1)-A327876(n)`
-/

namespace A032311.P13442348944584145754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A133263 n - 1).toNat - A327876 n

end

end A032311.P13442348944584145754

/-! ## A032311.P4173135686400632210

`A332253(A000096(n))-A327876(n)`
-/

namespace A032311.P4173135686400632210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332253 (A000096 n).toNat - A327876 n

end

end A032311.P4173135686400632210

/-!
# A032312: "EGJ" (unordered, element, labeled) transform of 2,2,2,2...

The programs for A032312, there is no canonical definition to state claims against.
-/

/-! ## A032312.P3231418199668897572

`A136500(a(n-1))-1` with `a(0)=1`
-/

namespace A032312.P3231418199668897572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136500 (a (n - 1)).toNat - 1

end

end A032312.P3231418199668897572

/-! ## A032312.P12007673731129487171

`A102879((n-5)*n*((n-1-(2-n)²)²-1)+n)`
-/

namespace A032312.P12007673731129487171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102879 (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1)) + (n : ℤ)).toNat

end

end A032312.P12007673731129487171

/-!
# A032313: "EGJ" (unordered, element, labeled) transform of 2,1,1,1...

The programs for A032313, there is no canonical definition to state claims against.
-/

/-! ## A032313.P2074374339763146397

`A032223(n)%A233583(A225388(n+1))`
-/

namespace A032313.P2074374339763146397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032223 n) (A233583 (A225388 (n + 1)).toNat)

end

end A032313.P2074374339763146397

/-!
# A032314: "EGJ" (unordered, element, labeled) transform of 3,3,3,3...

The programs for A032314, there is no canonical definition to state claims against.
-/

/-! ## A032314.P7999906170922276389

`A364295(2^n-A110279(n))`
-/

namespace A032314.P7999906170922276389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364295 ((2 ^ n : ℤ) - A110279 n).toNat

end

end A032314.P7999906170922276389

/-! ## A032314.P12811169966043048519

`A008611(A151206(n)+A151198(n))`
-/

namespace A032314.P12811169966043048519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151206 n + A151198 n).toNat

end

end A032314.P12811169966043048519

/-!
# A032315: "EGJ" (unordered, element, labeled) transform of 1,2,3,4,...

The programs for A032315, there is no canonical definition to state claims against.
-/

/-! ## A032315.P5444655535862990356

`A004526(2*A032224(n))`
-/

namespace A032315.P5444655535862990356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A032224 n).toNat

end

end A032315.P5444655535862990356

/-! ## A032315.P16604805279989396239

`A032742(2*A032224(n))`
-/

namespace A032315.P16604805279989396239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A032224 n).toNat

end

end A032315.P16604805279989396239

/-! ## A032315.P18424964031783056577

`filter[A032224(n), A022932(#)]`
-/

namespace A032315.P18424964031783056577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A032315.P18424964031783056577

/-! ## A032315.P11498678161920517802

`filter[A032224(n), A030317(#)]`
-/

namespace A032315.P11498678161920517802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j).toNat = 1) n)

end

end A032315.P11498678161920517802

/-!
# A032316: "EGJ" (unordered, element, labeled) transform of 1,3,5,7...

The programs for A032316, there is no canonical definition to state claims against.
-/

/-! ## A032316.P10956656228624772278

`A020725(A032225(n))-1`
-/

namespace A032316.P10956656228624772278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A032225 n).toNat - 1

end

end A032316.P10956656228624772278

/-! ## A032316.P12074638666835416505

`filter[A032225(n), A041004(#)]`
-/

namespace A032316.P12074638666835416505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A041004 (f1 j).toNat = 1) n)

end

end A032316.P12074638666835416505

/-! ## A032316.P4270700503119076788

`filter[A032225(n), A068431(#)]`
-/

namespace A032316.P4270700503119076788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068431 (f1 j).toNat = 1) n)

end

end A032316.P4270700503119076788

/-!
# A032318: Shifts left under "EGJ" (unordered, element, labeled) transform.

The programs for A032318, there is no canonical definition to state claims against.
-/

/-! ## A032318.P5929849444985267469

`2*(∏{p}[A177401(n)², #]+2^n-(∑[n]+1))`
-/

namespace A032318.P5929849444985267469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177401 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) + ((2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)))

end

end A032318.P5929849444985267469

/-! ## A032318.P4726773232208091980

`A080606(A216135(n))`
-/

namespace A032318.P4726773232208091980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (A216135 n).toNat

end

end A032318.P4726773232208091980

/-!
# A032319: Shifts left 2 places under "EGJ" (unordered, element, labeled) transform.

The programs for A032319, there is no canonical definition to state claims against.
-/

/-! ## A032319.P12965150306941984911

`A303674(A293818(n+3))`
-/

namespace A032319.P12965150306941984911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303674 (A293818 (n + 3)).toNat

end

end A032319.P12965150306941984911

/-! ## A032319.P6202773540963323912

`A226762(A323836(n)+A003094(n))`
-/

namespace A032319.P6202773540963323912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A323836 n + A003094 n).toNat

end

end A032319.P6202773540963323912

/-! ## A032319.P2031555887768609322

`A007306(A350911(n)-A093178(n))`
-/

namespace A032319.P2031555887768609322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A350911 n - A093178 n).toNat

end

end A032319.P2031555887768609322

/-! ## A032319.P16033444618470279724

`A295402(A158510(n)-A069905(n))`
-/

namespace A032319.P16033444618470279724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295402 (A158510 n - A069905 n).toNat

end

end A032319.P16033444618470279724

/-!
# A032321: Number of aperiodic necklaces with n labeled beads of 2 colors.

The programs for A032321, there is no canonical definition to state claims against.
-/

/-! ## A032321.P8087747213705437565

`n!*A027375(n+1)`
-/

namespace A032321.P8087747213705437565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A027375 (n + 1)

end

end A032321.P8087747213705437565

/-! ## A032321.P7493956355231065070

`(n+1)!*A001037(n+1)`
-/

namespace A032321.P7493956355231065070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A001037 (n + 1)

end

end A032321.P7493956355231065070

/-! ## A032321.P5667295561138734524

`(n+1)!*A123223(∑[n+1])`
-/

namespace A032321.P5667295561138734524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A123223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032321.P5667295561138734524

/-! ## A032321.P4218618227508308882

`A000142(n)*A027375(n+1)`
-/

namespace A032321.P4218618227508308882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A027375 (n + 1)

end

end A032321.P4218618227508308882

/-! ## A032321.P5746755690300826009

`2*A000740(n+1)*A000142(n)`
-/

namespace A032321.P5746755690300826009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000740 (n + 1) * A000142 n

end

end A032321.P5746755690300826009

/-! ## A032321.P8942950705538652854

`∏[A007318(∑[n+1]+1)]*A001037(n+1)`
-/

namespace A032321.P8942950705538652854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001037 (n + 1)

end

end A032321.P8942950705538652854

/-! ## A032321.P14322507580416289995

`A001037(n+1)/A027376(n+1)*A032322(n+1)`
-/

namespace A032321.P14322507580416289995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) / (A027376 (n + 1) : ℚ) * (A032322 (n + 1) : ℚ)

end

end A032321.P14322507580416289995

/-!
# A032322: Number of aperiodic necklaces with n labeled beads of 3 colors.

The programs for A032322, there is no canonical definition to state claims against.
-/

/-! ## A032322.P14047232361409259842

`n!*A054718(n+1)`
-/

namespace A032322.P14047232361409259842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A054718 (n + 1)

end

end A032322.P14047232361409259842

/-! ## A032322.P17310967378786063128

`(n+1)!*A027376(n+1)`
-/

namespace A032322.P17310967378786063128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A027376 (n + 1)

end

end A032322.P17310967378786063128

/-! ## A032322.P9961434526855097745

`∏[A028310(n)]*A054718(n+1)`
-/

namespace A032322.P9961434526855097745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A054718 (n + 1)

end

end A032322.P9961434526855097745

/-! ## A032322.P11434362243421660735

`A000142(n+1)*A027376(n+1)`
-/

namespace A032322.P11434362243421660735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A027376 (n + 1)

end

end A032322.P11434362243421660735

/-! ## A032322.P1567104629583241428

`(n+1)!*A185171(A233583(n+2))`
-/

namespace A032322.P1567104629583241428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A185171 (A233583 (n + 2)).toNat

end

end A032322.P1567104629583241428

/-! ## A032322.P9020547939047107443

`A000142(n+1)*A185171(A233583(n+2))`
-/

namespace A032322.P9020547939047107443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A185171 (A233583 (n + 2)).toNat

end

end A032322.P9020547939047107443

/-!
# A032323: Number of aperiodic necklaces with n labeled beads of 4 colors.

The programs for A032323, there is no canonical definition to state claims against.
-/

/-! ## A032323.P9402771068885224371

`(n+1)!*A027377(n+1)`
-/

namespace A032323.P9402771068885224371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A027377 (n + 1)

end

end A032323.P9402771068885224371

/-! ## A032323.P15035745520220408037

`n!*A054719(n+1)`
-/

namespace A032323.P15035745520220408037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A054719 (n + 1)

end

end A032323.P15035745520220408037

/-! ## A032323.P3727280721544393214

`A000142(n)*A054719(n+1)`
-/

namespace A032323.P3727280721544393214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A054719 (n + 1)

end

end A032323.P3727280721544393214

/-! ## A032323.P18118300557855514311

`Δ[A003422(n)]*A054719(n+1)`
-/

namespace A032323.P18118300557855514311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054719 (n + 1)

end

end A032323.P18118300557855514311

/-! ## A032323.P16839291781565424122

`∏[A028310(n)]*A054719(n+1)`
-/

namespace A032323.P16839291781565424122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A054719 (n + 1)

end

end A032323.P16839291781565424122

/-!
# A032324: Number of aperiodic necklaces with n labeled beads of 5 colors.

The programs for A032324, there is no canonical definition to state claims against.
-/

/-! ## A032324.P11858180275068104148

`n!*A054720(n+1)`
-/

namespace A032324.P11858180275068104148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A054720 (n + 1)

end

end A032324.P11858180275068104148

/-! ## A032324.P4277113323287241167

`(n+1)!*A001692(n+1)`
-/

namespace A032324.P4277113323287241167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A001692 (n + 1)

end

end A032324.P4277113323287241167

/-! ## A032324.P6718748991853004291

`A000142(n+1)*A001692(n+1)`
-/

namespace A032324.P6718748991853004291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A001692 (n + 1)

end

end A032324.P6718748991853004291

/-! ## A032324.P13055375790425488902

`∏[n+1]*record[A001692(A008612(n))]`
-/

namespace A032324.P13055375790425488902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A032324.P13055375790425488902

/-! ## A032324.P3821665363789576240

`∏[n+1]*record[A001692(A008616(n))]`
-/

namespace A032324.P3821665363789576240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A032324.P3821665363789576240

/-!
# A032325: Number of ways to partition n labeled elements into pie slices forming an aperiodic pattern.

The programs for A032325, there is no canonical definition to state claims against.
-/

/-! ## A032325.P5780898670286868111

`ceil(A079410(n+3)/A079407(n+4))`
-/

namespace A032325.P5780898670286868111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079410 (n + 3) : ℚ) / (A079407 (n + 4) : ℚ)⌉

end

end A032325.P5780898670286868111

/-! ## A032325.P8800142226330782141

`A131148(A191800(n)+A034261(2*n+1))`
-/

namespace A032325.P8800142226330782141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131148 (A191800 n + A034261 (2 * n + 1)).toNat

end

end A032325.P8800142226330782141

/-!
# A032326: Number of ways to partition n labeled elements into pie slices of odd sizes forming an aperiodic pattern.

The programs for A032326, there is no canonical definition to state claims against.
-/

/-! ## A032326.P10751865734539265576

`abs(A353608(A032555(n+1)))`
-/

namespace A032326.P10751865734539265576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353608 (A032555 (n + 1)).toNat|

end

end A032326.P10751865734539265576

/-! ## A032326.P6686342728135534891

`abs(A353608(A032559(n+1)))`
-/

namespace A032326.P6686342728135534891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353608 (A032559 (n + 1)).toNat|

end

end A032326.P6686342728135534891

/-! ## A032326.P4044227567384745147

`abs(A353608(A320081(n+1)))`
-/

namespace A032326.P4044227567384745147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353608 (A320081 (n + 1)).toNat|

end

end A032326.P4044227567384745147

/-! ## A032326.P1210113311659188315

`abs(A353608(A342952(n+1)))`
-/

namespace A032326.P1210113311659188315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353608 (A342952 (n + 1)).toNat|

end

end A032326.P1210113311659188315

/-! ## A032326.P1138443754259545058

`∑{d}[A353608(n+1), A000010(#)]`
-/

namespace A032326.P1138443754259545058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A032326.P1138443754259545058

/-!
# A032328: "CHJ" (necklace, identity, labeled) transform of 2,2,2,2...

The programs for A032328, there is no canonical definition to state claims against.
-/

/-! ## A032328.P13148564844603005471

`xor(A004523(A002277(n)), A163087(n+2))`
-/

namespace A032328.P13148564844603005471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004523 (A002277 n).toNat) (A163087 (n + 2))

end

end A032328.P13148564844603005471

/-!
# A032329: "CHJ" (necklace, identity, labeled) transform of 2,1,1,1...

The programs for A032329, there is no canonical definition to state claims against.
-/

/-! ## A032329.P8345084380817362378

`A115307(A216581(n)+1)`
-/

namespace A032329.P8345084380817362378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115307 (A216581 n + 1).toNat

end

end A032329.P8345084380817362378

/-!
# A032331: "CHJ" (necklace, identity, labeled) transform of 1,2,3,4...

The programs for A032331, there is no canonical definition to state claims against.
-/

/-! ## A032331.P16131009270481361059

`A331163((n+1)²*a(n-1))` with `a(0)=1`
-/

namespace A032331.P16131009270481361059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331163 (((n + 1) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A032331.P16131009270481361059

/-!
# A032332: "CHJ" (necklace, identity, labeled) transform of 1,3,5,7...

The programs for A032332, there is no canonical definition to state claims against.
-/

/-! ## A032332.P11336782752723328320

`A209260(∑[2*n*a(n-1)])` with `a(0)=1`
-/

namespace A032332.P11336782752723328320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032332.P11336782752723328320

/-!
# A032333: Shifts left under "CHJ" (necklace, identity, labeled) transform.

The programs for A032333, there is no canonical definition to state claims against.
-/

/-! ## A032333.P3237940432268822976

`A113180(Δ[A098482(n)^A002265(n)])`
-/

namespace A032333.P3237940432268822976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098482 n : ℚ) ^ (A002265 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113180 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A032333.P3237940432268822976

/-! ## A032333.P3033682172971750160

`A086431(A000111(n))*A317708(n+1)`
-/

namespace A032333.P3033682172971750160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A000111 n).toNat * A317708 (n + 1)

end

end A032333.P3033682172971750160

/-! ## A032333.P4091594411352741139

`A274292(A274291(n))*A274293(A274300(n))`
-/

namespace A032333.P4091594411352741139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A274291 n).toNat * A274293 (A274300 n).toNat

end

end A032333.P4091594411352741139

/-!
# A032334: Shifts left under "CHJ" (necklace, identity, labeled) transform.

The programs for A032334, there is no canonical definition to state claims against.
-/

/-! ## A032334.P14891438130399535537

`A055938(A093352(n))+A001591(3*n)`
-/

namespace A032334.P14891438130399535537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (A093352 n).toNat + A001591 (3 * n)

end

end A032334.P14891438130399535537

/-! ## A032334.P4756689247793978753

`A206913(A000699(n+1))+A206913(A001037(n))`
-/

namespace A032334.P4756689247793978753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (A000699 (n + 1)).toNat + A206913 (A001037 n).toNat

end

end A032334.P4756689247793978753

/-!
# A032335: Shifts left 2 places under "CHJ" (necklace, identity, labeled) transform.

The programs for A032335, there is no canonical definition to state claims against.
-/

/-! ## A032335.P6567372868903692142

`A345716(ceil(n/2)^floor(n/2))`
-/

namespace A032335.P6567372868903692142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345716 (SequenceMachineLib.roundAway ((⌈(n : ℚ) / 2⌉ : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A032335.P6567372868903692142

/-! ## A032335.P12435189668272160892

`A096815(A055503(n))`
-/

namespace A032335.P12435189668272160892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096815 (A055503 n).toNat

end

end A032335.P12435189668272160892

/-! ## A032335.P10420672404947249762

`A182906(A173659(n))`
-/

namespace A032335.P10420672404947249762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182906 (A173659 n).toNat

end

end A032335.P10420672404947249762

/-!
# A032337: Number of identity bracelets with n labeled beads of 2 colors.

The programs for A032337, there is no canonical definition to state claims against.
-/

/-! ## A032337.P17169881357626760827

`(n+1)!*A032239(n+1)`
-/

namespace A032337.P17169881357626760827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032239 (n + 1)

end

end A032337.P17169881357626760827

/-! ## A032337.P4428312430773839639

`A000142(n+1)*A032239(n+1)`
-/

namespace A032337.P4428312430773839639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A032239 (n + 1)

end

end A032337.P4428312430773839639

/-! ## A032337.P8814821384851837894

`∏[A143182(∑[n])]*A032239(n+1)`
-/

namespace A032337.P8814821384851837894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032239 (n + 1)

end

end A032337.P8814821384851837894

/-! ## A032337.P2162944193766014828

`(n+1)*A081123(2*n)*A032239(n+1)`
-/

namespace A032337.P2162944193766014828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081123 (2 * n) * A032239 (n + 1)

end

end A032337.P2162944193766014828

/-! ## A032337.P9879308622653641765

`A032239(n+1)*A158868(∑[n+1])`
-/

namespace A032337.P9879308622653641765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032239 (n + 1) * A158868 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032337.P9879308622653641765

/-!
# A032338: Number of identity bracelets with n labeled beads of 3 colors.

The programs for A032338, there is no canonical definition to state claims against.
-/

/-! ## A032338.P9908940797469222809

`(n+1)!*A032240(n+1)`
-/

namespace A032338.P9908940797469222809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032240 (n + 1)

end

end A032338.P9908940797469222809

/-! ## A032338.P14475652231741398303

`record[A084938(n)]*A032240(n+1)`
-/

namespace A032338.P14475652231741398303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032240 (n + 1)

end

end A032338.P14475652231741398303

/-! ## A032338.P6903526566010804713

`record[A094587(n)]*A032240(n+1)`
-/

namespace A032338.P6903526566010804713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032240 (n + 1)

end

end A032338.P6903526566010804713

/-! ## A032338.P14417790196271542754

`record[A233543(n)]*A032240(n+1)`
-/

namespace A032338.P14417790196271542754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032240 (n + 1)

end

end A032338.P14417790196271542754

/-! ## A032338.P10048680043683997427

`record[A247005(n)]*A032240(n+1)`
-/

namespace A032338.P10048680043683997427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032240 (n + 1)

end

end A032338.P10048680043683997427

/-!
# A032339: Number of identity bracelets with n labeled beads of 4 colors.

The programs for A032339, there is no canonical definition to state claims against.
-/

/-! ## A032339.P11938040484455287286

`(n+1)!*A032241(n+1)`
-/

namespace A032339.P11938040484455287286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032241 (n + 1)

end

end A032339.P11938040484455287286

/-! ## A032339.P2658186869497164268

`record[A047920(n)]*A032241(n+1)`
-/

namespace A032339.P2658186869497164268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032241 (n + 1)

end

end A032339.P2658186869497164268

/-! ## A032339.P12533948550792634605

`A000142(n+1)*A032241(n+1)`
-/

namespace A032339.P12533948550792634605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A032241 (n + 1)

end

end A032339.P12533948550792634605

/-! ## A032339.P16717771060650917558

`∏[A000027(n+1)]*A032241(n+1)`
-/

namespace A032339.P16717771060650917558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032241 (n + 1)

end

end A032339.P16717771060650917558

/-! ## A032339.P1366909757275932100

`record[A074911(n+1)]*A032241(n+1)`
-/

namespace A032339.P1366909757275932100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032241 (n + 1)

end

end A032339.P1366909757275932100

/-!
# A032340: Number of identity bracelets with n labeled beads of 5 colors.

The programs for A032340, there is no canonical definition to state claims against.
-/

/-! ## A032340.P249940672237103748

`(n+1)!*A032242(n+1)`
-/

namespace A032340.P249940672237103748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A032242 (n + 1)

end

end A032340.P249940672237103748

/-! ## A032340.P3098512769113864248

`∏[A000027(n+1)]*A032242(n+1)`
-/

namespace A032340.P3098512769113864248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032242 (n + 1)

end

end A032340.P3098512769113864248

/-! ## A032340.P1483934408800312094

`∏[A130446(n+1)]*A032242(n+1)`
-/

namespace A032340.P1483934408800312094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A032242 (n + 1)

end

end A032340.P1483934408800312094

/-! ## A032340.P15371160634251811467

`record[A094310(n+1)]*A032242(n+1)`
-/

namespace A032340.P15371160634251811467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032242 (n + 1)

end

end A032340.P15371160634251811467

/-! ## A032340.P4832552008168674753

`record[A166350(n+1)]*A032242(n+1)`
-/

namespace A032340.P4832552008168674753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032242 (n + 1)

end

end A032340.P4832552008168674753

/-! ## A032340.P17815620046623752282

`record[A216919(n+1)]*A032242(n+1)`
-/

namespace A032340.P17815620046623752282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A032242 (n + 1)

end

end A032340.P17815620046623752282

/-!
# A032343: a(n) = 10*a(n-1)+n^2, a(0)=0.

The programs for A032343, the canonical program `A032343.P6404201742553652725` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032343 has offset 0).

The definition of A032343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+n²` (program `A032343.P6404201742553652725`, by `A032343.P6404201742553652725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A032343.P6404201742553652725

`10*a(n-1)+n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032343

/-- `10*a(n-1)+n²` -/
def P6404201742553652725.Spec : Prop :=
  ∀ n, (P6404201742553652725.a n : ℤ) = A032343 n

theorem P6404201742553652725.correct : P6404201742553652725.Spec := by
  intro n
  simp only [A032343]

end A032343

/-! ## A032343.P16230441809524058467

`(10^n-1)*110/729-n²/9-n*20/81`
-/

namespace A032343.P16230441809524058467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) * ((110 : ℚ) / 729) - (n ^ 2 : ℚ) / 9 - (n : ℚ) * ((20 : ℚ) / 81)

end

end A032343.P16230441809524058467

namespace A032343

/-- `(10^n-1)*110/729-n²/9-n*20/81` -/
def P16230441809524058467.Spec : Prop :=
  ∀ n, P16230441809524058467.a n = (A032343 n : ℚ)

theorem P16230441809524058467.correct : P16230441809524058467.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A032343, Nat.add_sub_cancel, A032343.P16230441809524058467.a, A032343.P6404201742553652725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A032343, Nat.add_sub_cancel, A032343.P16230441809524058467.a, A032343.P6404201742553652725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A032343

/-! ## A032343.P15391182893001271819

`∑[∑[10*a(n-1)+2]]` with `a(0)=0, a(1)=1`
-/

namespace A032343.P15391182893001271819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  10 * f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032343.P15391182893001271819

namespace A032343

/-- `∑[∑[10*a(n-1)+2]]` -/
def P15391182893001271819.Spec : Prop :=
  ∀ n, (P15391182893001271819.a n : ℤ) = A032343 n

end A032343

/-! ## A032343.P3942566713167438169

`∑[∑[A094624(A004273(n))]]`
-/

namespace A032343.P3942566713167438169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032343.P3942566713167438169

namespace A032343

/-- `∑[∑[A094624(A004273(n))]]` -/
def P3942566713167438169.Spec : Prop :=
  ∀ n, P3942566713167438169.a n = A032343 n

end A032343

/-! ## A032343.P11119298564048702995

`∑[∑[A002276(n)]-A002275(n)]`
-/

namespace A032343.P11119298564048702995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032343.P11119298564048702995

namespace A032343

/-- `∑[∑[A002276(n)]-A002275(n)]` -/
def P11119298564048702995.Spec : Prop :=
  ∀ n, P11119298564048702995.a n = A032343 n

end A032343

/-! ## A032343.P1084497559426526460

`∑[∑[A090843(n)]-A090843(n)]`
-/

namespace A032343.P1084497559426526460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A090843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032343.P1084497559426526460

namespace A032343

/-- `∑[∑[A090843(n)]-A090843(n)]` -/
def P1084497559426526460.Spec : Prop :=
  ∀ n, P1084497559426526460.a n = A032343 n

end A032343

/-! ## A032343.P10886384729405727149

`∑[n²/A052268(n+1)]*A052268(n+1)`
-/

namespace A032343.P10886384729405727149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A052268 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A052268 (n + 1) : ℚ)

end

end A032343.P10886384729405727149

namespace A032343

/-- `∑[n²/A052268(n+1)]*A052268(n+1)` -/
def P10886384729405727149.Spec : Prop :=
  ∀ n, P10886384729405727149.a n = (A032343 n : ℚ)

end A032343

/-! ## A032343.P6127584901833322813

`∑[∑[A094624(2*n+1)]-A094624(2*n+1)]`
-/

namespace A032343.P6127584901833322813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A094624 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032343.P6127584901833322813

namespace A032343

/-- `∑[∑[A094624(2*n+1)]-A094624(2*n+1)]` -/
def P6127584901833322813.Spec : Prop :=
  ∀ n, P6127584901833322813.a n = A032343 n

end A032343

/-! ## A032343.P1953933740821652708

`∑[∑[A094626(2*n+1)]-A094626(2*n+1)]`
-/

namespace A032343.P1953933740821652708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A094626 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032343.P1953933740821652708

namespace A032343

/-- `∑[∑[A094626(2*n+1)]-A094626(2*n+1)]` -/
def P1953933740821652708.Spec : Prop :=
  ∀ n, P1953933740821652708.a n = A032343 n

end A032343

/-! ## A032343.P12859351109290556754

`∑[A014824(n+1)+A014824(n)]%A179619(n+1)`
-/

namespace A032343.P12859351109290556754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 (n + 1) + A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A179619 (n + 1))

end

end A032343.P12859351109290556754

namespace A032343

/-- `∑[A014824(n+1)+A014824(n)]%A179619(n+1)` -/
def P12859351109290556754.Spec : Prop :=
  ∀ n, P12859351109290556754.a n = A032343 n

end A032343

/-!
# A032346: Essentially shifts 1 place right under inverse binomial transform.

The programs for A032346, there is no canonical definition to state claims against.
-/

/-! ## A032346.P5943789879057390784

`A046934(∑[n]+n)`
-/

namespace A032346.P5943789879057390784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A032346.P5943789879057390784

/-! ## A032346.P15839017335768418087

`A046935(abs(1-∑[n]))`
-/

namespace A032346.P15839017335768418087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046935 |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A032346.P15839017335768418087

/-! ## A032346.P5941388015037974245

`A032347(ceil(acot(n)+n))`
-/

namespace A032346.P5941388015037974245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A032346.P5941388015037974245

/-! ## A032346.P9304249840985389671

`floor(A032347(n+1)+acot(n))`
-/

namespace A032346.P9304249840985389671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032347 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A032346.P9304249840985389671

/-! ## A032346.P8356954903106559627

`A032347((n+1)%(2*n+1))`
-/

namespace A032346.P8356954903106559627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 ((n + 1) % (2 * n + 1))

end

end A032346.P8356954903106559627

/-! ## A032346.P10455767231272432848

`A032347(log2(A011782(n))+2)`
-/

namespace A032346.P10455767231272432848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + 2)).toNat

end

end A032346.P10455767231272432848

/-! ## A032346.P9870445003818278535

`A032347(and(1, A000225(n))+n)`
-/

namespace A032346.P9870445003818278535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 (Int.land 1 (A000225 n) + (n : ℤ)).toNat

end

end A032346.P9870445003818278535

/-! ## A032346.P9376267502338927796

`A032347(n+1)+A001316(n)%2`
-/

namespace A032346.P9376267502338927796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 (n + 1) + Int.tmod (A001316 n) 2

end

end A032346.P9376267502338927796

/-! ## A032346.P12013348631171034158

`A309495(∑[n+1])`
-/

namespace A032346.P12013348631171034158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032346.P12013348631171034158

/-!
# A032347: Inverse binomial transform of A032346.

The programs for A032347, there is no canonical definition to state claims against.
-/

/-! ## A032347.P14151203479830075352

`A046934(∑[n])`
-/

namespace A032347.P14151203479830075352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032347.P14151203479830075352

/-! ## A032347.P4672343306222442045

`or(char[2], A046934(A000217(n)))`
-/

namespace A032347.P4672343306222442045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A046934 (A000217 n).toNat)

end

end A032347.P4672343306222442045

/-! ## A032347.P11389363706690313476

`A000110(n)-A046936(∑[n])`
-/

namespace A032347.P11389363706690313476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A046936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032347.P11389363706690313476

/-! ## A032347.P2029652429348884817

`A259691(∑[n])-A046936(A000217(n))`
-/

namespace A032347.P2029652429348884817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f1 j) - A046936 (A000217 n).toNat

end

end A032347.P2029652429348884817

/-! ## A032347.P12363089029935169843

`A000110(n)+A000110(n)-A038561(n)`
-/

namespace A032347.P12363089029935169843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + (A000110 n - A038561 n)

end

end A032347.P12363089029935169843

/-! ## A032347.P12156289257110828564

`A046934(A000217(n))+A008683(12*n+8)`
-/

namespace A032347.P12156289257110828564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (A000217 n).toNat + A008683 (12 * n + 8)

end

end A032347.P12156289257110828564

/-! ## A032347.P1670926238296021898

`A000110(n)+A000110(n)-A046937(A000217(n))`
-/

namespace A032347.P1670926238296021898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + (A000110 n - A046937 (A000217 n).toNat)

end

end A032347.P1670926238296021898

/-! ## A032347.P2378997837562051715

`A038560(n)-A038559(n)`
-/

namespace A032347.P2378997837562051715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038560 n - A038559 n

end

end A032347.P2378997837562051715

/-! ## A032347.P17355871349342240470

`2*A000110(n)-A038561(n)`
-/

namespace A032347.P17355871349342240470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000110 n - A038561 n

end

end A032347.P17355871349342240470

/-! ## A032347.P13451168936347647183

`Δ[2*A005001(n)]-A038561(n)`
-/

namespace A032347.P13451168936347647183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038561 n

end

end A032347.P13451168936347647183

/-!
# A032348: Coefficients of Jacobi function c(3,m).

The programs for A032348, there is no canonical definition to state claims against.
-/

/-! ## A032348.P7521849257426248691

`A060628(∑[n+3]+n+3)`
-/

namespace A032348.P7521849257426248691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A032348.P7521849257426248691

/-! ## A032348.P10587268964706156459

`A185284(n)+A060628(A167614(n+2))`
-/

namespace A032348.P10587268964706156459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A060628 (A167614 (n + 2)).toNat

end

end A032348.P10587268964706156459

/-! ## A032348.P1462085868019064308

`A060628(A167614(n+2))^A178334(n)`
-/

namespace A032348.P1462085868019064308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060628 (A167614 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A032348.P1462085868019064308

/-! ## A032348.P14583552910925082073

`A156659(2*n)+A060628(A167614(n+2))`
-/

namespace A032348.P14583552910925082073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (2 * n) + A060628 (A167614 (n + 2)).toNat

end

end A032348.P14583552910925082073

/-! ## A032348.P12111062627378725180

`record[A060628(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A032348.P12111062627378725180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032348.P12111062627378725180

/-!
# A032349: Number of paths from (0,0) to (3n,0) that stay in first quadrant (but may touch horizontal axis), where each step is (2,1),(1,2) or (1,-1) and start with (2,1).

The programs for A032349, there is no canonical definition to state claims against.
-/

/-! ## A032349.P5013333264113792031

`A084078(2*n)`
-/

namespace A032349.P5013333264113792031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (2 * n)

end

end A032349.P5013333264113792031

/-! ## A032349.P7294711862866779413

`A137842(Δ[n²])`
-/

namespace A032349.P7294711862866779413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032349.P7294711862866779413

/-! ## A032349.P4314624986168917912

`A257532(∑[n]+1)`
-/

namespace A032349.P4314624986168917912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032349.P4314624986168917912

/-! ## A032349.P18159469159362918989

`record[A257532(n+1)]`
-/

namespace A032349.P18159469159362918989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032349.P18159469159362918989

/-! ## A032349.P86624868945392115

`A110682(∑[n+1]+1)`
-/

namespace A032349.P86624868945392115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032349.P86624868945392115

/-! ## A032349.P13725846681414805958

`A071949(∑[n+2]-1)`
-/

namespace A032349.P13725846681414805958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A032349.P13725846681414805958

/-! ## A032349.P15707567530931762083

`A121703(2*(n+1))/2`
-/

namespace A032349.P15707567530931762083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121703 (2 * (n + 1)) : ℚ) / 2

end

end A032349.P15707567530931762083

/-! ## A032349.P14997740999790141095

`A108424(n+1)-A027307(n)`
-/

namespace A032349.P14997740999790141095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108424 (n + 1) - A027307 n

end

end A032349.P14997740999790141095

/-! ## A032349.P8261428676455602011

`A108424(n+1)-record[A110682(n)]`
-/

namespace A032349.P8261428676455602011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108424 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032349.P8261428676455602011

/-! ## A032349.P4334163396463172487

`A027307(n+1)-A033296(n+1)`
-/

namespace A032349.P4334163396463172487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027307 (n + 1) - A033296 (n + 1)

end

end A032349.P4334163396463172487

/-!
# A032350: Palindromic nonprime numbers.

The programs for A032350, there is no canonical definition to state claims against.
-/

/-! ## A032350.P8740232066462194823

`A075801(n)+a(n-1)` with `a(0)=1`
-/

namespace A032350.P8740232066462194823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075801 n + a (n - 1)

end

end A032350.P8740232066462194823

/-! ## A032350.P4814452632262007134

`∪[A046338(n+1), A046341(n+1)]`
-/

namespace A032350.P4814452632262007134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032350.P4814452632262007134

/-! ## A032350.P2438652676658340961

`filter[A002113(n+2), A005171(#)]`
-/

namespace A032350.P2438652676658340961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A032350.P2438652676658340961

/-! ## A032350.P3581398591960854466

`∩[A002113(n+1), A018252(n+1)]`
-/

namespace A032350.P3581398591960854466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032350.P3581398591960854466

/-! ## A032350.P13654845039950096645

`record[A047813(A018252(n+1))]`
-/

namespace A032350.P13654845039950096645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P13654845039950096645

/-! ## A032350.P18081605425295282305

`record[A191558(A047813(n+1))]`
-/

namespace A032350.P18081605425295282305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A047813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P18081605425295282305

/-! ## A032350.P6463362870208075136

`record[A331472(A288469(n+1))]`
-/

namespace A032350.P6463362870208075136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A288469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P6463362870208075136

/-! ## A032350.P2029836231666695650

`record[A191558(A002113(n+2))]`
-/

namespace A032350.P2029836231666695650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P2029836231666695650

/-! ## A032350.P14920640018582680197

`record[A288469(A261914(n+2))]`
-/

namespace A032350.P14920640018582680197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A261914 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P14920640018582680197

/-! ## A032350.P4393533305572824440

`record[A288469(A002113(n+3))]`
-/

namespace A032350.P4393533305572824440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A002113 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P4393533305572824440

/-! ## A032350.P12282373115401579058

`filter[A018252(n+1), A136522(#)]`
-/

namespace A032350.P12282373115401579058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A032350.P12282373115401579058

/-! ## A032350.P6011594421499713205

`filter[A141468(n+2), A136522(#)]`
-/

namespace A032350.P6011594421499713205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A032350.P6011594421499713205

/-! ## A032350.P15315624516486403660

`record[A331472(sqrt(A062312(n+1)))]`
-/

namespace A032350.P15315624516486403660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P15315624516486403660

/-! ## A032350.P1732075664749220779

`filter[A222307(2*n+1), A136522(#)]`
-/

namespace A032350.P1732075664749220779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A032350.P1732075664749220779

/-! ## A032350.P12452332378444794803

`record[A262223(n+1-A010051(n+1))-(n+1)]`
-/

namespace A032350.P12452332378444794803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 ((n + 1 : ℤ) - A010051 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P12452332378444794803

/-! ## A032350.P9779798917748889383

`filter[A073846(2*n+1), A136522(#)]`
-/

namespace A032350.P9779798917748889383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A032350.P9779798917748889383

/-! ## A032350.P8047108308492387704

`record[A047813(comp[A047814(n)])]`
-/

namespace A032350.P8047108308492387704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032350.P8047108308492387704

/-!
# A032351: Number of permutations of length n which avoid the patterns 2143, 1324 (smooth permutations); or avoid the patterns 1342, 2431; etc.

The programs for A032351, there is no canonical definition to state claims against.
-/

/-! ## A032351.P8190494131809033437

`A065033(A165526(n)+A053617(n))`
-/

namespace A032351.P8190494131809033437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A165526 n + A053617 n).toNat

end

end A032351.P8190494131809033437

/-! ## A032351.P11992793939657776596

`A004526(A165542(n)+A165532(n))`
-/

namespace A032351.P11992793939657776596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165542 n + A165532 n).toNat

end

end A032351.P11992793939657776596

/-! ## A032351.P7816684592372877776

`A278950(∑[6*a(n-1)-7*a(n-2)])` with `a(0)=4, a(1)=2, a(2)=7`
-/

namespace A032351.P7816684592372877776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 7] fun n f1 =>
  6 * f1 (n - 1) - 7 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032351.P7816684592372877776

/-!
# A032352: Numbers k such that there is no prime between 10*k and 10*k+9.

The programs for A032352, there is no canonical definition to state claims against.
-/

/-! ## A032352.P17797835189177034502

`A078492(n)/10`
-/

namespace A032352.P17797835189177034502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078492 n : ℚ) / 10

end

end A032352.P17797835189177034502

/-! ## A032352.P3543589599597486833

`eq[0, A038800(n)]`
-/

namespace A032352.P3543589599597486833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P3543589599597486833

/-! ## A032352.P16280573517759678716

`eq[0, A179816(n)]`
-/

namespace A032352.P16280573517759678716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P16280573517759678716

/-! ## A032352.P16507791040330964418

`lt[9, A091088(n)]`
-/

namespace A032352.P16507791040330964418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032352.P16507791040330964418

/-! ## A032352.P14456793687527583351

`lt[A038800(n), acot(A181697(n+1))]`
-/

namespace A032352.P14456793687527583351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A181697 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A032352.P14456793687527583351

/-! ## A032352.P1454901531488471702

`lt[A038800(n), acot(A181715(n+1))]`
-/

namespace A032352.P1454901531488471702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A181715 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A032352.P1454901531488471702

/-! ## A032352.P14564157699390205825

`eq[1, A008458(A232128(n+1))]+1`
-/

namespace A032352.P14564157699390205825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A232128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032352.P14564157699390205825

/-! ## A032352.P7853671692294665096

`A000720(p?[A000040(n+1)-A232129(n+1)])`
-/

namespace A032352.P7853671692294665096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A232129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A032352.P7853671692294665096

/-! ## A032352.P17352378244831938612

`eq[1, A192977(A065039(n))+1]`
-/

namespace A032352.P17352378244831938612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P17352378244831938612

/-! ## A032352.P1285859396228905748

`eq[0, A105052(n)]`
-/

namespace A032352.P1285859396228905748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P1285859396228905748

/-! ## A032352.P5779336891139373893

`A059995(A078492(n))`
-/

namespace A032352.P5779336891139373893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A078492 n).toNat

end

end A032352.P5779336891139373893

/-! ## A032352.P7882951972288858250

`A008616(A076192(n+1))`
-/

namespace A032352.P7882951972288858250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A076192 (n + 1)).toNat

end

end A032352.P7882951972288858250

/-! ## A032352.P11501734667133470776

`eq[1, A048853(A017317(n))+1]`
-/

namespace A032352.P11501734667133470776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017317 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P11501734667133470776

/-! ## A032352.P13849648778428732833

`eq[1, A048853(A017341(n))+1]`
-/

namespace A032352.P13849648778428732833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017341 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P13849648778428732833

/-! ## A032352.P5958424231103915615

`eq[1, A048853(A017365(n))+1]`
-/

namespace A032352.P5958424231103915615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017365 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032352.P5958424231103915615

/-!
# A032353: Numbers k such that 7*2^k+1 is prime.

The programs for A032353, there is no canonical definition to state claims against.
-/

/-! ## A032353.P1720820461341398607

`2*A002255(n+1)`
-/

namespace A032353.P1720820461341398607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002255 (n + 1)

end

end A032353.P1720820461341398607

/-! ## A032353.P11546376387756514569

`record[2*A002255(A324347(n))]`
-/

namespace A032353.P11546376387756514569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002255 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032353.P11546376387756514569

/-! ## A032353.P3513502657310108065

`A002255(n+1)+A002255(-xor(n, -1))`
-/

namespace A032353.P3513502657310108065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002255 (n + 1) + A002255 (-Int.xor (n : ℤ) (-1)).toNat

end

end A032353.P3513502657310108065

/-! ## A032353.P9511103848784196489

`A002255(n+1)+A002255(Δ[n²]-n)`
-/

namespace A032353.P9511103848784196489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002255 (n + 1) + A002255 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A032353.P9511103848784196489

/-! ## A032353.P13583962820044878523

`A002255(n+1)+record[A002255(A324347(n))]`
-/

namespace A032353.P13583962820044878523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002255 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002255 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032353.P13583962820044878523

/-!
# A032354: j-invariants for orders of class number 1.

The programs for A032354, there is no canonical definition to state claims against.
-/

/-! ## A032354.P6173757964917519607

`A305494(floor(A133675(n+1)/2))`
-/

namespace A032354.P6173757964917519607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305494 ⌊(A133675 (n + 1) : ℚ) / 2⌋.toNat

end

end A032354.P6173757964917519607

/-! ## A032354.P5008287986555844331

`A305494(A215366(n)%A162690(n+1))`
-/

namespace A032354.P5008287986555844331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305494 (Int.tmod (A215366 n) (A162690 (n + 1))).toNat

end

end A032354.P5008287986555844331

/-!
# A032355: Number of connected transitive trivalent (or cubic) graphs with 2n nodes.

The programs for A032355, there is no canonical definition to state claims against.
-/

/-! ## A032355.P16350515755578148693

`A319368(A100038(n+1)-1)`
-/

namespace A032355.P16350515755578148693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319368 (A100038 (n + 1) - 1).toNat

end

end A032355.P16350515755578148693

/-! ## A032355.P10175844904090703449

`A319368(A100037(n+2)+1)`
-/

namespace A032355.P10175844904090703449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319368 (A100037 (n + 2) + 1).toNat

end

end A032355.P10175844904090703449

/-! ## A032355.P2405711148830096114

`A319368(A052905(2*n)+9)`
-/

namespace A032355.P2405711148830096114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319368 (A052905 (2 * n) + 9).toNat

end

end A032355.P2405711148830096114

/-! ## A032355.P17008392300201214218

`A319368(A167614(2*(n+1))+1)`
-/

namespace A032355.P17008392300201214218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319368 (A167614 (2 * (n + 1)) + 1).toNat

end

end A032355.P17008392300201214218

/-! ## A032355.P9329011417058737525

`A319368(A133263(2*n+3)+2)`
-/

namespace A032355.P9329011417058737525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319368 (A133263 (2 * n + 3) + 2).toNat

end

end A032355.P9329011417058737525

/-!
# A032356: Numbers k such that 13*2^k+1 is prime.

The programs for A032356, there is no canonical definition to state claims against.
-/

/-! ## A032356.P7257471361106532348

`2*A002257(n+1)`
-/

namespace A032356.P7257471361106532348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002257 (n + 1)

end

end A032356.P7257471361106532348

/-! ## A032356.P2483528936138904034

`record[2*A002257(A344180(n))]`
-/

namespace A032356.P2483528936138904034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002257 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032356.P2483528936138904034

/-! ## A032356.P16067404421858471928

`A002257(∑[n+1]-∑[n])+A002257(n+1)`
-/

namespace A032356.P16067404421858471928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002257 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A002257 (n + 1)

end

end A032356.P16067404421858471928

/-! ## A032356.P6545829416416443613

`A002257(n+1)+record[A002257(A344180(n))]`
-/

namespace A032356.P6545829416416443613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002257 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002257 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032356.P6545829416416443613

/-! ## A032356.P9747666173139360539

`A002257(n+1)/2^A008683(A003629(n+1))`
-/

namespace A032356.P9747666173139360539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002257 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A032356.P9747666173139360539

/-!
# A032357: Convolution of Catalan numbers and powers of -1.

The programs for A032357, the canonical program `A032357.P17874980805433282385` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032357 has offset 0).

The definition of A032357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032357.P17874980805433282385

`A000108(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032357

/-- `A000108(n)-a(n-1)` -/
def P17874980805433282385.Spec : Prop :=
  ∀ n, P17874980805433282385.a n = A032357 n

theorem P17874980805433282385.correct : P17874980805433282385.Spec := by
  intro n
  simp only [A032357]

end A032357

/-! ## A032357.P18162203313829287047

`C(2*n, n)/(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P18162203313829287047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) - a (n - 1)

end

end A032357.P18162203313829287047

namespace A032357

/-- `C(2*n, n)/(n+1)-a(n-1)` -/
def P18162203313829287047.Spec : Prop :=
  ∀ n, P18162203313829287047.a n = (A032357 n : ℚ)

end A032357

/-! ## A032357.P15510323721941653664

`abs(∑[(6/(n+1)-4)*a(n-1)])` with `a(0)=1`
-/

namespace A032357.P15510323721941653664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A032357.P15510323721941653664

namespace A032357

/-- `abs(∑[(6/(n+1)-4)*a(n-1)])` -/
def P15510323721941653664.Spec : Prop :=
  ∀ n, P15510323721941653664.a n = (A032357 n : ℚ)

end A032357

/-! ## A032357.P17595326154123738581

`abs(∑[A168491(n)])`
-/

namespace A032357.P17595326154123738581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A032357.P17595326154123738581

namespace A032357

/-- `abs(∑[A168491(n)])` -/
def P17595326154123738581.Spec : Prop :=
  ∀ n, P17595326154123738581.a n = A032357 n

end A032357

/-! ## A032357.P13190745834573115567

`abs(record[A156906(n+3)])`
-/

namespace A032357.P13190745834573115567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A032357.P13190745834573115567

namespace A032357

/-- `abs(record[A156906(n+3)])` -/
def P13190745834573115567.Spec : Prop :=
  ∀ n, P13190745834573115567.a n = A032357 n

end A032357

/-! ## A032357.P2571305786339011374

`abs(∑[A090192(Δ[n²])])`
-/

namespace A032357.P2571305786339011374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A032357.P2571305786339011374

namespace A032357

/-- `abs(∑[A090192(Δ[n²])])` -/
def P2571305786339011374.Spec : Prop :=
  ∀ n, P2571305786339011374.a n = A032357 n

end A032357

/-! ## A032357.P3025982300397028335

`abs(A156906(2*n+3))`
-/

namespace A032357.P3025982300397028335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156906 (2 * n + 3)|

end

end A032357.P3025982300397028335

namespace A032357

/-- `abs(A156906(2*n+3))` -/
def P3025982300397028335.Spec : Prop :=
  ∀ n, P3025982300397028335.a n = A032357 n

end A032357

/-! ## A032357.P10966532732577216243

`abs(∑[A105523(2*n+1)])`
-/

namespace A032357.P10966532732577216243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A032357.P10966532732577216243

namespace A032357

/-- `abs(∑[A105523(2*n+1)])` -/
def P10966532732577216243.Spec : Prop :=
  ∀ n, P10966532732577216243.a n = A032357 n

end A032357

/-! ## A032357.P784520799036970770

`abs(∑[A182492(4*n+3)])`
-/

namespace A032357.P784520799036970770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A032357.P784520799036970770

namespace A032357

/-- `abs(∑[A182492(4*n+3)])` -/
def P784520799036970770.Spec : Prop :=
  ∀ n, P784520799036970770.a n = A032357 n

end A032357

/-! ## A032357.P630442000493114124

`A120588(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P630442000493114124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 (n + 1) - a (n - 1)

end

end A032357.P630442000493114124

namespace A032357

/-- `A120588(n+1)-a(n-1)` -/
def P630442000493114124.Spec : Prop :=
  ∀ n, P630442000493114124.a n = A032357 n

end A032357

/-! ## A032357.P17730826129885285807

`A028303(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P17730826129885285807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028303 (2 * n) - a (n - 1)

end

end A032357.P17730826129885285807

namespace A032357

/-- `A028303(2*n)-a(n-1)` -/
def P17730826129885285807.Spec : Prop :=
  ∀ n, P17730826129885285807.a n = A032357 n

end A032357

/-! ## A032357.P16116803517420971197

`A028304(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P16116803517420971197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028304 (2 * n) - a (n - 1)

end

end A032357.P16116803517420971197

namespace A032357

/-- `A028304(2*n)-a(n-1)` -/
def P16116803517420971197.Spec : Prop :=
  ∀ n, P16116803517420971197.a n = A032357 n

end A032357

/-! ## A032357.P12622589777749044106

`A126120(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P12622589777749044106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126120 (2 * n) - a (n - 1)

end

end A032357.P12622589777749044106

namespace A032357

/-- `A126120(2*n)-a(n-1)` -/
def P12622589777749044106.Spec : Prop :=
  ∀ n, P12622589777749044106.a n = A032357 n

end A032357

/-! ## A032357.P10490130188263936300

`A126324(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P10490130188263936300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126324 (2 * n) - a (n - 1)

end

end A032357.P10490130188263936300

namespace A032357

/-- `A126324(2*n)-a(n-1)` -/
def P10490130188263936300.Spec : Prop :=
  ∀ n, P10490130188263936300.a n = A032357 n

end A032357

/-! ## A032357.P6759802119218018723

`A208355(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P6759802119218018723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208355 (2 * n) - a (n - 1)

end

end A032357.P6759802119218018723

namespace A032357

/-- `A208355(2*n)-a(n-1)` -/
def P6759802119218018723.Spec : Prop :=
  ∀ n, P6759802119218018723.a n = A032357 n

end A032357

/-! ## A032357.P8193318731974987276

`A246604(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A032357.P8193318731974987276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246604 n - a (n - 1) + (n : ℤ)

end

end A032357.P8193318731974987276

namespace A032357

/-- `A246604(n)-a(n-1)+n` -/
def P8193318731974987276.Spec : Prop :=
  ∀ n, P8193318731974987276.a n = A032357 n

end A032357

/-! ## A032357.P12268642886743945228

`A156906(A042963(n+2))`
-/

namespace A032357.P12268642886743945228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 (A042963 (n + 2)).toNat

end

end A032357.P12268642886743945228

namespace A032357

/-- `A156906(A042963(n+2))` -/
def P12268642886743945228.Spec : Prop :=
  ∀ n, P12268642886743945228.a n = A032357 n

end A032357

/-! ## A032357.P11475528819040099926

`∑[A168491(n)]*A033999(n)`
-/

namespace A032357.P11475528819040099926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A032357.P11475528819040099926

namespace A032357

/-- `∑[A168491(n)]*A033999(n)` -/
def P11475528819040099926.Spec : Prop :=
  ∀ n, P11475528819040099926.a n = A032357 n

end A032357

/-! ## A032357.P14304522164341928675

`gcd(∑[A168491(n)], A000038(n))`
-/

namespace A032357.P14304522164341928675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A032357.P14304522164341928675

namespace A032357

/-- `gcd(∑[A168491(n)], A000038(n))` -/
def P14304522164341928675.Spec : Prop :=
  ∀ n, (P14304522164341928675.a n : ℤ) = A032357 n

end A032357

/-! ## A032357.P15950131460811449426

`gcd(∑[A105523(2*n+1)], A105523(2*n))`
-/

namespace A032357.P15950131460811449426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A105523 (2 * n))

end

end A032357.P15950131460811449426

namespace A032357

/-- `gcd(∑[A105523(2*n+1)], A105523(2*n))` -/
def P15950131460811449426.Spec : Prop :=
  ∀ n, (P15950131460811449426.a n : ℤ) = A032357 n

end A032357

/-!
# A032358: Number of iterations of phi(n) needed to reach 2.

The programs for A032358, the canonical program `A032358.P8457793188510615298` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032358 has offset 2).

The definition of A032358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003434, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A032358.P8457793188510615298

`A003434(n+2)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A032358

/-- `A003434(n+2)-1` -/
def P8457793188510615298.Spec : Prop :=
  ∀ n, P8457793188510615298.a n = A032358 (n + 2)

theorem P8457793188510615298.correct : P8457793188510615298.Spec := by
  intro n
  simp only [A032358, Nat.add_sub_cancel]

end A032358

/-! ## A032358.P781773057253630745

`A049108(n+2)-2`
-/

namespace A032358.P781773057253630745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 2) - 2

end

end A032358.P781773057253630745

namespace A032358

/-- `A049108(n+2)-2` -/
def P781773057253630745.Spec : Prop :=
  ∀ n, P781773057253630745.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P12374316876932229732

`Δ[A060606(n)]-1`
-/

namespace A032358.P12374316876932229732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A032358.P12374316876932229732

namespace A032358

/-- `Δ[A060606(n)]-1` -/
def P12374316876932229732.Spec : Prop :=
  ∀ n, P12374316876932229732.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P7378049210078688119

`∑[A334196(n+2)]-1`
-/

namespace A032358.P7378049210078688119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A032358.P7378049210078688119

namespace A032358

/-- `∑[A334196(n+2)]-1` -/
def P7378049210078688119.Spec : Prop :=
  ∀ n, P7378049210078688119.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P5946138962495733244

`a(A000010(n+2)-2)+1` with `a(0)=0`
-/

namespace A032358.P5946138962495733244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000010 (n + 2) - 2).toNat + 1

end

end A032358.P5946138962495733244

namespace A032358

/-- `a(A000010(n+2)-2)+1` -/
def P5946138962495733244.Spec : Prop :=
  ∀ n, (P5946138962495733244.a n : ℤ) = A032358 (n + 2)

end A032358

/-! ## A032358.P13052269654038389439

`A003434(A000010(n+2))`
-/

namespace A032358.P13052269654038389439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A000010 (n + 2)).toNat

end

end A032358.P13052269654038389439

namespace A032358

/-- `A003434(A000010(n+2))` -/
def P13052269654038389439.Spec : Prop :=
  ∀ n, P13052269654038389439.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P5696889894451437951

`A003434(Δ[A002088(n+1)])`
-/

namespace A032358.P5696889894451437951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f1 (n + 1) - f1 n).toNat

end

end A032358.P5696889894451437951

namespace A032358

/-- `A003434(Δ[A002088(n+1)])` -/
def P5696889894451437951.Spec : Prop :=
  ∀ n, P5696889894451437951.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P14891034386355772438

`Δ[A060605(n+1)]-2`
-/

namespace A032358.P14891034386355772438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A032358.P14891034386355772438

namespace A032358

/-- `Δ[A060605(n+1)]-2` -/
def P14891034386355772438.Spec : Prop :=
  ∀ n, P14891034386355772438.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P16463655421489280590

`a(A109606(n+2)-1)+1` with `a(0)=0`
-/

namespace A032358.P16463655421489280590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A109606 (n + 2) - 1).toNat + 1

end

end A032358.P16463655421489280590

namespace A032358

/-- `a(A109606(n+2)-1)+1` -/
def P16463655421489280590.Spec : Prop :=
  ∀ n, (P16463655421489280590.a n : ℤ) = A032358 (n + 2)

end A032358

/-! ## A032358.P8557998433792650455

`A064415(A145051(n+1))`
-/

namespace A032358.P8557998433792650455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A145051 (n + 1)).toNat

end

end A032358.P8557998433792650455

namespace A032358

/-- `A064415(A145051(n+1))` -/
def P8557998433792650455.Spec : Prop :=
  ∀ n, P8557998433792650455.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P7574673589525051405

`A023443(A003434(n+2))`
-/

namespace A032358.P7574673589525051405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003434 (n + 2)).toNat

end

end A032358.P7574673589525051405

namespace A032358

/-- `A023443(A003434(n+2))` -/
def P7574673589525051405.Spec : Prop :=
  ∀ n, P7574673589525051405.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P12378611212320702791

`A023444(A049108(n+2))`
-/

namespace A032358.P12378611212320702791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A049108 (n + 2)).toNat

end

end A032358.P12378611212320702791

namespace A032358

/-- `A023444(A049108(n+2))` -/
def P12378611212320702791.Spec : Prop :=
  ∀ n, P12378611212320702791.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P15712808121875809469

`A064415(A015126(n+2))`
-/

namespace A032358.P15712808121875809469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A015126 (n + 2)).toNat

end

end A032358.P15712808121875809469

namespace A032358

/-- `A064415(A015126(n+2))` -/
def P15712808121875809469.Spec : Prop :=
  ∀ n, P15712808121875809469.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P8604650608084811402

`A064415(A060681(n+2))`
-/

namespace A032358.P8604650608084811402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A060681 (n + 2)).toNat

end

end A032358.P8604650608084811402

namespace A032358

/-- `A064415(A060681(n+2))` -/
def P8604650608084811402.Spec : Prop :=
  ∀ n, P8604650608084811402.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P12527505586414437499

`A064415(A195459(n+2))`
-/

namespace A032358.P12527505586414437499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A195459 (n + 2)).toNat

end

end A032358.P12527505586414437499

namespace A032358

/-- `A064415(A195459(n+2))` -/
def P12527505586414437499.Spec : Prop :=
  ∀ n, P12527505586414437499.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P10499292065922308759

`A064415(A359101(n+2))`
-/

namespace A032358.P10499292065922308759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A359101 (n + 2)).toNat

end

end A032358.P10499292065922308759

namespace A032358

/-- `A064415(A359101(n+2))` -/
def P10499292065922308759.Spec : Prop :=
  ∀ n, P10499292065922308759.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P14134169613447949580

`A064415(A359102(n+2))`
-/

namespace A032358.P14134169613447949580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A359102 (n + 2)).toNat

end

end A032358.P14134169613447949580

namespace A032358

/-- `A064415(A359102(n+2))` -/
def P14134169613447949580.Spec : Prop :=
  ∀ n, P14134169613447949580.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P5985046638112376377

`A064415(A372676(n+2))`
-/

namespace A032358.P5985046638112376377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A372676 (n + 2)).toNat

end

end A032358.P5985046638112376377

namespace A032358

/-- `A064415(A372676(n+2))` -/
def P5985046638112376377.Spec : Prop :=
  ∀ n, P5985046638112376377.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P7280456387927851817

`A064415(A372677(n+2))`
-/

namespace A032358.P7280456387927851817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A372677 (n + 2)).toNat

end

end A032358.P7280456387927851817

namespace A032358

/-- `A064415(A372677(n+2))` -/
def P7280456387927851817.Spec : Prop :=
  ∀ n, P7280456387927851817.a n = A032358 (n + 2)

end A032358

/-! ## A032358.P13108397744352314784

`A064415(A372679(n+2))`
-/

namespace A032358.P13108397744352314784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A372679 (n + 2)).toNat

end

end A032358.P13108397744352314784

namespace A032358

/-- `A064415(A372679(n+2))` -/
def P13108397744352314784.Spec : Prop :=
  ∀ n, P13108397744352314784.a n = A032358 (n + 2)

end A032358

/-!
# A032362: Numbers k such that 25*2^k+1 is prime.

The programs for A032362, there is no canonical definition to state claims against.
-/

/-! ## A032362.P9489898729273860355

`2*A002263(n+1)`
-/

namespace A032362.P9489898729273860355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002263 (n + 1)

end

end A032362.P9489898729273860355

/-! ## A032362.P2861510954482669930

`A004277(A002263(n+1))`
-/

namespace A032362.P2861510954482669930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002263 (n + 1)).toNat

end

end A032362.P2861510954482669930

/-! ## A032362.P13126800271459524702

`A004275(A002263(n+1)+1)`
-/

namespace A032362.P13126800271459524702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A002263 (n + 1) + 1).toNat

end

end A032362.P13126800271459524702

/-! ## A032362.P11335553332910299111

`A005408(A002263(n+1)-1)+1`
-/

namespace A032362.P11335553332910299111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002263 (n + 1) - 1).toNat + 1

end

end A032362.P11335553332910299111

/-! ## A032362.P10206852480321650845

`A005843(A002263(n+1)+1)-2`
-/

namespace A032362.P10206852480321650845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002263 (n + 1) + 1).toNat - 2

end

end A032362.P10206852480321650845

/-!
# A032365: Numbers k such that 31*2^k+1 is prime.

The programs for A032365, there is no canonical definition to state claims against.
-/

/-! ## A032365.P14205059723495729383

`4*A316502(A022369(n))`
-/

namespace A032365.P14205059723495729383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A316502 (A022369 n).toNat

end

end A032365.P14205059723495729383

/-!
# A032367: Numbers k such that 35*2^k+1 is prime.

The programs for A032367, there is no canonical definition to state claims against.
-/

/-! ## A032367.P9739543125510721596

`record[or(A106466(n), A181657(n))]`
-/

namespace A032367.P9739543125510721596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106466 n) (A181657 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032367.P9739543125510721596

/-! ## A032367.P6863422101157361302

`or(A000360(A006228(n)), A309406(n+1))`
-/

namespace A032367.P6863422101157361302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000360 (A006228 n).toNat) (A309406 (n + 1))

end

end A032367.P6863422101157361302

/-! ## A032367.P6190996181598300865

`eq[A124769(2*n+3), A128008(A124772(2*n))]`
-/

namespace A032367.P6190996181598300865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128008 (A124772 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032367.P6190996181598300865

/-!
# A032370: Numbers k such that 41*2^k+1 is prime.

The programs for A032370, there is no canonical definition to state claims against.
-/

/-! ## A032370.P4422404360122319907

`A335056(eq[A160595(n+1), A189668(n+1)])`
-/

namespace A032370.P4422404360122319907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032370.P4422404360122319907

/-!
# A032375: Numbers k such that 51*2^k+1 is prime.

The programs for A032375, there is no canonical definition to state claims against.
-/

/-! ## A032375.P13637124746310867586

`∑[A161831(A326749(n+2))]`
-/

namespace A032375.P13637124746310867586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161831 (A326749 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032375.P13637124746310867586

/-!
# A032378: Noncubes k that are divisible by floor(k^(1/3)).

The programs for A032378, there is no canonical definition to state claims against.
-/

/-! ## A032378.P1825119547493482167

`Δ[A066353(n)]`
-/

namespace A032378.P1825119547493482167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032378.P1825119547493482167

/-! ## A032378.P4705206814942488932

`A066353(n+1)-A066353(n)`
-/

namespace A032378.P4705206814942488932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066353 (n + 1) - A066353 n

end

end A032378.P4705206814942488932

/-! ## A032378.P12542109635262039424

`A000038(n)+Δ[A112873(A028310(n))]`
-/

namespace A032378.P12542109635262039424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A032378.P12542109635262039424

/-! ## A032378.P9923224422928718160

`Δ[A112873(A028310(n))%A010824(n)]`
-/

namespace A032378.P9923224422928718160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112873 (A028310 n).toNat) (A010824 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032378.P9923224422928718160

/-! ## A032378.P582016165609262021

`Δ[A112873(A028310(n))]+2*A000007(n)`
-/

namespace A032378.P582016165609262021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000007 n

end

end A032378.P582016165609262021

/-! ## A032378.P14858692169498977519

`A112873(n+1)+A000038(n)-A112873(A028310(n))`
-/

namespace A032378.P14858692169498977519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (n + 1) + (A000038 n - A112873 (A028310 n).toNat)

end

end A032378.P14858692169498977519

/-! ## A032378.P2729482570040609120

`A112873(n+1)-A057427(n)*A112873(A028310(n))`
-/

namespace A032378.P2729482570040609120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (n + 1) - A057427 n * A112873 (A028310 n).toNat

end

end A032378.P2729482570040609120

/-! ## A032378.P1304907915780899320

`Δ[A057427(n)*A112873(A028310(n))]`
-/

namespace A032378.P1304907915780899320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A112873 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032378.P1304907915780899320

/-! ## A032378.P5402907501819832975

`Δ[A000040(n+1)%2*A112873(A028310(n))]`
-/

namespace A032378.P5402907501819832975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A112873 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032378.P5402907501819832975

/-! ## A032378.P7615665447628041488

`∩[A007412(n+1), A079645(n+1)]`
-/

namespace A032378.P7615665447628041488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032378.P7615665447628041488

/-!
# A032379: Numbers k such that 59*2^k+1 is prime.

The programs for A032379, there is no canonical definition to state claims against.
-/

/-! ## A032379.P9142651288810425142

`A152910(A048495(n))+4`
-/

namespace A032379.P9142651288810425142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152910 (A048495 n).toNat + 4

end

end A032379.P9142651288810425142

/-!
# A032380: Numbers k such that 61*2^k + 1 is prime.

The programs for A032380, there is no canonical definition to state claims against.
-/

/-! ## A032380.P3550282757617166132

`A256940(A217918(n+1))`
-/

namespace A032380.P3550282757617166132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256940 (A217918 (n + 1)).toNat

end

end A032380.P3550282757617166132

/-!
# A032381: Numbers k such that 63*2^k+1 is prime.

The programs for A032381, there is no canonical definition to state claims against.
-/

/-! ## A032381.P6827324448718285177

`val(A196658(n+1)-1, 2)`
-/

namespace A032381.P6827324448718285177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A196658 (n + 1) - 1).toNat 2

end

end A032381.P6827324448718285177

/-! ## A032381.P17908954545120253597

`val(Δ[A196658(n+1)], 2)`
-/

namespace A032381.P17908954545120253597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A032381.P17908954545120253597

/-!
# A032387: Numbers k such that 75*2^k+1 is prime.

The programs for A032387, there is no canonical definition to state claims against.
-/

/-! ## A032387.P1644057994087736102

`eq[A225633(A029235(n)), A326453(n)]`
-/

namespace A032387.P1644057994087736102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A029235 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032387.P1644057994087736102

/-! ## A032387.P6886902018199426134

`A033075(lt[A080014(n), A035342(n+1)])`
-/

namespace A032387.P6886902018199426134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032387.P6886902018199426134

/-! ## A032387.P14556811285813018328

`A178403(lt[A001640(n+1), A062690(n)])`
-/

namespace A032387.P14556811285813018328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032387.P14556811285813018328

/-! ## A032387.P17915841695990163511

`A178403(lt[A001641(n+1), A062690(n)])`
-/

namespace A032387.P17915841695990163511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032387.P17915841695990163511

/-! ## A032387.P11922161562215161855

`A178403(lt[A062691(n+1), A062690(n)])`
-/

namespace A032387.P11922161562215161855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032387.P11922161562215161855

/-!
# A032388: Numbers k such that 77*2^k+1 is prime.

The programs for A032388, there is no canonical definition to state claims against.
-/

/-! ## A032388.P12294190094152844673

`A163530(A053505(n+3))+A079706(n+1)`
-/

namespace A032388.P12294190094152844673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (A053505 (n + 3)).toNat + A079706 (n + 1)

end

end A032388.P12294190094152844673

/-!
# A032389: Numbers k such that 79*2^k+1 is prime.

The programs for A032389, there is no canonical definition to state claims against.
-/

/-! ## A032389.P7970616719059821711

`record[lcm(2, A300272(A259844(n)))]`
-/

namespace A032389.P7970616719059821711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A300272 (A259844 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032389.P7970616719059821711

/-!
# A032391: Numbers k such that 83*2^k+1 is prime.

The programs for A032391, there is no canonical definition to state claims against.
-/

/-! ## A032391.P9999205033622486097

`A235475(3*n+4)%A255843(A051577(n))`
-/

namespace A032391.P9999205033622486097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235475 (3 * n + 4)) (A255843 (A051577 n).toNat)

end

end A032391.P9999205033622486097

/-!
# A032396: Numbers k such that 93*2^k+1 is prime.

The programs for A032396, there is no canonical definition to state claims against.
-/

/-! ## A032396.P2234426235863459814

`A130573(eq[2^val(n+1, 2), A059787(n+1)]+2)`
-/

namespace A032396.P2234426235863459814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A032396.P2234426235863459814

/-!
# A032397: Numbers k such that 95*2^k+1 is prime.

The programs for A032397, there is no canonical definition to state claims against.
-/

/-! ## A032397.P4019467636469011835

`A121047(A019997(n))`
-/

namespace A032397.P4019467636469011835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 (A019997 n).toNat

end

end A032397.P4019467636469011835

/-! ## A032397.P202041726906019206

`∑[A074848(∑[A229182(n)])]`
-/

namespace A032397.P202041726906019206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032397.P202041726906019206

/-! ## A032397.P9907223156861730998

`∑[∏{e}[A041113(A035618(n+1))+n, #+1]]`
-/

namespace A032397.P9907223156861730998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041113 (A035618 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032397.P9907223156861730998

/-!
# A032398: Numbers k such that 97*2^k+1 is prime.

The programs for A032398, there is no canonical definition to state claims against.
-/

/-! ## A032398.P17725099555775833980

`2*A087160(A152603(n+1))`
-/

namespace A032398.P17725099555775833980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087160 (A152603 (n + 1)).toNat

end

end A032398.P17725099555775833980

/-! ## A032398.P9713174250093006779

`A284644(A326359(n)+A084791(3*n+1))`
-/

namespace A032398.P9713174250093006779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284644 (A326359 n + A084791 (3 * n + 1)).toNat

end

end A032398.P9713174250093006779

/-!
# A032399: Numbers k such that 99*2^k+1 is prime.

The programs for A032399, there is no canonical definition to state claims against.
-/

/-! ## A032399.P14726546678081379623

`A005117(lt[A082200(2*n+1), A196105(3*(n+1))]+1)`
-/

namespace A032399.P14726546678081379623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082200 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196105 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A032399.P14726546678081379623

/-! ## A032399.P13821664981837263944

`eq[A029392(n+3), A029394(A029364(2*(n+1)))]`
-/

namespace A032399.P13821664981837263944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029392 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029394 (A029364 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032399.P13821664981837263944

/-! ## A032399.P17751124955199986744

`eq[A053632(2*(n+1)), A133700(A124496(n+4))]`
-/

namespace A032399.P17751124955199986744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A124496 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032399.P17751124955199986744

